import 'package:swagger_to_dart/swagger_to_dart.dart';

String convertOpenApiAnyOfToDartType(
  OpenApiSchemaAnyOf value,
  SwaggerToDartConfig config,
) {
  String className = '';
  bool isNullable = false;

  for (final schema in value.anyOf!) {
    className += schema.map(
      type: (value) {
        if (value.type == OpenApiSchemaVarType.null_) {
          isNullable = true;
          return '';
        }

        return config.dartType(
          type: value.type,
          format: value.format,
          genericType: value.items?.mapOrNull(
            ref: (value) => config.renameRefClass(value),
            anyOf: (value) => convertOpenApiAnyOfToDartType(value, config),
          ),
        );
      },
      ref: (value) => config.renameRefClass(value),
      anyOf: (value) => convertOpenApiAnyOfToDartType(value, config),
      oneOf: (value) => '',
    );
  }

  return isNullable ? '$className?' : 'dynamic';
}
