import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context);

  final GenerationContext context;

  Parameter build(
    MapEntry<String, OpenApiSchema> property, {
    required String className,
    bool required = true,
  }) {
    final name = Renaming.instance.renameProperty(property.key);

    final defaultValue = switch (property.value.default_) {
      String value => '"${value}"',
      _ => property.value.default_,
    };

    final dartType = getOpenApiSchemaDartType(
      property.value,
      className: className,
    );

    return Parameter(
      (b) => b
        ..docs.add('/// $name')
        ..required = defaultValue == null && required
        ..named = true
        ..annotations.addAll([
          if (defaultValue != null) refer('Default($defaultValue)'),
          refer('JsonKey(name: $className.${name}Key)'),
        ])
        ..name = name
        ..type = refer(dartType),
    );
  }

  Parameter buildUnionValue(
    OpenApiSchemaRef schema, {
    required String className,
  }) {
    final dartType = getOpenApiSchemaDartType(schema, className: className);

    const String keyName = 'value';

    return Parameter(
      (b) => b
        ..named = true
        ..name = keyName
        ..type = refer(dartType),
    );
  }

  String getOpenApiSchemaDartType(
    OpenApiSchema schema, {
    required String className,
  }) {
    switch (schema) {
      case OpenApiSchemaType schema:
        return getOpenApiSchemaTypeDartType(schema, className: className);
      case OpenApiSchemaRef schema:
        return getOpenApiSchemaRefDartType(schema);
      case OpenApiSchemaAnyOf schema:
        return getOpenApiSchemaAnyOfDartType(schema, className: className);
      case OpenApiSchemaOneOf schema:
        return getOpenApiSchemaOneOfDartType(schema, className: className);
    }
  }

  String getOpenApiSchemaRefDartType(OpenApiSchemaRef schema) {
    return Renaming.instance.renameRefClass(schema);
  }

  String getOpenApiSchemaAnyOfDartType(
    OpenApiSchemaAnyOf schema, {
    required String className,
  }) {
    final anyOf = schema.anyOf ?? [];
    final nonNullSchemas = anyOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();
    final isNullable = nonNullSchemas.length != anyOf.length;

    if (nonNullSchemas.length == 1) {
      final dartType = getOpenApiSchemaDartType(
        nonNullSchemas.first,
        className: className,
      );
      return dartType + (isNullable ? '?' : '');
    }

    if (nonNullSchemas.every((e) => e is OpenApiSchemaRef)) {
      return createUnionClass(className: className, value: nonNullSchemas);
    }

    return 'dynamic';
  }

  String getOpenApiSchemaOneOfDartType(
    OpenApiSchemaOneOf schema, {
    required String className,
  }) {
    final oneOf = schema.oneOf ?? [];
    final nonNullSchemas = oneOf
        .where((e) =>
            !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_))
        .toList();

    if (nonNullSchemas.length == 1) {
      return getOpenApiSchemaDartType(
        nonNullSchemas.first,
        className: className,
      );
    }

    return 'dynamic';
  }

  String getOpenApiSchemaTypeDartType(
    OpenApiSchemaType schema, {
    required String className,
  }) {
    switch (schema.type) {
      case OpenApiSchemaVarType.string:
        switch (schema.format) {
          case 'date-time':
            return 'DateTime';
          case 'date':
            return 'DateTime';
          case 'color-hex':
            return 'Color';
          case 'binary':
            return 'MultipartFile';
          case 'uuid':
            return 'String';
          case 'time' || 'duration':
            return context.isFlutterProject ? 'TimeOfDay' : 'String';
          case 'uri':
            return 'Uri';
          default:
            return 'String';
        }
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        final dartType = schema.items == null
            ? null
            : getOpenApiSchemaDartType(schema.items!, className: className);

        if (dartType == null) return 'List<dynamic>';

        return 'List<$dartType>';
      case OpenApiSchemaVarType.object:
        if (schema.items == null) return 'Map<String, dynamic>';

        return 'Map<String, ${className}>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }

  String createUnionClass({
    required String className,
    required List<OpenApiSchema> value,
  }) {
    final unionClassName = value
        .whereType<OpenApiSchemaRef>()
        .map((ref) => getOpenApiSchemaDartType(ref, className: className))
        .map(Renaming.instance.renameClass)
        .sorted((a, b) => a.compareTo(b))
        .join();

    final unionModelStrategy = UnionModelStrategy(context);

    final unionModel = MapEntry<String, OpenApiSchemas>(
      unionClassName,
      OpenApiSchemas(
        type: className,
        properties: {
          for (final value in value.whereType<OpenApiSchemaRef>())
            value.ref!: OpenApiSchemaRef(ref: value.ref!),
        },
      ),
    );

    context.addModel(unionModelStrategy.build(unionModel));

    return unionClassName;
  }
}
