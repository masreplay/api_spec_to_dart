import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

import 'model_generator_strategy.dart';

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
          Enum(
            (b) => b
              ..annotations.add(refer('$JsonEnum(alwaysCreate: true)'))
              ..name = className
              ..values.addAll([
                for (final value in values)
                  EnumValue(
                    (b) => b
                      ..annotations.add(refer('$JsonValue("$value")'))
                      ..name = Renaming.instance.renameEnumValue(value),
                  ),
              ])
              //             factory Currency.fromJson(value) {
              //   return values.firstWhere(
              //     (e) => e.toJson() == value,
              //     orElse: () => values.first,
              //   );
              // }
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..factory = true
                    ..name = 'fromJson'
                    ..requiredParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'json'
                          ..type = refer('Object'),
                      ),
                    ])
                    ..lambda = true
                    // TODO(masreplay): handle value.first based on value from config
                    ..body = Code(
                      '''values.firstWhere((e) => e.toJson() == json, orElse: () => values.first)''',
                    ),
                ),
              ])
              ..methods.addAll([
                Method(
                  (b) => b
                    // if value is a string, return the string
                    // if value is a number, return the number
                    ..returns = refer('Object')
                    ..name = 'toJson'
                    ..lambda = true
                    ..body = Code('_\$${className}EnumMap[this]!'),
                ),
              ]),
          ),
        ]),
    );
  }
}
