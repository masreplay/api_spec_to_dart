import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_factory.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiSchemaDartTypeConverter extends GeneratorStrategy {
  const OpenApiSchemaDartTypeConverter(
    super.context, {
    this.inlineModels = true,
  });

  /// Whether inline objects become models. Not for operation parameters:
  /// retrofit's encoding of a model in `@Query`/`@Header` is undefined, so
  /// they stay `Map<String, dynamic>`.
  final bool inlineModels;

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

  bool _isNullable(OpenApiSchema schema) {
    return switch (schema) {
      OpenApiSchemaType schema => schema.nullable == true,
      OpenApiSchemaRef schema => schema.nullable == true,
      OpenApiSchemaAnyOf schema =>
        schema.nullable == true || _hasNullInAnyOf(schema.anyOf),
      OpenApiSchemaOneOf schema =>
        schema.nullable == true || _hasNullInOneOf(schema.oneOf),
    };
  }

  bool _hasNullInAnyOf(List<OpenApiSchema> schemas) {
    return schemas.any(
      (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
    );
  }

  bool _hasNullInOneOf(List<OpenApiSchema> schemas) {
    return schemas.any(
      (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
    );
  }

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

    final prefixes = context.config.model.removeModelPrefixes;
    final processedGenerics = genericTypes
        .map((type) => _processGenericTitle(type.trim()))
        .join(', ');

    return '${Renaming.instance.renameClass(base, removePrefixes: prefixes.isNotEmpty ? prefixes : null)}<$processedGenerics>';
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
        final prefixes = context.config.model.removeModelPrefixes;
        return Renaming.instance.renameClass(
          type,
          removePrefixes: prefixes.isNotEmpty ? prefixes : null,
        );
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
  }) {
    final anyOf = schema.anyOf;
    final schemas = anyOf.where((e) {
      return !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_);
    }).toList();

    if (schemas.length == 1) {
      return get(
        schemas.first,
        parent: schema,
        className: className,
        contextName: contextName,
      );
    }

    if (schemas.every((e) => e is OpenApiSchemaRef)) {
      return UnionModelStrategy(context).registerAnyOf(schema);
    }

    return 'dynamic';
  }

  String getOneOf(
    OpenApiSchemaOneOf schema, {
    required String className,
    String? contextName,
  }) {
    final oneOf = schema.oneOf;
    final schemas = oneOf.where((e) {
      return !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_);
    }).toList();

    if (schemas.length == 1) {
      return get(
        schemas.first,
        parent: schema,
        className: className,
        contextName: contextName,
      );
    }

    if (schemas.every((e) => e is OpenApiSchemaRef)) {
      return UnionModelStrategy(context).registerOneOf(schema);
    }

    return 'dynamic';
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

  /// Registers the model of an inline object schema and returns its class
  /// name: the schema's title, unless a component has that class name, else
  /// the place it is used ([contextName], `getUser_response` →
  /// GetUserResponse).
  String _inlineObject(
    OpenApiSchemaType schema, {
    required String className,
    required String? contextName,
  }) {
    final title = switch (schema.title) {
      final title? => Renaming.instance.renameClass(title),
      null => null,
    };
    final name =
        title != null && !context.componentClassNames.containsValue(title)
        ? title
        : Renaming.instance.renameClass(
            contextName ??
                (throw ArgumentError(
                  'swagger_to_dart: cannot name the inline object with '
                  'properties ${schema.properties!.keys} in $className; '
                  'give its schema a title.',
                )),
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
  /// place it is used ([contextName], e.g. `Pet_status` -> `PetStatus`).
  String inlineEnumClassName(
    OpenApiSchemaType schema, {
    OpenApiSchema? parent,
    String? contextName,
  }) {
    final name = schema.title ?? parent?.title ?? contextName;
    if (name == null) {
      throw ArgumentError(
        'swagger_to_dart: cannot name the inline enum ${schema.enum_}; '
        'give its schema a title.',
      );
    }
    return Renaming.instance.renameEnum(name);
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
