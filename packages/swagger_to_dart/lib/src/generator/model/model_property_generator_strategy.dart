import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/model/model.dart';
import 'package:swagger_to_dart/src/schema/openapi/extension.dart';
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
      final dartType = _getOpenApiSchemaDartType(nonNullSchemas.first);
      return dartType + (isNullable ? '?' : '');
    }

    if (nonNullSchemas.every((e) => e is OpenApiSchemaRef)) {
      return createUnionClass(nonNullSchemas);
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

  String createUnionClass(List<OpenApiSchema> value) {
    final schemas = value.whereType<OpenApiSchemaRef>();
    final className = schemas
        .map(_getOpenApiSchemaDartType)
        .map(Renaming.instance.renameClass)
        .sorted((a, b) => a.compareTo(b))
        .join();

    final filename = Renaming.instance.renameFile(className);

    final unions = [
      for (final property in schemas)
        if (property.ref != null)
          Constructor(
            (b) => b
              ..annotations.addAll([refer('generationJsonSerializable')])
              ..constant = true
              ..factory = true
              ..name =
                  Recase.instance.toCamelCase(property.ref!.split('/').last)
              ..redirect = refer(
                Recase.instance.toPascalCase(property.ref!.split('/').last),
              )
              ..optionalParameters.addAll([
                for (final entry in context.openApi
                    .getOpenApiSchemasByRef(property.ref!)!
                    .properties!
                    .entries)
                  generate(entry),
              ]),
          )
    ];

    final library = Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.part('${filename}.freezed.dart'),
          Directive.part('${filename}.g.dart'),
        ])
        ..docs.addAll([
          '/// ${model.key}',
          ...JsonFactory.instance
              .encode(model.value.toJson())
              .split('\n')
              .map((e) => '/// $e'),
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                '// ${className}',
              ])
              ..annotations.addAll([refer('freezed')])
              ..abstract = true
              ..name = className
              ..fields.addAll([
                for (final property in unions.expand((e) => e.optionalParameters))
                  Field((b) => b
                    ..static = true
                    ..modifier = FieldModifier.constant
                    ..name = '${property.name}Key'
                    ..type = refer('String')
                    ..assignment = Code('"${property.name}"'),
                  ),
              ])
              ..mixins.addAll([refer('_\$${className}')])
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..constant = true
                    ..name = '_',
                ),
                ...unions,
                Constructor(
                  (b) => b
                    ..factory = true
                    ..name = 'fromJson'
                    ..requiredParameters.addAll([
                      Parameter((b) => b
                        ..name = 'json'
                        ..type = refer('Map<String, dynamic>')),
                    ])
                    ..lambda = true
                    ..body = Code('_\$${className}FromJson(json)'),
                )
              ]),
          )
        ]),
    );

    context.addModel(library);

    return className;
  }
}
