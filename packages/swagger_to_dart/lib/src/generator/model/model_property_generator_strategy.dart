import 'package:code_builder/code_builder.dart';
import 'package:meta/meta.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context);

  final GenerationContext context;

  Parameter generate({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  }) {
    final name = propertyName;
    final defaultValue = schema.default_;

    final type = resolveDartType(schema);

    return Parameter(
      (b) => b
        ..docs.add('/// $name')
        ..required = defaultValue == null
        ..named = true
        ..annotations.addAll([
          if (defaultValue != null) refer('Default($defaultValue)'),
          refer('JsonKey(name: $className.${name}Key)'),
        ])
        ..name = name
        ..type = refer(type),
    );
  }

  @protected
  String resolveDartType(
    OpenApiSchema schema, {
    String? parentTitle,
  }) {
    return switch (schema) {
      OpenApiSchemaType value => context.dartTypeConverter.getDartType(
          type: value.type,
          format: value.format,
          genericType: value.items == null
              ? null
              : resolveDartType(value.items!, parentTitle: parentTitle),
          items: value.items,
          title: value.title,
          parentTitle: parentTitle ?? value.title,
        ),
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value => _resolveAnyOfType(value),
      OpenApiSchemaOneOf() =>
        throw ArgumentError('Unsupported schema type: ${schema.runtimeType}'),
    };
  }

  @protected
  String _resolveAnyOfType(OpenApiSchemaAnyOf value) {
    final schemas = value.anyOf ?? [];
    final nonNullSchemas = schemas
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();
    final isNullable = nonNullSchemas.length != schemas.length;

    if (nonNullSchemas.length == 1) {
      final baseType = resolveDartType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final baseTypes = nonNullSchemas
        .map(resolveDartType)
        .map(Renaming.instance.renameClass)
        .toList();

    final unionClassName = baseTypes.join('Or');
    return isNullable ? '$unionClassName?' : unionClassName;
  }
}
