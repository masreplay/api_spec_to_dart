import 'package:code_builder/code_builder.dart';
import 'package:meta/meta.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context);

  final GenerationContext context;

  Parameter generate({
    required String className,
    required MapEntry<String, OpenApiSchema> property,
  }) {
    final name = Renaming.instance.renameProperty(property.key);
    final defaultValue = switch (property.value.default_) {
      String value => '"${value}"',
      _ => property.value.default_,
    };

    final type = _resolveDartType(property.value);

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

  String _resolveDartType(
    OpenApiSchema schema, {
    String? parentTitle,
  }) {
    return switch (schema) {
      OpenApiSchemaType value =>
        OpenApiToDartTypeConverter(context).getDartType(
          type: value.type,
          format: value.format,
          genericType: value.items == null
              ? null
              : _resolveDartType(value.items!, parentTitle: parentTitle),
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
    final anyOf = value.anyOf ?? [];
    final nonNullSchemas = anyOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();
    final isNullable = nonNullSchemas.length != anyOf.length;

    if (nonNullSchemas.length == 1) {
      final baseType = _resolveDartType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final allRefs = nonNullSchemas.isNotEmpty &&
        nonNullSchemas.every((e) => e is OpenApiSchemaRef);

    if (allRefs) {
      final baseTypes = nonNullSchemas
          .map(_resolveDartType)
          .map(Renaming.instance.renameClass)
          .toList();
      final unionClassName = baseTypes.join('Or');
      return isNullable ? '$unionClassName?' : unionClassName;
    }

    return 'dynamic';
  }
}

class OpenApiToDartTypeConverter {
  const OpenApiToDartTypeConverter(this.context);

  final GenerationContext context;

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
    required GenerationContext context,
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
      OpenApiSchemaType value => getDartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
            OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(value),
            _ => null,
          },
          items: value.items,
          title: value.title,
        ),
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(value),
      OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
          key: '${className}Union${value.title ?? 'Model'}',
          model: value,
        ),
    };
  }
}
