import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_factory.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Types a generic title can name that are no generated model, so they get
/// no `model.class_prefix` (`BaseResponse[list[User]]`).
const _coreTypes = {
  'List', 'Map', 'Set', 'Iterable', 'DateTime', 'String', 'int', 'double', //
  'num', 'bool', 'Object', 'dynamic', 'Uri',
};

/// Names an inline schema's title must not give a class: generated code and
/// the libraries it imports (dart:core, dio, json_annotation, freezed,
/// retrofit) use them, so the class would shadow them or clash.
const _reservedTypeNames = {
  // dart:core
  'BigInt', 'Comparable', 'DateTime', 'Deprecated', 'Duration', 'Enum', //
  'Error', 'Exception', 'Expando', 'Function', 'Future', 'Invocation',
  'Iterable', 'Iterator', 'List', 'Map', 'MapEntry', 'Match', 'Never',
  'Null', 'Object', 'Pattern', 'Record', 'RegExp', 'Set', 'Sink',
  'StackTrace', 'Stream', 'String', 'StringBuffer', 'Symbol', 'Type', 'Uri',
  'ArgumentError', 'FormatException', 'RangeError', 'StateError',
  'TypeError', 'UnsupportedError',
  // dio
  'BackgroundTransformer', 'BaseOptions', 'CancelToken', 'Dio', 'DioError',
  'DioException', 'DioExceptionType', 'DioMediaType', 'FormData', 'Headers',
  'HttpClientAdapter', 'Interceptor', 'Interceptors', 'InterceptorsWrapper',
  'ListFormat', 'ListParam', 'LogInterceptor', 'MultipartFile', 'Options',
  'ProgressCallback', 'QueuedInterceptor', 'RedirectRecord',
  'RequestOptions', 'Response', 'ResponseBody', 'ResponseType',
  'Transformer',
  // json_annotation, freezed_annotation, collection
  'Default', 'DeepCollectionEquality', 'Freezed', 'JsonConverter',
  'JsonEnum', 'JsonKey', 'JsonLiteral', 'JsonSerializable', 'JsonValue',
  // retrofit
  'Body', 'CancelRequest', 'Extra', 'Extras', 'Field', 'FormUrlEncoded',
  'Header', 'HttpResponse', 'Method', 'MultiPart', 'ParseErrorLogger', 'Part',
  'Path', 'Queries', 'Query', 'ReceiveProgress', 'RestApi', 'SendProgress',
};

class OpenApiSchemaDartTypeConverter extends GeneratorStrategy {
  const OpenApiSchemaDartTypeConverter(
    super.context, {
    this.inlineModels = true,
  });

  /// Whether inline objects become models. Not for operation parameters:
  /// retrofit's encoding of a model in `@Query`/`@Header` is undefined, so
  /// they stay `Map<String, dynamic>`.
  final bool inlineModels;

  /// Whether a title must not name the class [className]: generated code
  /// or a library it imports uses that name.
  static bool isReservedTypeName(String className) =>
      _reservedTypeNames.contains(className);

  /// Dart type for [schema]. [contextName] (e.g. `Pet_status`,
  /// `listPets_sort`) names inline enums that have no title.
  String get(
    OpenApiSchema? schema, {
    required String className,
    OpenApiSchema? parent,
    String? contextName,
    Map<String, String> overrideTypes = const {},
  }) {
    if (schema == null) {
      return 'dynamic';
    }

    final dartType = switch (schema) {
      OpenApiSchemaType schema => getType(
        schema,
        parent: parent,
        className: className,
        contextName: contextName,
        overrideTypes: overrideTypes,
      ),
      OpenApiSchemaRef schema => getRef(schema),
      OpenApiSchemaAnyOf schema => getAnyOf(
        schema,
        className: className,
        contextName: contextName,
      ),
      OpenApiSchemaOneOf schema => getOneOf(
        schema,
        className: className,
        contextName: contextName,
      ),
    };

    // Generic models map a concrete type to its type parameter (Item -> T).
    final finalType = overrideTypes[dartType] ?? dartType;

    if (_isNullable(schema)) {
      return nullable(finalType);
    }

    return finalType;
  }

  /// Whether JSON null is a value of [schema]: it is `nullable`, or one of
  /// its `oneOf`/`anyOf` variants is null or nullable.
  bool _isNullable(OpenApiSchema schema) => switch (schema) {
    OpenApiSchemaType(:final nullable) ||
    OpenApiSchemaRef(:final nullable) => nullable == true,
    OpenApiSchemaAnyOf(:final nullable, anyOf: final variants) ||
    OpenApiSchemaOneOf(:final nullable, oneOf: final variants) =>
      nullable == true ||
          variants.any((e) => UnionModelStrategy.isNull(e) || _isNullable(e)),
  };

  /// [dartType] made nullable; `dynamic` and nullable types stay as they are.
  String nullable(String dartType) =>
      dartType == 'dynamic' || dartType.endsWith('?') ? dartType : '$dartType?';

  String getRef(OpenApiSchemaRef schema) {
    if (context.componentClassNames[schema.name] case final name?) return name;

    final schemas = context.openApi.getOpenApiSchemasByRef(schema.ref!);
    final title = schemas?.title ?? schema.name;

    return _processGenericTitle(title);
  }

  /// Dart type for a schema title such as `Page[Item]`, `list[str]`,
  /// `Result<User>` or `int`.
  String dartTypeForTitle(String title) => _processGenericTitle(title);

  String _processGenericTitle(String title) {
    // Convert ABP, FastAPI, or .NET format to standard format if needed
    final parser = GenericParserFactory.instance.detectParser(title);
    final processedTitle = parser?.toStandardFormat(title) ?? title;

    final genericStart = processedTitle.indexOf('<');
    final genericEnd = processedTitle.lastIndexOf('>');

    if (genericStart == -1 || genericEnd == -1 || genericEnd <= genericStart) {
      return _convertPrimitiveType(processedTitle);
    }

    final base = processedTitle.substring(0, genericStart);
    final genericsContent = processedTitle.substring(
      genericStart + 1,
      genericEnd,
    );
    final genericTypes = _splitGenerics(genericsContent);

    final processedGenerics = genericTypes
        .map((type) => _processGenericTitle(type.trim()))
        .join(', ');

    return '${_modelType(base)}<$processedGenerics>';
  }

  /// A title's class (`list` → List, `User` → PostmanUser): core types keep
  /// their name, models get `model.class_prefix`.
  String _modelType(String title) {
    final prefixes = context.config.model.removeModelPrefixes;
    final name = Renaming.instance.renameClass(
      title,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    return _coreTypes.contains(name) ? name : context.withClassPrefix(name);
  }

  String _convertPrimitiveType(String type) {
    switch (type.toLowerCase()) {
      case 'bool':
      case 'boolean':
        return 'bool';
      case 'int':
      case 'integer':
        return 'int';
      case 'double':
      case 'number':
        return 'double';
      case 'string':
      case 'str':
        return 'String';
      case 'float':
        return 'double';
      case 'any':
        return 'dynamic';
      case 'dict':
        return 'Map';
      default:
        return _modelType(type);
    }
  }

  List<String> _splitGenerics(String input) {
    final parts = <String>[];
    final buffer = StringBuffer();
    int depth = 0;

    for (var char in input.split('')) {
      if (char == ',' && depth == 0) {
        parts.add(buffer.toString());
        buffer.clear();
      } else {
        if (char == '[' || char == '<') depth++;
        if (char == ']' || char == '>') depth--;
        buffer.write(char);
      }
    }

    if (buffer.isNotEmpty) {
      parts.add(buffer.toString());
    }

    return parts;
  }

  String getAnyOf(
    OpenApiSchemaAnyOf schema, {
    required String className,
    String? contextName,
  }) => _union(
    schema,
    schema.anyOf,
    schema.discriminator,
    className: className,
    contextName: contextName,
    registerReferences: () => UnionModelStrategy(context).registerAnyOf(schema),
  );

  String getOneOf(
    OpenApiSchemaOneOf schema, {
    required String className,
    String? contextName,
  }) => _union(
    schema,
    schema.oneOf,
    schema.discriminator,
    className: className,
    contextName: contextName,
    registerReferences: () => UnionModelStrategy(context).registerOneOf(schema),
  );

  /// The single non-null variant's type, the one primitive type of all
  /// variants (`anyOf: [enum, string]` is a `String`), a union (G2), or
  /// `dynamic`.
  String _union(
    OpenApiSchema schema,
    List<OpenApiSchema> variants,
    OpenApiSchemaOneOfDiscriminator? discriminator, {
    required String className,
    required String? contextName,
    required String Function() registerReferences,
  }) {
    final schemas = variants.whereNot(UnionModelStrategy.isNull).toList();
    if (schemas.length == 1) {
      return get(
        schemas.first,
        parent: schema,
        className: className,
        contextName: contextName,
      );
    }

    final union = UnionModelStrategy(context);
    if (union.primitiveType(schemas) case final type?) return type;
    if (union.unionVariants(schemas) == null) return 'dynamic';
    if (schemas.every((e) => e is OpenApiSchemaRef)) {
      return registerReferences();
    }
    if (!inlineModels) return 'dynamic';
    final (:name, :orElse) = inlineModelNames(
      schema.title,
      contextName: contextName,
      className: className,
    );
    return union.registerInline(
      schemas,
      discriminator,
      name: name,
      orElse: orElse,
      json: const OpenApiSchemaJsonConverter().toJson(schema),
    );
  }

  String getType(
    OpenApiSchemaType schema, {
    required String className,
    OpenApiSchema? parent,
    String? contextName,
    Map<String, String> overrideTypes = const {},
  }) {
    if (schema.enum_ case final values?) {
      return context.registerInlineModel(
        inlineEnumClassName(schema, parent: parent, contextName: contextName),
        (name) => EnumModelGeneratorStrategy(context).build(
          MapEntry(
            name,
            OpenApiSchemas(
              type: schema.type == OpenApiSchemaVarType.integer
                  ? 'integer'
                  : 'string',
              properties: {},
              enum_: values,
            ),
          ),
          name: name,
        ),
      );
    }

    if (schema.properties case final properties?
        when inlineModels &&
            properties.isNotEmpty &&
            (schema.type == null ||
                schema.type == OpenApiSchemaVarType.object)) {
      return _inlineObject(
        schema,
        className: className,
        contextName: contextName,
      );
    }

    switch (schema.type) {
      case OpenApiSchemaVarType.string:
        switch (schema.format) {
          case 'date-time':
            return 'DateTime';
          case 'date':
            return 'DateTime';
          case 'color-hex' || 'color':
            // The Color converter is only generated for FastAPI Flutter apps.
            if (context.isFlutterProject &&
                context.config.generationSource == GenerationSource.fastAPI) {
              return 'Color';
            }

            return 'String';
          case 'binary':
            // A file part of a multipart body (dio's MultipartFile).
            return 'MultipartFile';
          case 'uuid':
            return 'String';
          case 'time' || 'duration':
            if (context.isFlutterProject &&
                context.config.generationSource == GenerationSource.fastAPI) {
              return 'TimeOfDay';
            }

            return 'String';
          case 'uri':
            return 'Uri';
          default:
            return 'String';
        }
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        final items = schema.items;
        final dartType = items == null
            ? 'dynamic'
            : get(
                items,
                className: className,
                contextName: _nestedContext(contextName, items, 'item'),
                overrideTypes: overrideTypes,
              );

        return 'List<$dartType>';
      case OpenApiSchemaVarType.object:
        // Map values: `additionalProperties` (OpenAPI), `items` (legacy).
        final items = switch (schema.additionalProperties) {
          final Map<String, dynamic> values =>
            const OpenApiSchemaJsonConverter().fromJson(values),
          _ => schema.items,
        };
        final dartType = items == null
            ? 'dynamic'
            : get(
                items,
                className: className,
                contextName: _nestedContext(contextName, items, 'value'),
                overrideTypes: overrideTypes,
              );

        return 'Map<String, $dartType>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }

  /// Context of an array item or map value: `Pet_roles` → `Pet_roles_item`.
  /// Inline enums keep the 5.x name, their parent's context (`PetTags`).
  String? _nestedContext(
    String? contextName,
    OpenApiSchema schema,
    String suffix,
  ) =>
      contextName == null ||
          (schema is OpenApiSchemaType && schema.enum_ != null)
      ? contextName
      : '${contextName}_$suffix';

  /// Class names of an inline model (object or union): its [title], unless a
  /// component or a type generated code uses has that name, else the place it
  /// is used ([contextName], `getUser_response` → GetUserResponse). [orElse]
  /// (the context) takes over when another inline model has the title.
  ({String name, String? orElse}) inlineModelNames(
    String? title, {
    required String? contextName,
    required String className,
  }) {
    final byContext = contextName == null
        ? null
        : context.withClassPrefix(Renaming.instance.renameClass(contextName));
    final byTitle = title == null
        ? null
        : context.withClassPrefix(Renaming.instance.renameClass(title));
    if (byTitle != null &&
        !context.componentClassNames.containsValue(byTitle) &&
        !_reservedTypeNames.contains(byTitle)) {
      return (name: byTitle, orElse: byContext);
    }
    if (byContext == null) {
      throw ArgumentError(
        'swagger_to_dart: cannot name an inline schema in $className; give '
        'it a title.',
      );
    }
    return (name: byContext, orElse: null);
  }

  /// Registers the model of an inline object schema and returns its class
  /// name.
  String _inlineObject(
    OpenApiSchemaType schema, {
    required String className,
    required String? contextName,
  }) {
    final (:name, :orElse) = inlineModelNames(
      schema.title,
      contextName: contextName,
      className: className,
    );
    return context.registerInlineModel(
      name,
      (name) => RegularModelGeneratorStrategy(context).build(
        MapEntry(
          name,
          OpenApiSchemas.fromJson(
            const OpenApiSchemaJsonConverter().toJson(schema),
          ),
        ),
        name: name,
      ),
      orElse: orElse,
    );
  }

  /// Dart source for the schema's `default`, or null. Inside an annotation
  /// ([inConstContext]) collection literals need no `const`.
  String? getDefaultValue(
    OpenApiSchema? schema, {
    OpenApiSchema? parent,
    String? contextName,
    bool inConstContext = false,
  }) {
    final default_ = schema?.default_;
    if (schema == null || default_ == null) return null;

    switch (schema) {
      case OpenApiSchemaType schema:
        if (schema.enum_ case final values?) {
          // The registered name (maybe suffixed), same as the field's type.
          final className = getType(
            schema,
            className: '',
            parent: parent,
            contextName: contextName,
          );
          return _enumDefault(className, className, values, default_);
        }
        if (!_literalFits(schema)) return null;
      case OpenApiSchemaRef schema:
        return _refDefault(schema, default_);
      case OpenApiSchemaAnyOf(anyOf: final variants) ||
          OpenApiSchemaOneOf(oneOf: final variants):
        // `Optional[X] = ...`: the one non-null variant decides.
        final nonNull = variants.where(
          (e) =>
              !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_),
        );
        switch (nonNull.singleOrNull) {
          case final OpenApiSchemaRef ref:
            return _refDefault(ref, default_);
          case final OpenApiSchemaType type when _literalFits(type):
            break;
          default:
            return null;
        }
    }

    return _dartLiteral(default_, constPrefix: !inConstContext);
  }

  /// A default for a reference: `Enum.member` for enums; models cannot be
  /// written as literals, so none.
  String? _refDefault(OpenApiSchemaRef schema, Object default_) {
    final values = context.openApi.getOpenApiSchemasByRef(schema.ref!)?.enum_;
    return values == null
        ? null
        : _enumDefault(schema.name, getRef(schema), values, default_);
  }

  /// Whether a JSON default can be written as a literal of the schema's Dart
  /// type (not for DateTime, Uri, enums in lists, typed maps...).
  bool _literalFits(OpenApiSchemaType schema) {
    // Enums and inline object models are no literals.
    if (schema.enum_ != null || (schema.properties?.isNotEmpty ?? false)) {
      return false;
    }
    return switch (schema.type) {
      OpenApiSchemaVarType.string => getType(schema, className: '') == 'String',
      OpenApiSchemaVarType.array => switch (schema.items) {
        null => true,
        final OpenApiSchemaType items => _literalFits(items),
        _ => false,
      },
      OpenApiSchemaVarType.object => schema.additionalProperties is! Map,
      _ => true,
    };
  }

  /// Class name of an inline enum: its title, its parent's title, or the
  /// place it is used ([contextName], e.g. `Pet_status` -> `PetStatus`). A
  /// title naming a type generated code uses gives way to the context.
  String inlineEnumClassName(
    OpenApiSchemaType schema, {
    OpenApiSchema? parent,
    String? contextName,
  }) {
    String? named(String? name) => name == null
        ? null
        : context.withClassPrefix(Renaming.instance.renameEnum(name));
    final byTitle = named(schema.title ?? parent?.title);
    final name = byTitle != null && !_reservedTypeNames.contains(byTitle)
        ? byTitle
        : named(contextName) ?? byTitle;
    if (name == null) {
      throw ArgumentError(
        'swagger_to_dart: cannot name the inline enum ${schema.enum_}; '
        'give its schema a title.',
      );
    }
    return name;
  }

  /// `Enum.member` for [value], honouring `model.enums` renames; null when the
  /// default is not one of the enum's values.
  String? _enumDefault(
    String enumKey,
    String className,
    List<Object?> values,
    Object value,
  ) {
    final member = EnumModelGeneratorStrategy.memberNames(
      enumKey: enumKey,
      className: className,
      values: [...values.whereType<Object>()],
      overrides: context.config.model.enums,
    )['$value'];
    return member == null ? null : '$className.$member';
  }

  String? _dartLiteral(Object? value, {required bool constPrefix}) {
    final prefix = constPrefix ? 'const ' : '';
    return switch (value) {
      null => null,
      String() => dartString(value),
      num() || bool() => '$value',
      List() =>
        '$prefix[${value.map((e) => _dartLiteral(e, constPrefix: false)).join(', ')}]',
      Map() =>
        '$prefix{${value.entries.map((e) => '${_dartLiteral(e.key, constPrefix: false)}: ${_dartLiteral(e.value, constPrefix: false)}').join(', ')}}',
      _ => '$value',
    };
  }
}
