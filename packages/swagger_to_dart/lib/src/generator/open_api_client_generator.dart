import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/builder/retrofit_class_code_builder.dart';
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/src/utils/renaming.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

String commentLine(String line) {
  return '''/// ${line.split('\n').join('\n/// ')}''';
}

// TODO(delete):!
class OpenApiClientGenerator {
  const OpenApiClientGenerator(this.context);

  final CodeGenerationContext context;

  Class generate({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
  }) {
    return RetrofitClassCodeBuilder.instance.class_(
      name: clientName,
      filename: '',
      parameters: [],
    );
  }

  Library generateQueriesClass(
    List<OpenApiPathMethodParameter> queries,
    String name,
  ) {
    final generator = OpenApiModelGenerator(context);

    final className = '${name}Queries';

    final params = queries.map((e) {
      return MapEntry(e.name, e.schema);
    }).toList();

    return generator.run(
      MapEntry(
        className,
        OpenApiSchemas(
          type: 'object',
          properties: Map.fromIterable(
            params,
            key: (e) => e.key,
            value: (e) => e.value,
          ),
        ),
      ),
    );
  }

  String? _getDartType(OpenApiSchema? model, String className) {
    if (model == null) return null;

    return switch (model) {
      OpenApiSchemaType value => context.dartTypeConverter.dartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
            OpenApiSchemaAnyOf value =>
              context.dartTypeConverter.convertOpenApiAnyOfToDartType(
                value,
                context.dartTypeConverter,
              ),
            _ => null,
          },
          items: value.items,
          title: value.title,
        ),
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value =>
        context.dartTypeConverter.convertOpenApiAnyOfToDartType(
          value,
          context.dartTypeConverter,
        ),
      OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
          '${className}Union${value.title ?? 'Model'}',
          value,
          context.dartTypeConverter,
        ),
    };
  }
}
