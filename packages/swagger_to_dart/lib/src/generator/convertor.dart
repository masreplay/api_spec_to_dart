import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

String convertOpenApiAnyOfToDartType(
  OpenApiSchemaAnyOf value,
  DartTypeConverter typeConverter,
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

String handleOpenApiOneOfToDartType(
  String key,
  OpenApiSchemaOneOf model,
  DartTypeConverter typeConverter,
) {
  final className = NamingUtils.instance.renameClass(key);

  generateUnionFile(
    key: key,
    className: className,
    model: model,
    typeConverter: typeConverter,
  );

  return className;
}

generateUnionFile({
  required String key,
  required String className,
  required OpenApiSchemaOneOf model,
  required SwaggerToDartConfig config,
}) {
  final filename = NamingUtils.instance.renameFile(key);

  final unionTypes = <(String, String)>[];
  model.discriminator.mapping.entries.map((e) {
    unionTypes.add(
        (e.key, NamingUtils.instance.renameClass(e.value.split('/').last)));
  }).toList();

  // TODO: generate union file

  if (!Directory(pathConfig.modelsOutputDirectory).existsSync()) {
    Directory(pathConfig.modelsOutputDirectory).createSync(recursive: true);
  }

  final filepath = path.join(
    pathConfig.modelsOutputDirectory,
    '${NamingUtils.instance.renameFile(className)}.dart',
  );

  final file = File(filepath);

  file.writeAsString(content);

  print('Generated: $filepath');
  globalUnionClasses.add(className);

  return className;
}
