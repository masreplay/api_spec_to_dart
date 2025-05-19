import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

import '../model_generator_strategy.dart';

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

class EnumModelStrategy extends ModelGeneratorStrategy {
  const EnumModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

    // Can be a list of [String] or an [int].
    final List<Object> values = model.value.enum_ ?? [];

    return Library(
      (b) => b
        ..comments.addAll([
          '${model.key}',
          ...JsonFactory.instance.encode(model.value.toJson()).split('\n'),
        ])
        ..name = filename
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.part('${filename}.g.dart'),
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
              ..methods.addAll([
                Method(
                  (b) => b
                    ..returns = refer('$String')
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
