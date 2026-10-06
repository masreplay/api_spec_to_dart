import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy extends GeneratorStrategy {
  const PropertyGeneratorStrategy(super.context);

  /// [inlineModels] is false for the properties of a query parameters class:
  /// parameters keep `Map<String, dynamic>` for inline objects.
  Parameter build(
    MapEntry<String, OpenApiSchema> property, {
    required String className,
    bool required = true,
    Map<String, String> overrideTypes = const {},
    String? name,
    bool inlineModels = true,
  }) {
    final fieldName = name ?? Renaming.instance.renameProperty(property.key);
    final typeConverter = OpenApiSchemaDartTypeConverter(
      context,
      inlineModels: inlineModels,
    );

    // The unique field name, not the key: a key without ASCII words
    // (`العنوان`, `😀`) would name a nested model after its parent.
    final contextName = '${context.unprefixed(className)}_$fieldName';
    final defaultValue = typeConverter.getDefaultValue(
      property.value,
      contextName: contextName,
      inConstContext: true,
    );

    final dartType = typeConverter.get(
      property.value,
      className: className,
      contextName: contextName,
      overrideTypes: overrideTypes,
    );

    final isRequired = defaultValue == null && required;

    final hasDefaultValue = defaultValue != null;

    // Optional without a default: the field must accept null.
    final adjustedDartType = !hasDefaultValue && !isRequired
        ? typeConverter.nullable(dartType)
        : dartType;

    return Parameter(
      (b) => b
        ..docs.add('/// $fieldName')
        ..named = true
        ..required = isRequired
        ..annotations.addAll([
          if (hasDefaultValue) refer('Default($defaultValue)'),
          refer(
            'JsonKey(name: $className.${RegularModelGeneratorStrategy.getKey(fieldName)})',
          ),
        ])
        ..name = fieldName
        ..type = refer(adjustedDartType),
    );
  }
}
