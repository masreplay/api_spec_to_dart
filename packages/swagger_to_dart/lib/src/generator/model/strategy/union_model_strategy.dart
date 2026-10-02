import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// The JSON kinds a union tells apart, in the order `fromJson` tests them.
enum UnionKind { string, integer, number, boolean, list, object }

/// One case of a union: its factory constructor name, the discriminator value
/// selecting it (null without a discriminator) and its schema.
typedef UnionVariant = ({String caseName, String? tag, OpenApiSchema schema});

/// How a variant's JSON becomes its value: `X.fromJson(json)` (models), the
/// JSON itself (`String`, `Map<String, dynamic>`, ...) or a
/// json_serializable wrapper (`List<Pet>`, `DateTime`, enums, ...).
enum _Decode { model, direct, serialized }

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

  /// JSON kind of a variant, or null when it has none (`{}`, a bare
  /// `required` list, a nested union).
  UnionKind? kindOf(OpenApiSchema schema) => switch (schema) {
    OpenApiSchemaRef(:final ref?) => switch (context.openApi
        .getOpenApiSchemasByRef(ref)
        ?.type) {
      'string' => UnionKind.string,
      'integer' => UnionKind.integer,
      'number' => UnionKind.number,
      'boolean' => UnionKind.boolean,
      'array' => UnionKind.list,
      _ => UnionKind.object,
    },
    OpenApiSchemaType(:final type, :final properties) => switch (type) {
      OpenApiSchemaVarType.string => UnionKind.string,
      OpenApiSchemaVarType.integer => UnionKind.integer,
      OpenApiSchemaVarType.number => UnionKind.number,
      OpenApiSchemaVarType.boolean => UnionKind.boolean,
      OpenApiSchemaVarType.array => UnionKind.list,
      OpenApiSchemaVarType.object => UnionKind.object,
      null when properties?.isNotEmpty ?? false => UnionKind.object,
      _ => null,
    },
    _ => null,
  };

  /// The variants that make [schemas] (a `oneOf`/`anyOf`) a union, or null
  /// when it is none (`dynamic`): every variant needs a JSON kind, one is a
  /// list or an object, and there are two kinds or two objects. Objects are
  /// told apart by discriminator or keys; of the other kinds the first
  /// variant is kept, and `number` also decodes integers.
  List<OpenApiSchema>? unionVariants(List<OpenApiSchema> schemas) {
    final nonNull = schemas.whereNot(isNull).toList();
    final kinds = nonNull.map(kindOf).toList();
    if (kinds.contains(null)) return null;

    final variants = <OpenApiSchema>[];
    final seen = <UnionKind>{};
    for (final (i, schema) in nonNull.indexed) {
      final kind = kinds[i]!;
      if (kind == UnionKind.integer && kinds.contains(UnionKind.number)) {
        continue;
      }
      // ponytail: JSON cannot tell two lists (or two strings) apart, so the
      // first wins; dispatch on item kinds if specs need both.
      if (kind == UnionKind.object || seen.add(kind)) variants.add(schema);
    }

    final kept = variants.map(kindOf).toList();
    final objects = kept.where((k) => k == UnionKind.object).length;
    final structured =
        kept.contains(UnionKind.list) || kept.contains(UnionKind.object);
    return structured && (kept.toSet().length > 1 || objects > 1)
        ? variants
        : null;
  }

  /// Whether [schema] is (or references) a union with a variant that is no
  /// object, so its `toJson()` returns `Object?` rather than a map.
  bool isMixed(OpenApiSchema? schema) {
    final variants = switch (schema) {
      OpenApiSchemaRef(:final ref?) => [
        ...?context.openApi.getOpenApiSchemasByRef(ref)?.oneOf,
        ...?context.openApi.getOpenApiSchemasByRef(ref)?.anyOf,
      ],
      OpenApiSchemaOneOf(:final oneOf) => oneOf,
      OpenApiSchemaAnyOf(:final anyOf) => anyOf,
      _ => <OpenApiSchema>[],
    }.whereNot(isNull).toList();
    if (variants.length == 1) return isMixed(variants.single);
    return unionVariants(
          variants,
        )?.any((v) => kindOf(v) != UnionKind.object) ??
        false;
  }

  /// The union for a component schema with `oneOf`/`anyOf` (#58).
  Library buildComponent(MapEntry<String, OpenApiSchemas> component) {
    final schema = component.value;
    final prefixes = context.config.model.removeModelPrefixes;
    final className =
        context.componentClassNames[component.key] ??
        Renaming.instance.renameClass(
          schema.title ?? component.key,
          removePrefixes: prefixes.isNotEmpty ? prefixes : null,
        );
    final (:variants, :discriminator) = _variants(
      schema.oneOf ?? schema.anyOf ?? [],
      schema.discriminator,
    );

    return build(
      className: className,
      variants: variants,
      discriminator: discriminator,
      docs: JsonFactory.instance.docs(component.key, schema.toJson()),
    );
  }

  /// Registers the union for an inline all-reference `oneOf` and returns its
  /// class name.
  String registerOneOf(OpenApiSchemaOneOf schema) {
    final refs = schema.oneOf.whereType<OpenApiSchemaRef>();
    final discriminator = schema.discriminator;
    final name =
        schema.title ??
        '${(discriminator?.mapping?.keys ?? refs.map((e) => e.name)).join('Or')}_Union';

    return _register(
      name,
      _variants(schema.oneOf, discriminator),
      json: schema.toJson(),
    );
  }

  /// Registers the union for an inline all-reference `anyOf` and returns its
  /// class name.
  String registerAnyOf(OpenApiSchemaAnyOf schema) {
    final prefixes = context.config.model.removeModelPrefixes;
    final name =
        schema.title ??
        schema.anyOf
            .whereType<OpenApiSchemaRef>()
            .map(context.extension.typeConverter.getRef)
            .map(
              (name) => Renaming.instance.renameClass(
                name,
                removePrefixes: prefixes.isNotEmpty ? prefixes : null,
              ),
            )
            .sorted((a, b) => a.compareTo(b))
            .join();

    return _register(
      name,
      _variants(schema.anyOf, schema.discriminator),
      json: schema.toJson(),
    );
  }

  /// Registers the union for an inline `oneOf`/`anyOf` ([schemas]) with a
  /// variant that is no reference, as [name] (G1 naming), and returns its
  /// class name.
  String registerInline(
    List<OpenApiSchema> schemas,
    OpenApiSchemaOneOfDiscriminator? discriminator, {
    required String name,
    required Map<String, dynamic> json,
  }) => _register(name, _variants(schemas, discriminator), json: json);

  String _register(
    String name,
    ({List<UnionVariant> variants, String? discriminator}) union, {
    required Map<String, dynamic> json,
  }) {
    final prefixes = context.config.model.removeModelPrefixes;
    return context.registerInlineModel(
      Renaming.instance.renameClass(
        name,
        removePrefixes: prefixes.isNotEmpty ? prefixes : null,
      ),
      (className) => build(
        className: className,
        variants: union.variants,
        discriminator: union.discriminator,
        docs: JsonFactory.instance.docs(className, json),
      ),
    );
  }

  /// The cases of a union and the discriminator property selecting among its
  /// objects: the explicit one (its `mapping`, then the schema names of the
  /// refs it leaves out, OpenAPI's implicit mapping), else one implied by
  /// `const`s, else none.
  ({List<UnionVariant> variants, String? discriminator}) _variants(
    List<OpenApiSchema> schemas,
    OpenApiSchemaOneOfDiscriminator? discriminator,
  ) {
    final members = unionVariants(schemas) ?? schemas.whereNot(isNull).toList();
    final objects = members
        .where((e) => kindOf(e) == UnionKind.object)
        .toList();
    final refs = objects.whereType<OpenApiSchemaRef>().toList();

    final String? property;
    final List<({String? tag, OpenApiSchema schema})> cases;
    if (discriminator != null &&
        objects.isNotEmpty &&
        refs.length == objects.length) {
      property = discriminator.propertyName;
      final mapping = discriminator.mapping;
      final mapped = {
        for (final target in mapping?.values ?? <String>[])
          target.split('/').last,
      };
      cases = [
        if (mapping != null)
          for (final MapEntry(key: tag, value: target) in mapping.entries)
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
          if (kindOf(member) != UnionKind.object) (tag: null, schema: member),
      ];
    } else if (_constTags(objects) case (:final name, :final tags)?) {
      property = name;
      var object = 0;
      cases = [
        for (final member in members)
          (
            tag: kindOf(member) == UnionKind.object ? tags[object++] : null,
            schema: member,
          ),
      ];
    } else {
      property = null;
      cases = [for (final member in members) (tag: null, schema: member)];
    }

    final names = <String>[];
    for (final c in cases) {
      final key =
          c.tag ??
          switch (c.schema) {
            final OpenApiSchemaRef ref => ref.name,
            final schema => kindOf(schema)!.name,
          };
      names.add(_unique(Renaming.instance.renameProperty(key), names));
    }
    return (
      variants: [
        for (final (i, c) in cases.indexed)
          (caseName: names[i], tag: c.tag, schema: c.schema),
      ],
      discriminator: property,
    );
  }

  /// The discriminator `const`s imply: the first property every object pins
  /// to one string (`const`, or a one-value `enum`), all distinct; with the
  /// values in [objects] order.
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

  /// Whether [schema] is a class with `fromJson(Map<String, dynamic>)`.
  bool _isModel(OpenApiSchema schema) => switch (schema) {
    OpenApiSchemaRef(:final ref?) => switch (context.openApi
        .getOpenApiSchemasByRef(ref)) {
      null => true,
      final component =>
        component.enum_ == null && !TypedefModelStrategy.accepts(component),
    },
    OpenApiSchemaType(:final properties) => properties?.isNotEmpty ?? false,
    _ => false,
  };

  Library build({
    required String className,
    required List<UnionVariant> variants,
    required String? discriminator,
    required List<String> docs,
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
    UnionKind kindOfVariant(UnionVariant v) =>
        kindOf(v.schema) ?? UnionKind.object;
    final types = {
      for (final v in variants)
        v.caseName: context.extension.typeConverter
            .get(
              v.schema,
              className: className,
              contextName: '${className}_${v.caseName}_value',
            )
            .replaceFirst(RegExp(r'\?$'), ''),
    };
    _Decode decodeOf(UnionVariant v) => _isModel(v.schema)
        ? _Decode.model
        : types[v.caseName] == _jsonTypes[kindOfVariant(v)]
        ? _Decode.direct
        : _Decode.serialized;
    String decode(UnionVariant v) {
      final variantClass = caseClass(v.caseName);
      return switch (decodeOf(v)) {
        _Decode.model => '$variantClass(${types[v.caseName]}.fromJson(json))',
        _Decode.direct when kindOfVariant(v) == UnionKind.number =>
          '$variantClass(json.toDouble())',
        _Decode.direct => '$variantClass(json)',
        _Decode.serialized => "_\$${variantClass}FromJson({'value': json})",
      };
    }

    final objects = variants
        .where((v) => kindOfVariant(v) == UnionKind.object)
        .toList();
    final mixed = objects.length < variants.length;
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

    final noMatch = fallbackCase != null
        ? '${caseClass(fallbackCase)}(json)'
        : discriminator != null
        ? 'throw ArgumentError.value(json[${dartString(discriminator)}], '
              '${dartString(discriminator)}, ${dartString('Unknown $className')})'
        : _noVariant(className);

    /// Picks among the object variants, as a member starting with [header].
    void selectObject(String header) {
      if (discriminator != null) {
        source.writeln(
          '$header => switch (json[${dartString(discriminator)}]) {',
        );
        for (final v in objects) {
          source.writeln('${dartString(v.tag!)} => ${decode(v)},');
        }
        source.writeln('_ => $noMatch,};');
        return;
      }

      String setOf(Iterable<String>? keys) => keys == null || keys.isEmpty
          ? '<String>{}'
          : '{${keys.toSet().map(dartString).join(', ')}}';

      source
        ..writeln('$header {')
        ..writeln(
          '// No discriminator in the spec: the variant whose required keys are all',
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
        ..writeln('_ => $noMatch,};')
        ..writeln('}');
    }

    if (!mixed) {
      selectObject('factory $className.fromJson(Map<String, dynamic> json)');
    } else {
      // Several objects (or a discriminator) are told apart in `_fromMap`.
      final selectsObject = discriminator != null || objects.length > 1;
      source.writeln(
        'factory $className.fromJson(Object? json) => switch (json) {',
      );
      for (final kind in UnionKind.values) {
        final v = variants.firstWhereOrNull((v) => kindOfVariant(v) == kind);
        if (v == null) continue;
        final value = kind == UnionKind.object && selectsObject
            ? '_fromMap(json)'
            : decode(v);
        source.writeln('${_patterns[kind]} => $value,');
      }
      source.writeln(
        '_ => ${fallbackCase != null ? '${caseClass(fallbackCase)}(json)' : _noVariant(className)},};',
      );
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
      final toJson = switch (decodeKind) {
        // The discriminator value is not always a field of the model.
        _Decode.model when v.tag != null =>
          '{...value.toJson(), ${dartString(discriminator!)}: ${dartString(v.tag!)}}',
        _Decode.model => 'value.toJson()',
        _Decode.direct => 'value',
        _Decode.serialized => "_\$${variantClass}ToJson(this)['value']",
      };
      // A json_serializable class with one field, `value`.
      final serialized = decodeKind == _Decode.serialized;
      // Collections compare deeply.
      final deep =
          serialized ||
          (decodeKind == _Decode.direct &&
              (kindOfVariant(v) == UnionKind.list ||
                  kindOfVariant(v) == UnionKind.object));
      source
        ..writeln()
        ..write(serialized ? '@jsonSerializable\n' : '')
        ..writeln('final class $variantClass extends $className {')
        ..writeln('const $variantClass(this.value);')
        ..writeln()
        ..write(serialized ? "@JsonKey(name: 'value')\n" : '')
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

  String _noVariant(String className) =>
      'throw ArgumentError.value(json, \'json\', '
      '${dartString('No $className variant matches')})';

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
