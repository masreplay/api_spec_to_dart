import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/model/union_model_strategy.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context);

  final GenerationContext context;

  Parameter build(
    MapEntry<String, OpenApiSchema> property, {
    required String modelClassName,
    bool required = true,
  }) {
    final name = Renaming.instance.renameProperty(property.key);

    final defaultValue = switch (property.value.default_) {
      String value => '"${value}"',
      _ => property.value.default_,
    };

    final dartType = getOpenApiSchemaDartType(modelClassName, property.value);

    return Parameter(
      (b) => b
        ..docs.add('/// $name')
        ..required = defaultValue == null && required
        ..named = true
        ..annotations.addAll([
          if (defaultValue != null) refer('Default($defaultValue)'),
          refer('JsonKey(name: $modelClassName.${name}Key)'),
        ])
        ..name = name
        ..type = refer(dartType),
    );
  }

  Parameter buildUnionValue(
    OpenApiSchemaRef schema, {
    required String modelClassName,
  }) {
    final dartType = getOpenApiSchemaDartType(modelClassName, schema);

    const String keyName = 'value';

    return Parameter(
      (b) => b
        ..named = true
        ..name = keyName
        ..type = refer(dartType),
    );
  }

  String getOpenApiSchemaDartType(
    String modelClassName,
    OpenApiSchema schema,
  ) {
    return switch (schema) {
      OpenApiSchemaType value =>
        getOpenApiSchemaTypeDartType(modelClassName, value),
      OpenApiSchemaRef value => getOpenApiSchemaRefDartType(value),
      OpenApiSchemaAnyOf value =>
        getOpenApiSchemaAnyOfDartType(modelClassName, value),
      OpenApiSchemaOneOf value =>
        getOpenApiSchemaOneOfDartType(modelClassName, value),
    };
  }

  String getOpenApiSchemaRefDartType(OpenApiSchemaRef schema) {
    return Renaming.instance.renameRefClass(schema);
  }

  String getOpenApiSchemaAnyOfDartType(
    String modelClassName,
    OpenApiSchemaAnyOf schema,
  ) {
    final anyOf = schema.anyOf ?? [];
    final nonNullSchemas = anyOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();
    final isNullable = nonNullSchemas.length != anyOf.length;

    if (nonNullSchemas.length == 1) {
      final dartType = getOpenApiSchemaDartType(
        modelClassName,
        nonNullSchemas.first,
      );
      return dartType + (isNullable ? '?' : '');
    }

    if (nonNullSchemas.every((e) => e is OpenApiSchemaRef)) {
      return createUnionClass(modelClassName, nonNullSchemas);
    }

    return 'dynamic';
  }

  String getOpenApiSchemaOneOfDartType(
    String modelClassName,
    OpenApiSchemaOneOf schema,
  ) {
    final oneOf = schema.oneOf ?? [];
    final nonNullSchemas = oneOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();

    if (nonNullSchemas.length == 1) {
      return getOpenApiSchemaDartType(
        modelClassName,
        nonNullSchemas.first,
      );
    }

    return 'dynamic';
  }

  String getOpenApiSchemaTypeDartType(
    String modelClassName,
    OpenApiSchemaType schema,
  ) {
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
            : getOpenApiSchemaDartType(modelClassName, schema.items!);

        if (className == null) return 'List<dynamic>';

        return 'List<$className>';
      case OpenApiSchemaVarType.object:
        if (schema.items == null) return 'Map<String, dynamic>';

        return 'Map<String, ${modelClassName}>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }

  String createUnionClass(String modelClassName, List<OpenApiSchema> value) {
    final className = value
        .whereType<OpenApiSchemaRef>()
        .map((ref) => getOpenApiSchemaDartType(modelClassName, ref))
        .map(Renaming.instance.renameClass)
        .sorted((a, b) => a.compareTo(b))
        .join();

    final unionModelStrategy = UnionModelStrategy(context);

    final unionModel = MapEntry<String, OpenApiSchemas>(
      className,
      OpenApiSchemas(
        type: modelClassName,
        properties: {
          for (final value in value.whereType<OpenApiSchemaRef>())
            value.ref!: OpenApiSchemaRef(ref: value.ref!),
        },
      ),
    );

    context.addModel(unionModelStrategy.generate(unionModel));

    return className;
  }
}
