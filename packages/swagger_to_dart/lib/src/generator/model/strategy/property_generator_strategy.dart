import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/generator/generator_strategy.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy extends GeneratorStrategy {
  const PropertyGeneratorStrategy(super.context);

  Parameter build(
    MapEntry<String, OpenApiSchema> property, {
    required String className,
    String? overrideType,
    bool required = true,
  }) {
    final name = Renaming.instance.renameProperty(property.key);

    final defaultValue = context.typeConverter.getDefaultValue(property.value);

    final dartType = overrideType ??
        context.typeConverter.get(
          property.value,
          className: className,
        );

    return Parameter(
      (b) => b
        ..docs.add('/// $name')
        ..required = defaultValue == null && required
        ..named = true
        ..annotations.addAll([
          if (defaultValue != null) refer('$Default($defaultValue)'),
          refer('JsonKey(name: $className.${name}Key)'),
        ])
        ..name = name
        ..type = refer(dartType),
    );
  }
}
