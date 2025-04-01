import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'class_content_generator.dart';

/// Type definitions to improve code readability
typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;
typedef OneOfModel = ({String type, String key, String unionName});

/// Interface for the model generation strategy
abstract class ModelGenerationStrategy {
  ({String filename, String content}) generate(OpenApiModel model);
}

/// Interface for property generator strategies
abstract class PropertyGeneratorStrategy {
  String generateField({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  });
}

/// Class responsible for generating fields with proper annotations
class FieldGenerator {
  FieldGenerator(this.config);

  final SwaggerToDartConfig config;

  String generateField({
    required String className,
    required String propertyName,
    required Object? freezedDefaultValue,
    required String jsonName,
    required String propertyType,
    String? title,
    String? description,
  }) {
    final buffer = StringBuffer();

    _writeFieldDocumentation(buffer, title, description);
    _writeDefaultAnnotation(buffer, freezedDefaultValue);
    _writeDeprecationAnnotation(buffer, description, propertyName);
    _writeJsonKeyAnnotation(buffer, className, propertyName);
    _writeFieldDeclaration(
      buffer,
      propertyName,
      propertyType,
      freezedDefaultValue,
    );

    return buffer.toString();
  }

  void _writeFieldDocumentation(
    StringBuffer buffer,
    String? title,
    String? description,
  ) {
    if (title != null || description != null) {
      final commentParts = [
        if (title != null) title,
        if (description != null) description,
      ];
      buffer.writeln('/// ${commentParts.join(', ')}');
    }
  }

  void _writeDefaultAnnotation(
    StringBuffer buffer,
    Object? freezedDefaultValue,
  ) {
    if (freezedDefaultValue != null) {
      buffer.writeln('@Default(${freezedDefaultValue})');
    }
  }

  void _writeDeprecationAnnotation(
    StringBuffer buffer,
    String? description,
    String propertyName,
  ) {
    if (description == 'deprecated') {
      buffer.writeln('@deprecated');
    } else if (description != null &&
        description.startsWith('deprecated(') &&
        description.endsWith(')')) {
      buffer.writeln(
        '@Deprecated("${description.substring(11, description.length - 1)}")',
      );
    }
  }

  void _writeJsonKeyAnnotation(
    StringBuffer buffer,
    String className,
    String propertyName,
  ) {
    buffer.writeln('@JsonKey(name: $className.${propertyName}Key)');
  }

  void _writeFieldDeclaration(
    StringBuffer buffer,
    String propertyName,
    String propertyType,
    Object? freezedDefaultValue,
  ) {
    if (freezedDefaultValue == null) {
      buffer.write('required ');
    }
    buffer.write('$propertyType $propertyName,');
  }
}

/// Strategy for generating standard type fields
class TypePropertyGenerator implements PropertyGeneratorStrategy {
  TypePropertyGenerator(this.config) : fieldGenerator = FieldGenerator(config);
  final SwaggerToDartConfig config;
  final FieldGenerator fieldGenerator;

  @override
  String generateField({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  }) {
    if (schema is! OpenApiSchemaType) {
      throw ArgumentError(
        'Expected OpenApiSchemaType but got ${schema.runtimeType}',
      );
    }

    final dartType = config.dartType(
      format: schema.format,
      type: schema.type,
      genericType: _getDependentType(schema.items),
      items: schema.items,
      title: schema.title,
    );

    return fieldGenerator.generateField(
      className: className,
      freezedDefaultValue: _getTypedDefaultValue(schema.default_, dartType),
      jsonName: key,
      propertyName: propertyName,
      propertyType: dartType,
      title: key,
      description: schema.description,
    );
  }

  String? _getDependentType(OpenApiSchema? items) {
    return switch (items) {
      OpenApiSchemaRef value => config.renameRefClass(value),
      OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(value, config),
      _ => null,
    };
  }

  Object? _getTypedDefaultValue(Object? defaultValue, String dartType) {
    if (defaultValue == null) return null;

    if (dartType == 'String') {
      return '\'${defaultValue}\'';
    }

    return defaultValue;
  }
}

/// Strategy for generating reference fields
class RefPropertyGenerator implements PropertyGeneratorStrategy {
  RefPropertyGenerator(this.config) : fieldGenerator = FieldGenerator(config);
  final SwaggerToDartConfig config;
  final FieldGenerator fieldGenerator;

  @override
  String generateField({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  }) {
    if (schema is! OpenApiSchemaRef) {
      throw ArgumentError(
        'Expected OpenApiSchemaRef but got ${schema.runtimeType}',
      );
    }

    final refClassName = config.renameRefClass(schema);

    return fieldGenerator.generateField(
      className: className,
      freezedDefaultValue: _getDefaultValueCode(schema.default_, refClassName),
      jsonName: key,
      propertyName: propertyName,
      propertyType: refClassName,
      title: null,
      description: schema.description,
    );
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${config.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${config.renameProperty("$defaultValue")}';
    }
    return null;
  }
}

/// Strategy for generating anyOf fields
class AnyOfPropertyGenerator implements PropertyGeneratorStrategy {
  AnyOfPropertyGenerator(this.config) : fieldGenerator = FieldGenerator(config);
  final SwaggerToDartConfig config;
  final FieldGenerator fieldGenerator;

  @override
  String generateField({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  }) {
    if (schema is! OpenApiSchemaAnyOf) {
      throw ArgumentError(
        'Expected OpenApiSchemaAnyOf but got ${schema.runtimeType}',
      );
    }

    final dartType = _resolveDartType(schema, className, propertyName);

    return fieldGenerator.generateField(
      className: className,
      freezedDefaultValue: _getDefaultValueCode(schema.default_, dartType),
      title: schema.title,
      description: schema.description,
      jsonName: key,
      propertyName: propertyName,
      propertyType: dartType,
    );
  }

  String _resolveDartType(
    OpenApiSchemaAnyOf value,
    String className,
    String propertyName,
  ) {
    final isNullable = value.anyOf!.any(
      (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
    );

    final nonNullSchemas =
        value.anyOf!
            .where(
              (e) =>
                  !(e is OpenApiSchemaType &&
                      e.type == OpenApiSchemaVarType.null_),
            )
            .toList();

    if (nonNullSchemas.length == 1) {
      final baseType = _getSchemaType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final unionName = '${className}${propertyName.pascalCase}Union';
    final types =
        nonNullSchemas.map((schema) => _getSchemaType(schema)).toSet().toList();

    return isNullable ? '$unionName?' : unionName;
  }

  String _getSchemaType(OpenApiSchema schema) {
    return switch (schema) {
      OpenApiSchemaType value => config.dartType(
        type: value.type,
        format: value.format,
        genericType: switch (value.items) {
          OpenApiSchemaRef value => config.renameRefClass(value),
          OpenApiSchemaAnyOf value => _resolveDartType(value, '', ''),
          _ => null,
        },
        items: value.items,
        title: value.title,
      ),
      OpenApiSchemaRef value => config.renameRefClass(value),
      OpenApiSchemaAnyOf value => _resolveDartType(value, '', ''),
      _ =>
        throw ArgumentError('Unsupported schema type: ${schema.runtimeType}'),
    };
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${config.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${config.renameProperty("$defaultValue")}';
    }
    return null;
  }
}

/// Strategy for generating enum models
class EnumModelStrategy implements ModelGenerationStrategy {
  EnumModelStrategy(this.config)
    : contentGenerator = ClassContentGenerator(config);
  final SwaggerToDartConfig config;
  final ClassContentGenerator contentGenerator;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.renameFile(model.key);
    final className = config.renameClass(model.key);
    final enum_ = model.value.enum_ ?? [];

    if (enum_.isEmpty) {
      throw ArgumentError('Cannot generate enum for model without enum values');
    }

    final isNumber = model.value.type == 'integer';
    final type = isNumber ? 'int' : 'String';
    final enumValues = _generateEnumValues(
      enum_,
      model.value.xEnumVarnames,
      isNumber,
    );

    final content = contentGenerator.generateEnumClassContent(
      className: className,
      filename: filename,
      enumValues: enumValues,
      type: type,
      model: model,
    );

    return (filename: filename, content: content);
  }

  String _generateEnumValues(
    List<Object> enumValues,
    List<String>? varNames,
    bool isNumber,
  ) {
    final buffer = StringBuffer();

    for (int i = 0; i < enumValues.length; i++) {
      final value = enumValues[i];
      final description = varNames?[i];
      final name =
          description == null
              ? 'value$value'
              : config.renameProperty(description);
      final enumName = config.renameProperty(value.toString());

      if (isNumber) {
        buffer.writeln('  ${name}($value),');
      } else {
        if (int.tryParse(enumName) != null) {
          buffer.writeln('  value${enumName}(\'$value\'),');
        } else {
          buffer.writeln('  ${enumName}(\'$value\'),');
        }
      }
    }

    return buffer.toString();
  }
}

/// Strategy for generating union models
class UnionModelStrategy implements ModelGenerationStrategy {
  UnionModelStrategy(this.config)
    : propertyGenerators = {
        OpenApiSchemaType: TypePropertyGenerator(config),
        OpenApiSchemaRef: RefPropertyGenerator(config),
        OpenApiSchemaAnyOf: AnyOfPropertyGenerator(config),
      },
      contentGenerator = ClassContentGenerator(config);
  final SwaggerToDartConfig config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;
  final ClassContentGenerator contentGenerator;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.renameFile(model.key);
    final className = config.renameClass(model.key);
    final properties = model.value.properties ?? {};

    if (!properties.entries.any((entry) => entry.value is OpenApiSchemaOneOf)) {
      throw ArgumentError('Union model must have at least one oneOf property');
    }

    final unionProps = <OneOfModel>[];
    final normalProps = StringBuffer();

    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = config.renameProperty(key);

      if (schema is OpenApiSchemaOneOf) {
        for (final mapping in schema.discriminator.mapping.entries) {
          unionProps.add((
            type: config.renameClass(mapping.value.split('/').last),
            key: key,
            unionName: mapping.key,
          ));
        }
      } else {
        final generator = propertyGenerators[schema.runtimeType];
        if (generator != null) {
          final fieldCode = generator.generateField(
            className: className,
            propertyName: propertyName,
            key: key,
            schema: schema,
          );
          normalProps.writeln(fieldCode);
        }
      }
    }

    final content = contentGenerator.generateUnionClassContent(
      className: className,
      filename: filename,
      unionProps: unionProps,
      normalProps: normalProps.toString(),
      model: model,
    );

    return (filename: filename, content: content);
  }
}

/// Strategy for generating regular class models
class RegularModelStrategy implements ModelGenerationStrategy {
  RegularModelStrategy(this.config)
    : propertyGenerators = {
        OpenApiSchemaType: TypePropertyGenerator(config),
        OpenApiSchemaRef: RefPropertyGenerator(config),
        OpenApiSchemaAnyOf: AnyOfPropertyGenerator(config),
      },
      contentGenerator = ClassContentGenerator(config);
  final SwaggerToDartConfig config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;
  final ClassContentGenerator contentGenerator;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.renameFile(model.key);
    final className = config.renameClass(model.key);
    final properties = model.value.properties ?? {};

    final fields = StringBuffer();
    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = config.renameProperty(key);

      final generator = propertyGenerators[schema.runtimeType];
      if (generator != null) {
        final fieldCode = generator.generateField(
          className: className,
          propertyName: propertyName,
          key: key,
          schema: schema,
        );
        fields.writeln(fieldCode);
      }
    }

    final bodyText = fields.isEmpty ? '' : '{\n${fields.toString()}  }';
    final content = contentGenerator.generateRegularClassContent(
      className: className,
      filename: filename,
      bodyText: bodyText,
      properties: properties,
      model: model,
    );

    return (filename: filename, content: content);
  }
}

/// Main OpenApiModelGenerator class using strategy pattern
class OpenApiModelGenerator {
  OpenApiModelGenerator({required this.config})
    : strategies = {
        ModelType.enum_: EnumModelStrategy(config),
        ModelType.union: UnionModelStrategy(config),
        ModelType.regular: RegularModelStrategy(config),
      };
  final SwaggerToDartConfig config;
  final Map<ModelType, ModelGenerationStrategy> strategies;

  ({String filename, String content}) run(OpenApiModel model) {
    final modelType = _determineModelType(model);
    final strategy = strategies[modelType];

    if (strategy == null) {
      throw StateError('No strategy available for model type: $modelType');
    }

    return strategy.generate(model);
  }

  ModelType _determineModelType(OpenApiModel model) {
    final properties = model.value.properties ?? {};
    final enum_ = model.value.enum_ ?? [];

    if (enum_.isNotEmpty) {
      return ModelType.enum_;
    }

    if (properties.entries.any((entry) => entry.value is OpenApiSchemaOneOf)) {
      return ModelType.union;
    }

    return ModelType.regular;
  }
}

/// Enum to identify different model types
enum ModelType { enum_, union, regular }

extension StringExtension on String {
  String get pascalCase {
    if (!contains('_')) return this;
    return split('_')
        .map(
          (word) =>
              word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : '',
        )
        .join('');
  }
}
