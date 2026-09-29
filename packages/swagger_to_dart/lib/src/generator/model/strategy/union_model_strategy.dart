import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// One case of a union: its factory constructor name, the discriminator value
/// selecting it (null without a discriminator) and the referenced model.
typedef UnionVariant = ({String caseName, String? tag, OpenApiSchemaRef ref});

/// A `oneOf`/`anyOf` of references as a plain sealed class whose JSON is the
/// variant's own flat JSON (#49):
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
/// body and a response alike.
class UnionModelStrategy {
  const UnionModelStrategy(this.context);

  final GenerationContext context;

  /// The union for a component schema with `oneOf`/`anyOf` (#58).
  Library buildComponent(MapEntry<String, OpenApiSchemas> component) {
    final schema = component.value;
    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      schema.title ?? component.key,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );

    return build(
      className: className,
      variants: _variants(
        schema.oneOf ?? schema.anyOf ?? [],
        schema.discriminator,
      ),
      discriminator: schema.discriminator?.propertyName,
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
      variants: _variants(schema.oneOf, discriminator),
      discriminator: discriminator?.propertyName,
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
      variants: _variants(schema.anyOf, schema.discriminator),
      discriminator: schema.discriminator?.propertyName,
      json: schema.toJson(),
    );
  }

  String _register(
    String name, {
    required List<UnionVariant> variants,
    required String? discriminator,
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
        variants: variants,
        discriminator: discriminator,
        docs: JsonFactory.instance.docs(className, json),
      ),
    );
  }

  /// Variants keyed by discriminator value: the explicit `mapping`, else the
  /// referenced schema names (OpenAPI's implicit mapping).
  List<UnionVariant> _variants(
    List<OpenApiSchema> schemas,
    OpenApiSchemaOneOfDiscriminator? discriminator,
  ) {
    final refs = schemas.whereType<OpenApiSchemaRef>().toList();

    final List<({String? tag, OpenApiSchemaRef ref})> cases;
    if (discriminator == null) {
      cases = [for (final ref in refs) (tag: null, ref: ref)];
    } else if (discriminator.mapping case final mapping?) {
      cases = [
        for (final MapEntry(key: tag, value: target) in mapping.entries)
          (
            tag: tag,
            ref:
                refs.firstWhereOrNull((e) => e.ref == target) ??
                OpenApiSchemaRef(ref: target),
          ),
      ];
    } else {
      cases = [for (final ref in refs) (tag: ref.name, ref: ref)];
    }

    final names = Renaming.instance.propertyNames(
      cases.map((c) => c.tag ?? c.ref.name),
    );
    return [
      for (final c in cases)
        (caseName: names[c.tag ?? c.ref.name]!, tag: c.tag, ref: c.ref),
    ];
  }

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
    String typeOf(UnionVariant v) =>
        context.extension.typeConverter.getRef(v.ref);

    final source = StringBuffer()
      ..writeln('sealed class $className {')
      ..writeln('const $className();')
      ..writeln();
    for (final v in variants) {
      source.writeln(
        'const factory $className.${v.caseName}(${typeOf(v)} value) = '
        '${caseClass(v.caseName)};',
      );
    }
    if (fallbackCase != null) {
      source.writeln(
        'const factory $className.$fallbackCase(Map<String, dynamic> value) = '
        '${caseClass(fallbackCase)};',
      );
    }

    source.writeln();

    final noMatch = fallbackCase != null
        ? '${caseClass(fallbackCase)}(json)'
        : discriminator != null
        ? 'throw ArgumentError.value(json[${dartString(discriminator)}], '
              '${dartString(discriminator)}, ${dartString('Unknown $className')})'
        : 'throw ArgumentError.value(json, \'json\', '
              '${dartString('No $className variant matches')})';

    if (discriminator != null) {
      source.writeln(
        'factory $className.fromJson(Map<String, dynamic> json) => '
        'switch (json[${dartString(discriminator)}]) {',
      );
      for (final v in variants) {
        source.writeln(
          '${dartString(v.tag!)} => '
          '${caseClass(v.caseName)}(${typeOf(v)}.fromJson(json)),',
        );
      }
      source.writeln('_ => $noMatch,};');
    } else {
      source
        ..writeln('factory $className.fromJson(Map<String, dynamic> json) {')
        ..writeln(
          '// No discriminator in the spec: the first variant that decodes wins.',
        )
        ..writeln(
          'for (final decode in <$className Function(Map<String, dynamic>)>[',
        );
      for (final v in variants) {
        source.writeln(
          '(json) => ${caseClass(v.caseName)}(${typeOf(v)}.fromJson(json)),',
        );
      }
      source
        ..writeln(']) {')
        ..writeln('try { return decode(json); } catch (_) {')
        ..writeln('// Not this variant; try the next one.')
        ..writeln('}}')
        ..writeln(fallbackCase != null ? 'return $noMatch;' : '$noMatch;')
        ..writeln('}');
    }

    source
      ..writeln()
      ..writeln('Map<String, dynamic> toJson();')
      ..writeln('}');

    for (final v in variants) {
      final variantClass = caseClass(v.caseName);
      final toJson = v.tag == null
          ? 'value.toJson()'
          : '{...value.toJson(), ${dartString(discriminator!)}: ${dartString(v.tag!)}}';
      source
        ..writeln()
        ..writeln('final class $variantClass extends $className {')
        ..writeln('const $variantClass(this.value);')
        ..writeln()
        ..writeln('final ${typeOf(v)} value;')
        ..writeln()
        ..writeln('@override Map<String, dynamic> toJson() => $toJson;')
        ..writeln()
        ..writeln(
          '@override bool operator ==(Object other) => '
          'other is $variantClass && other.value == value;',
        )
        ..writeln()
        ..writeln('@override int get hashCode => value.hashCode;')
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
        ..writeln('final Map<String, dynamic> value;')
        ..writeln()
        ..writeln('@override Map<String, dynamic> toJson() => value;')
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
