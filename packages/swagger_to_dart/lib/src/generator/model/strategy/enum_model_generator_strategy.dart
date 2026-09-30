import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

///
/// Enum Model Strategy
///
/// Example:
///
/// ```dart
/// library;
///
/// import 'exports.dart';
/// part 'user_level.g.dart';
///
/// @JsonEnum(alwaysCreate: true)
/// enum UserLevel {
///   @JsonValue("basic")
///   basic,
///   @JsonValue("premium")
///   premium,
///   @JsonValue("admin")
///   admin;
///
///   String toJson() => _$UserLevelEnumMap[this]!;
///
///   factory UserLevel.fromJson(String json) => UserLevel.values.firstWhere(
///     (e) => _$UserLevelEnumMap[e] == json,
///     orElse: () => throw ArgumentError('Invalid UserLevel: $json'),
///   );
/// }
///
/// ```
///

class EnumModelGeneratorStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const EnumModelGeneratorStrategy(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final prefixes = context.config.model.removeModelPrefixes;
    final className =
        context.componentClassNames[model.key] ??
        Renaming.instance.renameClass(
          model.key,
          removePrefixes: prefixes.isNotEmpty ? prefixes : null,
        );
    final filename = Renaming.instance.renameFile(className);

    // Strings or ints; a `null` entry (OpenAPI 3.1 nullable enum) is not a
    // member — the field's nullability expresses it.
    final values = [...?model.value.enum_?.whereType<Object>()];

    final enumOverrides = _overrides(
      context.config.model.enums,
      enumKey: model.key,
      className: className,
    );

    if (enumOverrides.isNotEmpty) {
      // Typo guard: warn on configured values not present in the schema.
      final actualValues = values.map((v) => v.toString()).toSet();
      for (final key in enumOverrides.keys) {
        if (!actualValues.contains(key)) {
          print(
            'swagger_to_dart: warning: enum "${model.key}" has no value "$key" '
            'configured under model.enums — ignoring it.',
          );
        }
      }
    }

    final memberNames = EnumModelGeneratorStrategy.memberNames(
      enumKey: model.key,
      className: className,
      values: values,
      overrides: context.config.model.enums,
    );

    final enumType = model.value.type == 'integer'
        ? OpenApiSchemaVarType.integer
        : OpenApiSchemaVarType.string;

    final enumFallbackType = context.config.model.enumFallbackType;

    // `unknown` fallback: reuse a member named unknown, else add one whose
    // JSON value cannot clash with a real value.
    final addUnknown =
        enumFallbackType == EnumFallbackType.unknown &&
        !memberNames.containsValue('unknown');
    final unknownJsonValue = enumType == OpenApiSchemaVarType.integer
        ? '${values.whereType<int>().fold<int>(0, (a, b) => a < b ? a : b) - 1}'
        : dartString('unknown');

    final orElseCallback = switch (enumFallbackType) {
      EnumFallbackType.unknown => '$className.unknown',
      EnumFallbackType.first => '$className.values.first',
      EnumFallbackType.last => '$className.values.last',
      EnumFallbackType.throwException =>
        "throw ArgumentError('Invalid $className')",
    };

    final referType = refer(
      enumType == OpenApiSchemaVarType.integer ? 'int' : 'String',
    );
    return Library(
      (b) => b
        ..docs.addAll(
          JsonFactory.instance.docs(model.key, model.value.toJson()),
        )
        ..name = filename
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          Directive.import('exports.dart'),
          Directive.part('$filename.g.dart'),
        ])
        ..body.addAll([
          Enum(
            (b) => b
              ..annotations.add(refer('JsonEnum(alwaysCreate: true)'))
              ..name = className
              ..values.addAll([
                for (final value in values)
                  EnumValue(
                    (b) => b
                      ..annotations.add(
                        refer(
                          'JsonValue(${enumType == OpenApiSchemaVarType.integer ? '$value' : dartString('$value')})',
                        ),
                      )
                      ..name = memberNames[value.toString()]!,
                  ),
                if (addUnknown)
                  EnumValue(
                    (b) => b
                      ..annotations.add(refer('JsonValue($unknownJsonValue)'))
                      ..name = 'unknown',
                  ),
              ])
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..requiredParameters.add(
                      Parameter(
                        (b) => b
                          ..name = 'json'
                          ..type = referType,
                      ),
                    )
                    ..lambda = true
                    ..factory = true
                    ..name = 'fromJson'
                    ..body = Code(
                      '$className.values.firstWhere((e) => e.toJson() == json, orElse: () => $orElseCallback)',
                    ),
                ),
              ])
              ..methods.addAll([
                Method(
                  (b) => b
                    ..returns = referType
                    ..name = 'toJson'
                    ..lambda = true
                    ..body = Code('_\$${className}EnumMap[this]!'),
                ),
              ]),
          ),
        ]),
    );
  }

  /// Dart member name for each raw value (`'$value'` → name), applying the
  /// `model.enums` renames configured for [enumKey] or [className]. Throws
  /// when two values map to one name (the enum would not compile).
  static Map<String, String> memberNames({
    required String enumKey,
    required String className,
    required List<Object> values,
    required Map<String, Map<String, String>> overrides,
  }) {
    final renames = _overrides(
      overrides,
      enumKey: enumKey,
      className: className,
    );
    final names = <String, String>{}; // value -> member name
    final seen = <String, String>{}; // member name -> value
    for (final value in values) {
      final key = '$value';
      final name = Renaming.instance.renameEnumValue(
        value,
        overrideName: renames[key],
      );
      if (seen[name] case final clash?) {
        throw ArgumentError(
          'swagger_to_dart: enum "$enumKey" produces duplicate member '
          '"$name" for values "$clash" and "$key". Fix the model.enums config.',
        );
      }
      seen[name] = key;
      names[key] = name;
    }
    return names;
  }

  // Keyed by the schema name or the generated Dart class name.
  static Map<String, String> _overrides(
    Map<String, Map<String, String>> overrides, {
    required String enumKey,
    required String className,
  }) => overrides[enumKey] ?? overrides[className] ?? const {};
}
