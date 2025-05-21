import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context);

  final GenerationContext context;

  Parameter build(
    MapEntry<String, OpenApiSchema> property, {
    required String className,
    bool required = true,
  }) {
    final name = Renaming.instance.renameProperty(property.key);

    final dartTypeConverter = OpenApiSchemaDartTypeConverter(context);

    final defaultValue = dartTypeConverter.getDefaultValue(property.value);

    final dartType = dartTypeConverter.get(
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
