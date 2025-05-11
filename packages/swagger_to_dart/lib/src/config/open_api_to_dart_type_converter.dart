import 'package:swagger_to_dart/swagger_to_dart.dart';

import 'code_generation_context.dart';

class OpenApiToDartTypeConverter {
  const OpenApiToDartTypeConverter(this.context);

  final CodeGenerationContext context;

  String getDartType({
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
        final className = switch (items) {
          OpenApiSchemaType value => getDartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value =>
                  Renaming.instance.renameRefClass(value),
                OpenApiSchemaAnyOf value =>
                  convertOpenApiAnyOfToDartType(value),
                _ => null,
              },
              items: value.items,
              title: value.title,
              parentTitle: parentTitle),
          OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
          OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(value),
          OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
              key: '${parentTitle}${title}UnionResponse',
              model: value,
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

  String convertOpenApiAnyOfToDartType(OpenApiSchemaAnyOf value) {
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
          OpenApiSchemaType value => getDartType(
                type: value.type,
                format: value.format,
                genericType: switch (value.items) {
                  OpenApiSchemaRef value =>
                    Renaming.instance.renameRefClass(value),
                  OpenApiSchemaAnyOf value =>
                    convertOpenApiAnyOfToDartType(value),
                  _ => null,
                },
                items: value.items,
                title: value.title,
              ) +
              '?',
          OpenApiSchemaRef value =>
            Renaming.instance.renameRefClass(value) + '?',
          OpenApiSchemaAnyOf value =>
            convertOpenApiAnyOfToDartType(value) + '?',
          OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
                key: value.title ?? 'UnionModel',
                model: value,
              ) +
              '?',
        };
      }
    }

    // If it's not a simple nullable type, then it's a union of multiple types
    // In Dart, we'll use dynamic since it can hold any of these types
    return 'dynamic';
  }

  String handleOpenApiOneOfToDartType({
    required String key,
    required OpenApiSchemaOneOf model,
  }) {
    final className = Renaming.instance.renameClass(key);

    generateUnionFile(
      key: key,
      className: className,
      model: model,
      context: context,
    );

    return className;
  }

  String generateUnionFile({
    required String key,
    required String className,
    required OpenApiSchemaOneOf model,
    required CodeGenerationContext context,
  }) {
    final unionTypes = <(String, String)>[];
    model.discriminator.mapping.entries.map((e) {
      unionTypes.add(
        (e.key, Renaming.instance.renameClass(e.value.split('/').last)),
      );
    }).toList();

    return className;
  }

  String? getModelDartType(OpenApiSchema? model, String className) {
    if (model == null) return null;

    return switch (model) {
      OpenApiSchemaType value => context.dartTypeConverter.getDartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
            OpenApiSchemaAnyOf value =>
              context.dartTypeConverter.convertOpenApiAnyOfToDartType(value),
            _ => null,
          },
          items: value.items,
          title: value.title,
        ),
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value =>
        context.dartTypeConverter.convertOpenApiAnyOfToDartType(value),
      OpenApiSchemaOneOf value =>
        context.dartTypeConverter.handleOpenApiOneOfToDartType(
          key: '${className}Union${value.title ?? 'Model'}',
          model: value,
        ),
    };
  }
}
