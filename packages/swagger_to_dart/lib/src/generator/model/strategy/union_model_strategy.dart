import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// The JSON kinds a union tells apart, in the order `fromJson` tests them.
enum UnionKind { string, integer, number, boolean, list, object }

/// One case of a union: its factory constructor name, the discriminator value
/// selecting it (null without a discriminator) and its schema.
typedef UnionVariant = ({String caseName, String? tag, OpenApiSchema schema});

/// What a schema's values are to a union: the JSON kinds they take, and
/// what their Dart type is: a [_Of.model] (a class with
/// `fromJson(Map<String, dynamic>)` and a map `toJson()`, object-only unions
/// too), a mixed [_Of.union] (`fromJson(Object?)`, `Object? toJson()`) or a
/// [_Of.value] (a primitive, list, map, enum or typedef).
typedef _Shape = ({Set<UnionKind> kinds, _Of of});

enum _Of { model, union, value }

/// How a variant's JSON becomes its value: its type's `fromJson` (models,
/// unions), the JSON itself (`String`, `Map<String, dynamic>`, ...) or a
/// json_serializable wrapper (`List<Pet>`, `DateTime`, enums, typedefs).
enum _Decode { fromJson, direct, serialized }

const _jsonTypes = {
  UnionKind.string: 'String',
  UnionKind.integer: 'int',
  UnionKind.number: 'double',
  UnionKind.boolean: 'bool',
  UnionKind.list: 'List<dynamic>',
  UnionKind.object: 'Map<String, dynamic>',
};

const _patterns = {
  UnionKind.string: 'String()',
  UnionKind.integer: 'int()',
  UnionKind.number: 'num()',
  UnionKind.boolean: 'bool()',
  UnionKind.list: 'List()',
  UnionKind.object: 'Map<String, dynamic>()',
};

/// A `oneOf`/`anyOf` as a plain sealed class whose JSON is the variant's own
/// JSON (#49):
///
/// ```dart
/// sealed class Animal {
///   const factory Animal.dog(Dog value) = AnimalDog;
///   factory Animal.fromJson(Map<String, dynamic> json) =>
///       switch (json['pet_type']) {
///         'dog' => AnimalDog(Dog.fromJson(json)),
///         _ => throw ArgumentError.value(...),
///       };
///   Map<String, dynamic> toJson();
/// }
/// ```
///
/// No `value` envelope, so it decodes as a field, a list item, a request
/// body and a response alike. A union mixing JSON kinds (G2) switches on the
/// kind first, so its `fromJson` takes and its `toJson` returns `Object?`:
///
/// ```dart
/// factory Url.fromJson(Object? json) => switch (json) {
///   String() => UrlString(json),
///   Map<String, dynamic>() => UrlObject(UrlObjectValue.fromJson(json)),
///   _ => throw ArgumentError.value(...),
/// };
/// ```
class UnionModelStrategy {
  const UnionModelStrategy(this.context);

  final GenerationContext context;

  static bool isNull(OpenApiSchema schema) =>
      schema is OpenApiSchemaType && schema.type == OpenApiSchemaVarType.null_;

  /// The shape of [schema], or null when its kind is unknown (`{}`, a bare
  /// `required` list, `dynamic`). A reference has its target's shape: an
  /// enum's values, a typedef's type, a union's variants. [seen] holds the
  /// components being resolved (reference cycles).
  _Shape? _shape(OpenApiSchema schema, [Set<String> seen = const {}]) {
    switch (schema) {
      case OpenApiSchemaRef(:final ref?):
        final component = context.openApi.getOpenApiSchemasByRef(ref);
        if (component == null || seen.contains(ref)) {
          return (kinds: {UnionKind.object}, of: _Of.model);
        }
        return _componentShape(component, {...seen, ref});
      case OpenApiSchemaType(:final type, :final properties, :final enum_):
        final kind = switch (type) {
          OpenApiSchemaVarType.string => UnionKind.string,
          OpenApiSchemaVarType.integer => UnionKind.integer,
          OpenApiSchemaVarType.number => UnionKind.number,
          OpenApiSchemaVarType.boolean => UnionKind.boolean,
          OpenApiSchemaVarType.array => UnionKind.list,
          OpenApiSchemaVarType.object => UnionKind.object,
          null when properties?.isNotEmpty ?? false => UnionKind.object,
          // An enum without a type is a string enum.
          null when enum_ != null => UnionKind.string,
          _ => null,
        };
        if (kind == null) return null;
        final model =
            kind == UnionKind.object && (properties?.isNotEmpty ?? false);
        return (kinds: {kind}, of: model ? _Of.model : _Of.value);
      case OpenApiSchemaOneOf(oneOf: final members) ||
          OpenApiSchemaAnyOf(anyOf: final members):
        final nonNull = members.whereNot(isNull).toList();
        if (nonNull.length == 1) return _shape(nonNull.single, seen);
        if (unionVariants(nonNull, seen) case final kept?) {
          return _unionShape(kept, seen);
        }
        return switch (_primitiveKind(nonNull, seen)) {
          final kind? => (kinds: {kind}, of: _Of.value),
          null => null,
        };
      default:
        return null;
    }
  }

  /// The shape of what a component generates (as [ModelGenerator] routes
  /// it).
  _Shape? _componentShape(OpenApiSchemas component, Set<String> seen) {
    final members = [
      ...?component.oneOf,
      ...?component.anyOf,
    ].whereNot(isNull).toList();
    if (isUnionComponent(component, seen)) {
      return _unionShape(unionVariants(members, seen) ?? members, seen);
    }
    if (component.enum_ != null) {
      return (
        kinds: {
          switch (component.type) {
            'integer' => UnionKind.integer,
            'number' => UnionKind.number,
            'boolean' => UnionKind.boolean,
            _ => UnionKind.string,
          },
        },
        of: _Of.value,
      );
    }
    if (TypedefModelStrategy.accepts(component)) {
      if (component.ref case final alias?) {
        return _shape(OpenApiSchemaRef(ref: alias), seen);
      }
      final kind = members.isNotEmpty
          ? _primitiveKind(members, seen)
          : switch (component.type) {
              'string' => UnionKind.string,
              'integer' => UnionKind.integer,
              'number' => UnionKind.number,
              'boolean' => UnionKind.boolean,
              'array' => UnionKind.list,
              'object' => UnionKind.object,
              _ => null,
            };
      return kind == null ? null : (kinds: {kind}, of: _Of.value);
    }
    return (kinds: {UnionKind.object}, of: _Of.model);
  }

  /// A union of [variants]: a model when every variant is an object.
  _Shape _unionShape(List<OpenApiSchema> variants, Set<String> seen) {
    final kinds = {
      for (final variant in variants)
        ...(_shape(variant, seen)?.kinds ?? {UnionKind.object}),
    };
    final objects = kinds.length == 1 && kinds.single == UnionKind.object;
    return (kinds: kinds, of: objects ? _Of.model : _Of.union);
  }

  /// The one primitive kind every one of [members] has (`string` and a
  /// `string` enum; `integer` and `number` are a number), or null.
  UnionKind? _primitiveKind(List<OpenApiSchema> members, Set<String> seen) {
    final kinds = <UnionKind>{};
    for (final member in members) {
      final shape = _shape(member, seen);
      if (shape == null || shape.of != _Of.value) return null;
      kinds.addAll(shape.kinds);
    }
    if (kinds.contains(UnionKind.number)) kinds.remove(UnionKind.integer);
    return kinds.length == 1 &&
            kinds.single != UnionKind.list &&
            kinds.single != UnionKind.object
        ? kinds.single
        : null;
  }

  /// The Dart type of a `oneOf`/`anyOf` whose variants ([schemas]) all have
  /// one primitive kind (`anyOf: [enum, string]` is a `String`), or null.
  String? primitiveType(List<OpenApiSchema> schemas) =>
      _jsonTypes[_primitiveKind(schemas.whereNot(isNull).toList(), const {})];

  /// The variants that make [schemas] (a `oneOf`/`anyOf`) a union, or null
  /// when it is none (`dynamic`): every variant needs a JSON kind, one can be
  /// a list or an object, and there are two kinds or two objects. Objects are
  /// told apart by discriminator or keys; any other kind goes to the first
  /// variant that has it, and `number` also decodes integers.
  List<OpenApiSchema>? unionVariants(
    List<OpenApiSchema> schemas, [
    Set<String> seen = const {},
  ]) {
    final members = schemas.whereNot(isNull).toList();
    final shapes = [for (final member in members) _shape(member, seen)];
    if (shapes.contains(null)) return null;

    final number = shapes.any((s) => s!.kinds.contains(UnionKind.number));
    final taken = <UnionKind>{};
    final variants = <OpenApiSchema>[];
    for (final (i, member) in members.indexed) {
      final kinds = shapes[i]!.kinds;
      // ponytail: JSON cannot tell two lists (or two strings) apart, so the
      // first variant of a kind takes it; dispatch on item kinds if needed.
      final takes = [
        for (final kind in kinds)
          if (kind != UnionKind.object &&
              !(kind == UnionKind.integer && number) &&
              taken.add(kind))
            kind,
      ];
      if (takes.isNotEmpty || kinds.contains(UnionKind.object)) {
        variants.add(member);
      }
    }

    final kinds = [for (final v in variants) ..._shape(v, seen)!.kinds];
    final objects = kinds.where((k) => k == UnionKind.object).length;
    final structured = objects > 0 || kinds.contains(UnionKind.list);
    return structured && (kinds.toSet().length > 1 || objects > 1)
        ? variants
        : null;
  }

  /// Whether the component [schema] is a union: a `oneOf`/`anyOf` that is
  /// one (#58, G2), or of a single reference.
  bool isUnionComponent(OpenApiSchemas schema, [Set<String> seen = const {}]) {
    final members = [
      ...?schema.oneOf,
      ...?schema.anyOf,
    ].whereNot(isNull).toList();
    return unionVariants(members, seen) != null ||
        (members.length == 1 &&
            members.single is OpenApiSchemaRef &&
            _shape(members.single, seen) != null);
  }

  /// Whether [schema] is (or references) a union with a variant that is no
  /// object, so its `toJson()` returns `Object?` rather than a map.
  bool isMixed(OpenApiSchema? schema) =>
      schema != null && _shape(schema)?.of == _Of.union;

  /// `List<Object?>` or `Map<String, Object?>` for a list or map of mixed
  /// unions (directly or through a typedef), else null: retrofit casts the
  /// elements of a response to `Map<String, dynamic>` before `fromJson`
  /// (and cannot build `List<dynamic>`); `Object?` elements are cast as is.
  String? untypedCollection(
    OpenApiSchema? schema, [
    Set<String> seen = const {},
  ]) => switch (schema) {
    OpenApiSchemaType(type: OpenApiSchemaVarType.array, :final items?)
        when isMixed(items) =>
      'List<Object?>',
    OpenApiSchemaType(
      type: OpenApiSchemaVarType.object,
      additionalProperties: final Map<String, dynamic> values,
    )
        when isMixed(const OpenApiSchemaJsonConverter().fromJson(values)) =>
      'Map<String, Object?>',
    OpenApiSchemaOneOf(oneOf: final members) ||
    OpenApiSchemaAnyOf(anyOf: final members)
        when members.whereNot(isNull).length == 1 =>
      untypedCollection(members.whereNot(isNull).single, seen),
    OpenApiSchemaRef(:final ref?) when !seen.contains(ref) => switch (context
        .openApi
        .getOpenApiSchemasByRef(ref)) {
      final component?
          when !isUnionComponent(component) &&
              TypedefModelStrategy.accepts(component) =>
        untypedCollection(
          const OpenApiSchemaJsonConverter().fromJson(component.toJson()),
          {...seen, ref},
        ),
      _ => null,
    },
    _ => null,
  };

  /// The union for a component schema with `oneOf`/`anyOf` (#58).
  Library buildComponent(MapEntry<String, OpenApiSchemas> component) {
    final schema = component.value;
    final prefixes = context.config.model.removeModelPrefixes;
    final className =
        context.componentClassNames[component.key] ??
        context.withClassPrefix(
          Renaming.instance.renameClass(
            schema.title ?? component.key,
            removePrefixes: prefixes.isNotEmpty ? prefixes : null,
          ),
        );
    final union = _variants(
      schema.oneOf ?? schema.anyOf ?? [],
      schema.discriminator,
    );

    return build(
      className: className,
      variants: union.variants,
      discriminator: union.discriminator,
      implied: union.implied,
      docs: JsonFactory.instance.docs(component.key, schema.toJson()),
    );
  }

  /// Registers the union for an inline all-reference `oneOf` and returns its
  /// class name.
  String registerOneOf(OpenApiSchemaOneOf schema) {
    final refs = schema.oneOf.whereType<OpenApiSchemaRef>();
    final discriminator = schema.discriminator;
    return _registerTitled(
      schema.title,
      '${(discriminator?.mapping?.keys ?? refs.map((e) => e.name)).join('Or')}_Union',
      _variants(schema.oneOf, discriminator),
      json: schema.toJson(),
    );
  }

  /// Registers the union for an inline all-reference `anyOf` and returns its
  /// class name.
  String registerAnyOf(OpenApiSchemaAnyOf schema) => _registerTitled(
    schema.title,
    schema.anyOf
        .whereType<OpenApiSchemaRef>()
        .map(context.extension.typeConverter.getRef)
        .map(context.unprefixed)
        .map(_className)
        .sorted((a, b) => a.compareTo(b))
        .join(),
    _variants(schema.anyOf, schema.discriminator),
    json: schema.toJson(),
  );

  /// Registers an all-reference union by its [title] (as in 5.x), unless the
  /// title names a type generated code uses, else by its references
  /// ([byRefs]).
  String _registerTitled(
    String? title,
    String byRefs,
    ({List<UnionVariant> variants, String? discriminator, bool implied})
    union, {
    required Map<String, dynamic> json,
  }) {
    final byTitle = title == null
        ? null
        : context.withClassPrefix(_className(title));
    return _register(
      byTitle != null &&
              !OpenApiSchemaDartTypeConverter.isReservedTypeName(byTitle)
          ? byTitle
          : context.withClassPrefix(_className(byRefs)),
      union,
      json: json,
    );
  }

  /// Registers the union for an inline `oneOf`/`anyOf` ([schemas]) with a
  /// variant that is no reference, as [name] (or [orElse] when another model
  /// has it), and returns its class name.
  String registerInline(
    List<OpenApiSchema> schemas,
    OpenApiSchemaOneOfDiscriminator? discriminator, {
    required String name,
    String? orElse,
    required Map<String, dynamic> json,
  }) => _register(
    name,
    _variants(schemas, discriminator),
    json: json,
    orElse: orElse,
  );

  /// [name] as a class name, before `model.class_prefix`.
  String _className(String name) {
    final prefixes = context.config.model.removeModelPrefixes;
    return Renaming.instance.renameClass(
      name,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );
  }

  /// Registers the union [union] as [className] (the final name, prefix
  /// included) or [orElse].
  String _register(
    String className,
    ({List<UnionVariant> variants, String? discriminator, bool implied})
    union, {
    required Map<String, dynamic> json,
    String? orElse,
  }) => context.registerInlineModel(
    className,
    (className) => build(
      className: className,
      variants: union.variants,
      discriminator: union.discriminator,
      implied: union.implied,
      docs: JsonFactory.instance.docs(className, json),
    ),
    orElse: orElse,
  );

  /// The cases of a union and the discriminator property selecting among its
  /// objects: the explicit one (its `mapping`, then the schema names of the
  /// refs it leaves out, OpenAPI's implicit mapping), else one [implied] by
  /// `const`s, else none.
  ({List<UnionVariant> variants, String? discriminator, bool implied})
  _variants(
    List<OpenApiSchema> schemas,
    OpenApiSchemaOneOfDiscriminator? discriminator,
  ) {
    final members = unionVariants(schemas) ?? schemas.whereNot(isNull).toList();
    final objects = members.where(_canBeObject).toList();
    final refs = objects.whereType<OpenApiSchemaRef>().toList();

    final String? property;
    final List<({String? tag, OpenApiSchema schema})> cases;
    var implied = false;
    if (discriminator != null &&
        objects.isNotEmpty &&
        refs.length == objects.length) {
      property = discriminator.propertyName;
      final mapping = discriminator.mapping;
      final mapped = {
        for (final target in mapping?.values ?? <String>[])
          target.split('/').last,
      };
      final memberRefs = {
        for (final member in members.whereType<OpenApiSchemaRef>()) member.ref,
      };
      cases = [
        if (mapping != null)
          for (final MapEntry(key: tag, value: target) in mapping.entries)
            // A member that cannot be an object keeps its own kinds.
            if (!memberRefs.contains(target) ||
                refs.any((e) => e.ref == target))
              (
                tag: tag,
                schema:
                    refs.firstWhereOrNull((e) => e.ref == target) ??
                    OpenApiSchemaRef(ref: target),
              ),
        // An explicit value that equals a schema name wins over it.
        for (final ref in refs)
          if (!mapped.contains(ref.name) &&
              !(mapping?.containsKey(ref.name) ?? false))
            (tag: ref.name, schema: ref),
        for (final member in members)
          if (!_canBeObject(member)) (tag: null, schema: member),
      ];
    } else if (_constTags(objects) case (:final name, :final tags)?) {
      property = name;
      implied = true;
      var object = 0;
      cases = [
        for (final member in members)
          (
            tag: _canBeObject(member) ? tags[object++] : null,
            schema: member,
          ),
      ];
    } else {
      property = null;
      cases = [for (final member in members) (tag: null, schema: member)];
    }

    final names = <String>[];
    for (final c in cases) {
      final kinds = _shape(c.schema)?.kinds ?? {UnionKind.object};
      final key =
          c.tag ??
          switch (c.schema) {
            final OpenApiSchemaRef ref => ref.name,
            _ => kinds.length == 1 ? kinds.single.name : 'union',
          };
      names.add(_unique(Renaming.instance.renameProperty(key), names));
    }
    return (
      variants: [
        for (final (i, c) in cases.indexed)
          (caseName: names[i], tag: c.tag, schema: c.schema),
      ],
      discriminator: property,
      implied: implied,
    );
  }

  bool _canBeObject(OpenApiSchema schema) =>
      (_shape(schema)?.kinds ?? {UnionKind.object}).contains(UnionKind.object);

  /// The discriminator `const`s imply: the first property every object pins
  /// to one string (`const`, or a one-value `enum`), all distinct; with the
  /// values in [objects] order. The property may be absent: then the keys
  /// decide.
  ({String name, List<String> tags})? _constTags(List<OpenApiSchema> objects) {
    if (objects.length < 2) return null;
    final properties = objects.map(_properties).toList();
    for (final name in properties.first.keys) {
      final tags = [
        for (final p in properties)
          switch (p[name]) {
            OpenApiSchemaType(const_: final String value) => value,
            OpenApiSchemaType(enum_: [final String value]) => value,
            _ => null,
          },
      ].nonNulls.toList();
      if (tags.length == objects.length && tags.toSet().length == tags.length) {
        return (name: name, tags: tags);
      }
    }
    return null;
  }

  // ponytail: a component's own properties only, so an allOf-composed
  // variant declares nothing; merge its allOf parts (as ModelGenerator does)
  // if needed.
  Map<String, OpenApiSchema> _properties(OpenApiSchema schema) =>
      switch (schema) {
        OpenApiSchemaRef(:final ref?) =>
          context.openApi.getOpenApiSchemasByRef(ref)?.properties ?? {},
        OpenApiSchemaType(:final properties) => properties ?? {},
        _ => {},
      };

  List<String>? _required(OpenApiSchema schema) => switch (schema) {
    OpenApiSchemaRef(:final ref?) =>
      context.openApi.getOpenApiSchemasByRef(ref)?.required_,
    OpenApiSchemaType(:final required_) => required_,
    _ => null,
  };

  /// [implied]: the [discriminator] comes from `const`s, so it may be absent
  /// (the keys decide) and each model writes its own value back.
  Library build({
    required String className,
    required List<UnionVariant> variants,
    required String? discriminator,
    required List<String> docs,
    bool implied = false,
  }) {
    final filename = Renaming.instance.renameFile(className);
    final fallbackName = context.config.model.unionClassFallbackName;
    final fallbackCase = fallbackName == null
        ? null
        : _unique(
            Renaming.instance.renameProperty(fallbackName),
            variants.map((v) => v.caseName),
          );

    String caseClass(String caseName) =>
        '$className${Recase.instance.toPascalCase(caseName)}';
    final shapes = {
      for (final v in variants)
        v.caseName:
            _shape(v.schema) ?? (kinds: {UnionKind.object}, of: _Of.model),
    };
    bool covers(UnionVariant v, UnionKind kind) =>
        shapes[v.caseName]!.kinds.contains(kind);
    final base = context.unprefixed(className);
    final types = {
      for (final v in variants)
        v.caseName: context.extension.typeConverter
            .get(
              v.schema,
              className: className,
              contextName: '${base}_${v.caseName}_value',
            )
            .replaceFirst(RegExp(r'\?$'), ''),
    };
    _Decode decodeOf(UnionVariant v) {
      final shape = shapes[v.caseName]!;
      if (shape.of != _Of.value) return _Decode.fromJson;
      return types[v.caseName] == _jsonTypes[shape.kinds.single]
          ? _Decode.direct
          : _Decode.serialized;
    }

    final value = dartString('value');
    String decode(UnionVariant v) {
      final variantClass = caseClass(v.caseName);
      return switch (decodeOf(v)) {
        _Decode.fromJson =>
          '$variantClass(${types[v.caseName]}.fromJson(json))',
        _Decode.direct when covers(v, UnionKind.number) =>
          '$variantClass(json.toDouble())',
        _Decode.direct => '$variantClass(json)',
        _Decode.serialized => '_\$${variantClass}FromJson({$value: json})',
      };
    }

    final objects = variants.where((v) => covers(v, UnionKind.object)).toList();
    final mixed = variants.any(
      (v) => shapes[v.caseName]!.kinds.any((k) => k != UnionKind.object),
    );
    final jsonType = mixed ? 'Object?' : 'Map<String, dynamic>';

    final source = StringBuffer()
      ..writeln('sealed class $className {')
      ..writeln('const $className();')
      ..writeln();
    for (final v in variants) {
      source.writeln(
        'const factory $className.${v.caseName}(${types[v.caseName]} value) = '
        '${caseClass(v.caseName)};',
      );
    }
    if (fallbackCase != null) {
      source.writeln(
        'const factory $className.$fallbackCase($jsonType value) = '
        '${caseClass(fallbackCase)};',
      );
    }

    source.writeln();

    final noVariant = fallbackCase != null
        ? '${caseClass(fallbackCase)}(json)'
        : 'throw ArgumentError.value(json, \'json\', '
              '${dartString('No $className variant matches')})';

    /// Picks among the object variants, as a member starting with [header].
    void selectObject(String header) {
      if (discriminator != null) {
        final unknown = implied
            // The `const` property is optional: the keys decide.
            ? '_fromKeys(json)'
            : fallbackCase != null
            ? '${caseClass(fallbackCase)}(json)'
            : 'throw ArgumentError.value(json[${dartString(discriminator)}], '
                  '${dartString(discriminator)}, '
                  '${dartString('Unknown $className')})';
        source.writeln(
          '$header => switch (json[${dartString(discriminator)}]) {',
        );
        for (final v in objects) {
          source.writeln('${dartString(v.tag!)} => ${decode(v)},');
        }
        source.writeln('_ => $unknown,};');
        if (!implied) return;
        source.writeln();
        header = 'static $className _fromKeys(Map<String, dynamic> json)';
      }

      String setOf(Iterable<String>? keys) => keys == null || keys.isEmpty
          ? '<String>{}'
          : '{${keys.toSet().map(dartString).join(', ')}}';

      source
        ..writeln('$header {')
        ..writeln(
          discriminator == null
              ? '// No discriminator in the spec: the variant whose required keys are all'
              : '// No discriminator value we know: the variant whose required keys are all',
        )
        ..writeln(
          "// present and that declares the most of the payload's keys wins (the",
        )
        ..writeln('// earlier one on a tie).')
        ..writeln(
          'const variants = <({Set<String> required, Set<String> declared})>[',
        );
      for (final v in objects) {
        source.writeln(
          '(required: ${setOf(_required(v.schema))}, '
          'declared: ${setOf(_properties(v.schema).keys)}),',
        );
      }
      source
        ..writeln('];')
        ..writeln('var best = -1;')
        ..writeln('var bestScore = -1;')
        ..writeln('for (var i = 0; i < variants.length; i++) {')
        ..writeln('final variant = variants[i];')
        ..writeln('if (!variant.required.every(json.containsKey)) continue;')
        ..writeln(
          'final score = json.keys.where(variant.declared.contains).length;',
        )
        ..writeln('if (score > bestScore) { best = i; bestScore = score; }')
        ..writeln('}')
        ..writeln('return switch (best) {');
      for (final (i, v) in objects.indexed) {
        source.writeln('$i => ${decode(v)},');
      }
      source
        ..writeln('_ => $noVariant,};')
        ..writeln('}');
    }

    if (!mixed) {
      selectObject('factory $className.fromJson(Map<String, dynamic> json)');
    } else {
      // Several objects (or a discriminator) are told apart in `_fromMap`.
      final selectsObject = discriminator != null || objects.length > 1;
      final number = variants.any((v) => covers(v, UnionKind.number));
      source.writeln(
        'factory $className.fromJson(Object? json) => switch (json) {',
      );
      for (final kind in UnionKind.values) {
        // `num()` takes integers too.
        if (kind == UnionKind.integer && number) continue;
        final owner = kind == UnionKind.object
            ? objects.firstOrNull
            : variants.firstWhereOrNull((v) => covers(v, kind));
        if (owner == null) continue;
        final arm = kind == UnionKind.object && selectsObject
            ? '_fromMap(json)'
            : decode(owner);
        source.writeln('${_patterns[kind]} => $arm,');
      }
      source.writeln('_ => $noVariant,};');
      if (selectsObject) {
        source.writeln();
        selectObject('static $className _fromMap(Map<String, dynamic> json)');
      }
    }

    source
      ..writeln()
      ..writeln('$jsonType toJson();')
      ..writeln('}');

    for (final v in variants) {
      final variantClass = caseClass(v.caseName);
      final decodeKind = decodeOf(v);
      final tag = v.tag == null || implied
          ? null
          : '${dartString(discriminator!)}: ${dartString(v.tag!)}';
      final toJson = switch (decodeKind) {
        // An explicit discriminator value is not always a field of the model.
        _Decode.fromJson
            when tag != null && shapes[v.caseName]!.of == _Of.model =>
          '{...value.toJson(), $tag}',
        // A mixed union's JSON is a map only sometimes.
        _Decode.fromJson when tag != null =>
          'switch (value.toJson()) { final Map<String, dynamic> json => '
              '{...json, $tag}, final json => json }',
        _Decode.fromJson => 'value.toJson()',
        _Decode.direct => 'value',
        _Decode.serialized => '_\$${variantClass}ToJson(this)[$value]',
      };
      // A json_serializable class with one field, `value`.
      final serialized = decodeKind == _Decode.serialized;
      // Collections compare deeply.
      final deep =
          serialized ||
          (decodeKind == _Decode.direct &&
              (covers(v, UnionKind.list) || covers(v, UnionKind.object)));
      source
        ..writeln()
        ..write(serialized ? '@jsonSerializable\n' : '')
        ..writeln('final class $variantClass extends $className {')
        ..writeln('const $variantClass(this.value);')
        ..writeln()
        ..write(serialized ? '@JsonKey(name: $value)\n' : '')
        ..writeln('final ${types[v.caseName]} value;')
        ..writeln()
        ..writeln('@override $jsonType toJson() => $toJson;')
        ..writeln()
        ..writeln(
          '@override bool operator ==(Object other) => '
          'other is $variantClass && '
          '${deep ? 'const DeepCollectionEquality().equals(other.value, value)' : 'other.value == value'};',
        )
        ..writeln()
        ..writeln(
          '@override int get hashCode => '
          '${deep ? 'const DeepCollectionEquality().hash(value)' : 'value.hashCode'};',
        )
        ..writeln()
        ..writeln(
          "@override String toString() => '${_label(className, v.caseName)}(\$value)';",
        )
        ..writeln('}');
    }

    if (fallbackCase != null) {
      final fallbackClass = caseClass(fallbackCase);
      source
        ..writeln()
        ..writeln('final class $fallbackClass extends $className {')
        ..writeln('const $fallbackClass(this.value);')
        ..writeln()
        ..writeln('final $jsonType value;')
        ..writeln()
        ..writeln('@override $jsonType toJson() => value;')
        ..writeln()
        ..writeln(
          "@override String toString() => '${_label(className, fallbackCase)}(\$value)';",
        )
        ..writeln('}');
    }

    return Library(
      (b) => b
        ..name = filename
        ..docs.addAll(docs)
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          Directive.import('exports.dart'),
          if (variants.any((v) => decodeOf(v) == _Decode.serialized))
            Directive.part('$filename.g.dart'),
        ])
        ..body.add(Code(source.toString())),
    );
  }

  /// `Class.case` for toString, with `$` escaped for the string literal.
  String _label(String className, String caseName) =>
      '$className.$caseName'.replaceAll(r'$', r'\$');

  String _unique(String name, Iterable<String> taken) {
    var candidate = name;
    for (var i = 2; taken.contains(candidate); i++) {
      candidate = '$name$i';
    }
    return candidate;
  }
}
