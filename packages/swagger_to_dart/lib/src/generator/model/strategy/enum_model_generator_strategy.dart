import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    final className = Renaming.instance.renameClass(
      model.key,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    // Can be a list of [String] or an [int].
    final values = model.value.enum_ ?? [];

    // Opt-in per-enum member renames from config (model.enums). Keyed by the
    // raw swagger schema name OR the generated Dart class name; absent enums
    // fall through to the default `value0` naming.
    final enumOverrides = context.config.model.enums[model.key] ??
        context.config.model.enums[className] ??
        const <String, String>{};

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

    // Resolve each raw value to its Dart member name (applying overrides) and
    // fail fast on collisions — duplicate enum members would not compile.
    final memberNames = <String, String>{}; // value.toString() -> member name
    final seenNames = <String, String>{}; // member name -> value.toString()
    for (final value in values) {
      final key = value.toString();
      final name = Renaming.instance.renameEnumValue(
        value,
        overrideName: enumOverrides[key],
      );
      final clash = seenNames[name];
      if (clash != null) {
        throw ArgumentError(
          'swagger_to_dart: enum "${model.key}" produces duplicate member '
          '"$name" for values "$clash" and "$key". Fix the model.enums config.',
        );
      }
      seenNames[name] = key;
      memberNames[key] = name;
    }

    final enumFallbackType = context.config.model.enumFallbackType;

    final orElseCallback = switch (enumFallbackType) {
      EnumFallbackType.unknown => 'throw ArgumentError("Invalid $className")',
      EnumFallbackType.first => '$className.values.first',
      EnumFallbackType.last => '$className.values.last',
      EnumFallbackType.throwException =>
        'throw ArgumentError("Invalid $className")',
    };

    final enumType = model.value.type == 'integer'
        ? OpenApiSchemaVarType.integer
        : OpenApiSchemaVarType.string;

    final referType =
        refer(enumType == OpenApiSchemaVarType.integer ? '$int' : '$String');
    return Library(
      (b) => b
        ..comments.addAll([
          model.key,
          ...JsonFactory.instance.encode(model.value.toJson()).split('\n'),
        ])
        ..name = filename
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          Directive.import('exports.dart'),
          Directive.part('$filename.g.dart'),
        ])
        ..body.addAll([
          Enum((b) => b
            ..annotations.add(refer('$JsonEnum(alwaysCreate: true)'))
            ..name = className
            ..values.addAll([
              for (final value in values)
                EnumValue(
                  (b) => b
                    ..annotations.add(refer(
                        '$JsonValue(${enumType == OpenApiSchemaVarType.integer ? '$value' : '"$value"'})'))
                    ..name = memberNames[value.toString()]!,
                ),
            ])
            ..constructors.addAll([
              Constructor(
                (b) => b
                  ..requiredParameters.add(Parameter(
                    (b) => b
                      ..name = 'json'
                      ..type = referType,
                  ))
                  ..lambda = true
                  ..factory = true
                  ..name = 'fromJson'
                  ..body = Code(
                      '$className.values.firstWhere((e) => e.toJson() == json, orElse: () => $orElseCallback)'),
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
            ])),
        ]),
    );
  }
}
