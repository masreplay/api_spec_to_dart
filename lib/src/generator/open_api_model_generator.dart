import 'package:swagger_to_dart/swagger_to_dart.dart';

import 'model_type_determiner.dart';

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
  AnyOfPropertyGenerator(this.config)
    : fieldGenerator = FieldGenerator(config),
      unionTypeGenerator = UnionTypeGenerator(config);
  final SwaggerToDartConfig config;
  final FieldGenerator fieldGenerator;
  final UnionTypeGenerator unionTypeGenerator;

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
      final baseType = unionTypeGenerator.resolveDartType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final types =
        nonNullSchemas
            .map((schema) => unionTypeGenerator.resolveDartType(schema))
            .toList();
    final unionClassName = unionTypeGenerator.generateUnionClassName(types);

    // Generate the union type class
    final unionFilename =
        '${className.toLowerCase()}_${propertyName.toLowerCase()}_union';
    final unionContent = unionTypeGenerator.generateUnionClassContent(
      className: unionClassName,
      filename: unionFilename,
      unionTypes: types.map((type) => (type: type, value: 'value')).toList(),
    );

    // Add the union class to the generated content
    // Note: You'll need to modify the generator to handle this additional class
    return isNullable ? '$unionClassName?' : unionClassName;
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
    : contentGenerator = FreezedClassContentGenerator(config);
  final SwaggerToDartConfig config;
  final FreezedClassContentGenerator contentGenerator;

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
        OpenApiSchemaOneOf: AnyOfPropertyGenerator(config),
      },
      contentGenerator = FreezedClassContentGenerator(config);
  final SwaggerToDartConfig config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;
  final FreezedClassContentGenerator contentGenerator;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.renameFile(model.key);
    final className = config.renameClass(model.key);
    final schema = model.value;

    // Convert to check for anyOf type in the schema
    final schemaJson = schema.toJson();

    // Check if this is an anyOf schema by looking in the JSON
    if (schemaJson.containsKey('anyOf')) {
      // Convert to OpenApiSchema to properly handle anyOf
      final openApiSchema = OpenApiSchema.fromJson(schemaJson);

      if (openApiSchema is OpenApiSchemaAnyOf) {
        final nonNullSchemas =
            openApiSchema.anyOf!
                .where(
                  (e) =>
                      !(e is OpenApiSchemaType &&
                          e.type == OpenApiSchemaVarType.null_),
                )
                .toList();

        if (nonNullSchemas.length == 1) {
          // If there's only one non-null type, treat it as a regular model
          final regularModel = OpenApiSchemas(
            type: 'object',
            properties: {'value': nonNullSchemas.first},
          );
          return RegularModelStrategy(
            config,
          ).generate(MapEntry(model.key, regularModel));
        }

        // Generate union type class
        final types =
            nonNullSchemas.map((schema) {
              return switch (schema) {
                OpenApiSchemaType value => config.dartType(
                  type: value.type,
                  format: value.format,
                  genericType: switch (value.items) {
                    OpenApiSchemaRef value => config.renameRefClass(value),
                    OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                      value,
                      config,
                    ),
                    _ => null,
                  },
                  items: value.items,
                  title: value.title,
                ),
                OpenApiSchemaRef value => config.renameRefClass(value),
                OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                  value,
                  config,
                ),
                _ =>
                  throw ArgumentError(
                    'Unsupported schema type: ${schema.runtimeType}',
                  ),
              };
            }).toList();

        final unionClassName = types.map((type) => type.pascalCase).join('Or');
        final unionContent = '''
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
${config.importModelsCode}

part '${filename}.freezed.dart';
part '${filename}.g.dart';

/// ${model.key}
${model.value.description == null ? '' : commentLine(model.value.description!)}
@freezed
class $unionClassName with _\$$unionClassName {
  ${types.map((type) => 'const factory $unionClassName.${type.toLowerCase()}(@JsonKey(name: \'value\') $type value) = _\$${unionClassName}${type.pascalCase};').join('\n\n')}

  factory $unionClassName.fromJson(Map<String, dynamic> json) => _\$${unionClassName}FromJson(json);
}
''';

        return (filename: filename, content: unionContent);
      }
    }

    // Handle regular model with union properties
    final properties = schema.properties ?? {};
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
      } else if (schema is OpenApiSchemaAnyOf) {
        final generator = propertyGenerators[OpenApiSchemaAnyOf];
        if (generator != null) {
          final fieldCode = generator.generateField(
            className: className,
            propertyName: propertyName,
            key: key,
            schema: schema,
          );
          normalProps.writeln(fieldCode);
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
      contentGenerator = FreezedClassContentGenerator(config);
  final SwaggerToDartConfig config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;
  final FreezedClassContentGenerator contentGenerator;

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
      },

      typeDeterminer = ModelTypeDeterminer();
  final SwaggerToDartConfig config;
  final Map<ModelType, ModelGenerationStrategy> strategies;
  final ModelTypeDeterminer typeDeterminer;

  ({String filename, String content}) run(OpenApiModel model) {
    final modelType = typeDeterminer.determine(model);
    final strategy =
        strategies.entries
            .firstWhere((entry) => entry.key.name == modelType.name)
            .value;

    return strategy.generate(model);
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
