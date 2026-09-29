import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy extends GeneratorStrategy {
  const PropertyGeneratorStrategy(super.context);

  Parameter build(
    MapEntry<String, OpenApiSchema> property, {
    required String className,
    bool required = true,
    Map<String, String> overrideTypes = const {},
  }) {
    final name = Renaming.instance.renameProperty(property.key);

    final contextName = '${className}_${property.key}';
    final defaultValue = context.extension.typeConverter.getDefaultValue(
      property.value,
      contextName: contextName,
      inConstContext: true,
    );

    final dartType = context.extension.typeConverter.get(
      property.value,
      className: className,
      contextName: contextName,
      overrideTypes: overrideTypes,
    );

    final isRequired = defaultValue == null && required;

    final hasDefaultValue = defaultValue != null;

    // Optional without a default: the field must accept null.
    final adjustedDartType = !hasDefaultValue && !isRequired
        ? context.extension.typeConverter.nullable(dartType)
        : dartType;

    return Parameter(
      (b) => b
        ..docs.add('/// $name')
        ..named = true
        ..required = isRequired
        ..annotations.addAll([
          if (hasDefaultValue) refer('Default($defaultValue)'),
          refer(
            'JsonKey(name: $className.${RegularModelGeneratorStrategy.getKey(name)})',
          ),
        ])
        ..name = name
        ..type = refer(adjustedDartType),
    );
  }
}
