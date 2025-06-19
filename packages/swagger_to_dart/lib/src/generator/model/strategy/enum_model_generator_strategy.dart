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
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

    // Can be a list of [String] or an [int].
    final values = model.value.enum_ ?? [];

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
                    ..name = Renaming.instance.renameEnumValue(value),
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
