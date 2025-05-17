import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/model/model.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context, this.model);

  final MapEntry<String, OpenApiSchemas> model;
  
  final GenerationContext context;

  Parameter generate(MapEntry<String, OpenApiSchema> property) {
    final name = Renaming.instance.renameProperty(property.key);

    final defaultValue = switch (property.value.default_) {
      String value => '"${value}"',
      _ => property.value.default_,
    };

    final dartType = _getOpenApiSchemaDartType(property.value);

    return Parameter(
      (b) => b
        ..docs.add('/// $name')
        ..required = defaultValue == null
        ..named = true
        ..annotations.addAll([
          if (defaultValue != null) refer('Default($defaultValue)'),
          refer('JsonKey(name: ${model.className}.${name}Key)'),
        ])
        ..name = name
        ..type = refer(dartType),
    );
  }

  String _getOpenApiSchemaDartType(OpenApiSchema schema) {
    return switch (schema) {
      OpenApiSchemaType value => _getOpenApiSchemaTypeDartType(value),
      OpenApiSchemaRef value => _getOpenApiSchemaRefDartType(value),
      OpenApiSchemaAnyOf value => _getOpenApiSchemaAnyOfDartType(value),
      OpenApiSchemaOneOf value => _getOpenApiSchemaOneOfDartType(value),
    };
  }

  String _getOpenApiSchemaRefDartType(OpenApiSchemaRef schema) {
    return Renaming.instance.renameRefClass(schema);
  }

  String _getOpenApiSchemaAnyOfDartType(OpenApiSchemaAnyOf schema) {
    final anyOf = schema.anyOf ?? [];
    final nonNullSchemas = anyOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();
    final isNullable = nonNullSchemas.length != anyOf.length;

    if (nonNullSchemas.length == 1) {
      final baseType = _getOpenApiSchemaDartType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final allRefs = nonNullSchemas.isNotEmpty &&
        nonNullSchemas.every((e) => e is OpenApiSchemaRef);

    if (allRefs) {
      final baseTypes = nonNullSchemas
          .map(_getOpenApiSchemaDartType)
          .map(Renaming.instance.renameClass)
          .toList();
      final unionClassName = baseTypes.join('Or');

      return isNullable ? '$unionClassName?' : unionClassName;
    }

    return 'dynamic';
  }

  String _getOpenApiSchemaOneOfDartType(OpenApiSchemaOneOf schema) {
    final oneOf = schema.oneOf ?? [];
    final nonNullSchemas = oneOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();

    if (nonNullSchemas.length == 1) {
      return _getOpenApiSchemaDartType(nonNullSchemas.first);
    }

    return 'dynamic';
  }

  String _getOpenApiSchemaTypeDartType(OpenApiSchemaType schema) {
    switch (schema.type) {
      case OpenApiSchemaVarType.string:
        return switch (schema.format) {
          'date-time' => 'DateTime',
          'date' => 'DateTime',
          'color-hex' => 'Color',
          'binary' => 'MultipartFile',
          'uuid' => 'String',
          'time' ||
          'duration' =>
            context.isFlutterProject ? 'TimeOfDay' : 'String',
          'uri' => 'Uri',
          _ => 'String',
        };
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        final className = schema.items == null
            ? null
            : _getOpenApiSchemaDartType(schema.items!);

        if (className == null) return 'List<dynamic>';

        return 'List<$className>';
      case OpenApiSchemaVarType.object:
        if (schema.items == null) return 'Map<String, dynamic>';

        return 'Map<String, ${model.className}>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }
}
