import 'package:swagger_to_dart/src/utils/naming_utils.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiToDartTypeConverter {
  const OpenApiToDartTypeConverter({
    required this.isFlutterProject,
  });

  final bool isFlutterProject;

  String dartType({
    required OpenApiSchemaVarType? type,
    required String? format,
    required String? genericType,
    required OpenApiSchema? items,
    required String? title,
    String? parentTitle,
  }) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return switch (format) {
          'date-time' => 'DateTime',
          'date' => 'DateTime',
          'color-hex' => 'Color',
          'binary' => 'MultipartFile',
          'uuid' => 'String',
          'time' || 'duration' => isFlutterProject ? 'TimeOfDay' : 'String',
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
        final className = switch (items) {
          OpenApiSchemaType value => dartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value =>
                  NamingUtils.instance.renameRefClass(value),
                OpenApiSchemaAnyOf value =>
                  convertOpenApiAnyOfToDartType(value, this),
                _ => null,
              },
              items: value.items,
              title: value.title,
              parentTitle: parentTitle),
          OpenApiSchemaRef value => NamingUtils.instance.renameRefClass(value),
          OpenApiSchemaAnyOf value =>
            convertOpenApiAnyOfToDartType(value, this),
          OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
              '${parentTitle}${title}UnionResponse',
              value,
              this,
            ),
          null => null,
        };

        if (className == null) return 'List<dynamic>';

        return 'List<$className>';
      case OpenApiSchemaVarType.object:
        if (genericType == null) return 'Map<String, dynamic>';

        return 'Map<String, $genericType>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }

  String convertOpenApiAnyOfToDartType(
    OpenApiSchemaAnyOf value,
    OpenApiToDartTypeConverter typeConverter,
  ) {
    // Check for common pattern of nullable types (anyOf with one type and null)
    if (value.anyOf?.length == 2) {
      // Check if one of the types is null
      final hasNullType = value.anyOf!.any(
        (schema) =>
            schema is OpenApiSchemaType &&
            schema.type == OpenApiSchemaVarType.null_,
      );

      if (hasNullType) {
        // Get the non-null type
        final nonNullSchema = value.anyOf!.firstWhere(
          (schema) => !(schema is OpenApiSchemaType &&
              schema.type == OpenApiSchemaVarType.null_),
        );

        // Return the non-null type with a ? to indicate it's nullable
        return switch (nonNullSchema) {
          OpenApiSchemaType value => typeConverter.dartType(
                type: value.type,
                format: value.format,
                genericType: switch (value.items) {
                  OpenApiSchemaRef value =>
                    NamingUtils.instance.renameRefClass(value),
                  OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                      value,
                      typeConverter,
                    ),
                  _ => null,
                },
                items: value.items,
                title: value.title,
              ) +
              '?',
          OpenApiSchemaRef value =>
            NamingUtils.instance.renameRefClass(value) + '?',
          OpenApiSchemaAnyOf value =>
            convertOpenApiAnyOfToDartType(value, typeConverter) + '?',
          OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
                value.title ?? 'UnionModel',
                value,
                typeConverter,
              ) +
              '?',
        };
      }
    }

    // If it's not a simple nullable type, then it's a union of multiple types
    // In Dart, we'll use dynamic since it can hold any of these types
    return 'dynamic';
  }
}
