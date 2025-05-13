import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FreezedClassCodeBuilder {
  static const FreezedClassCodeBuilder _instance =
      const FreezedClassCodeBuilder._();

  const FreezedClassCodeBuilder._();

  static FreezedClassCodeBuilder get instance => _instance;

  Parameter parameter({
    required String name,
    required String type,
    required String className,
    Object? defaultValue = null,
    bool isDeprecated = false,
  }) {
    return Parameter(
      (b) => b
        ..docs.addAll([
          '/// ${name}',
        ])
        ..required = defaultValue == null
        ..named = true
        ..annotations.addAll([
          if (defaultValue != null) refer('$Default($defaultValue)'),
          if (isDeprecated) refer('$deprecated'),
          refer('$JsonKey(name: $className.${name}Key)')
        ])
        ..name = name
        ..type = refer(type),
    );
  }
}
