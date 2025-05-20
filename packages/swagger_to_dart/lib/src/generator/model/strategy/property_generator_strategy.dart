import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

    final dartType = OpenApiSchemaDartTypeConverter(context).get(
      property.value,
      className: className,
    );

    return Parameter(
      (b) => b
        ..docs.add('/// $name')
        ..required = defaultValue == null && required
        ..named = true
        ..annotations.addAll([
          if (defaultValue != null) refer('$Default($defaultValue)'),
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
    final dartType = OpenApiSchemaDartTypeConverter(context).get(
      schema,
      className: className,
    );

    const String keyName = 'value';

    return Parameter(
      (b) => b
        ..named = true
        ..name = keyName
        ..type = refer(dartType),
    );
  }

  String createUnionClass(
    List<OpenApiSchema> schemas, {
    required String className,
  }) {
    final unionClassName = schemas
        .whereType<OpenApiSchemaRef>()
        .map(OpenApiSchemaDartTypeConverter(context).getRef)
        .map(Renaming.instance.renameClass)
        .sorted((a, b) => a.compareTo(b))
        .join();

    final unionModelStrategy = UnionModelStrategy(context);

    final unionModel = MapEntry<String, OpenApiSchemas>(
      unionClassName,
      OpenApiSchemas(
        type: className,
        properties: {
          for (final value in schemas.whereType<OpenApiSchemaRef>())
            value.ref!: OpenApiSchemaRef(ref: value.ref!),
        },
      ),
    );

    context.addModel(unionModelStrategy.build(unionModel));

    return unionClassName;
  }
}
