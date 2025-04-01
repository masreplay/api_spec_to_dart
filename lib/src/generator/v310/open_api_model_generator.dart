import 'package:swagger_to_dart/swagger_to_dart.dart';

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

    // Add comment if title or description is provided
    if (title != null || description != null) {
      final commentParts = [
        if (title != null) title,
        if (description != null) description,
      ];
      buffer.writeln('/// ${commentParts.join(', ')}');
    }

    // Add @Default annotation if default value is provided
    if (freezedDefaultValue != null) {
      buffer.writeln('@Default(${freezedDefaultValue})');
    }

    _addDeprecationAnnotation(buffer, description, propertyName);

    buffer.writeln('@JsonKey(name: $className.${propertyName}Key)');

    // Add field declaration
    if (freezedDefaultValue == null) {
      buffer.write('required ');
    }
    buffer.write('$propertyType $propertyName,');

    return buffer.toString();
  }

  void _addDeprecationAnnotation(
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
    // Check if this is a nullable type (common pattern with anyOf)
    final isNullable = value.anyOf!.any(
      (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
    );

    // Get all non-null types
    final nonNullSchemas =
        value.anyOf!
            .where(
              (e) =>
                  !(e is OpenApiSchemaType &&
                      e.type == OpenApiSchemaVarType.null_),
            )
            .toList();

    // If only one non-null type, it's likely a nullable version of that type
    if (nonNullSchemas.length == 1) {
      final baseType = _getSchemaType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    // For multiple types, create a union type
    final unionName = '${className}${propertyName.pascalCase}Union';
    final types =
        nonNullSchemas.map((schema) => _getSchemaType(schema)).toSet().toList();

    // Generate the union type class
    final unionClass = _generateUnionClass(unionName, types);

    // Add the union class to the generated content
    // Note: You'll need to modify the generator to handle this additional class
    return isNullable ? '$unionName?' : unionName;
  }

  String _generateUnionClass(String unionName, List<String> types) {
    final buffer = StringBuffer();

    buffer.writeln('@freezed');
    buffer.writeln('class $unionName with _\$$unionName {');
    buffer.writeln('  const factory $unionName({');

    for (final type in types) {
      buffer.writeln('    required $type value,');
    }

    buffer.writeln('  }) = _\$$unionName;');
    buffer.writeln('}');

    return buffer.toString();
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
  EnumModelStrategy(this.config);
  final SwaggerToDartConfig config;

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

    final content = '''
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
${config.importModelsCode}

part '${filename}.g.dart';

/// ${model.key}
${model.value.description == null ? '' : commentLine(model.value.description!)}
@JsonEnum(valueField: 'value', alwaysCreate: true)
enum $className {
$enumValues

;
const $className(this.value);

factory $className.fromJson($type value) {
  return values.firstWhere(
    (e) => e.value == value,
    orElse: () => values.first,
  );
}
final $type value;

$type toJson() => _\$${className}EnumMap[this]!;
}
''';

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
      };
  final SwaggerToDartConfig config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.renameFile(model.key);
    final className = config.renameClass(model.key);
    final properties = model.value.properties ?? {};

    // Validate that this model has at least one oneOf property
    if (!properties.entries.any((entry) => entry.value is OpenApiSchemaOneOf)) {
      throw ArgumentError('Union model must have at least one oneOf property');
    }

    final unionProps = <OneOfModel>[];
    final normalProps = StringBuffer();

    // Process each property
    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = config.renameProperty(key);

      if (schema is OpenApiSchemaOneOf) {
        // Handle oneOf discriminator for union types
        for (final mapping in schema.discriminator.mapping.entries) {
          unionProps.add((
            type: config.renameClass(mapping.value.split('/').last),
            key: key,
            unionName: mapping.key,
          ));
        }
      } else {
        // Handle regular properties
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

    final content = _generateUnionClassContent(
      className: className,
      filename: filename,
      unionProps: unionProps,
      normalProps: normalProps.toString(),
      model: model,
    );

    return (filename: filename, content: content);
  }

  String _generateUnionClassContent({
    required String className,
    required String filename,
    required List<OneOfModel> unionProps,
    required String normalProps,
    required OpenApiModel model,
  }) {
    return '''
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
sealed class ${className} with _\$${className} {
  ${unionProps.any((e) => e.unionName == 'fallback') ? '' : 'const factory ${className}.fallback() = ${className}Fallback;'}
  
  ${unionProps.map((prop) => '@FreezedUnionValue("${prop.unionName}") const factory ${className}.${Recase.instance.toCamelCase(prop.unionName)}({required ${prop.type} ${prop.key}, $normalProps}) = ${config.renameClass('${className}_${prop.unionName}')};').join('\n\n')}
  
  factory ${className}.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}
''';
  }
}

/// Strategy for generating regular class models
class RegularModelStrategy implements ModelGenerationStrategy {
  RegularModelStrategy(this.config)
    : propertyGenerators = {
        OpenApiSchemaType: TypePropertyGenerator(config),
        OpenApiSchemaRef: RefPropertyGenerator(config),
        OpenApiSchemaAnyOf: AnyOfPropertyGenerator(config),
      };
  final SwaggerToDartConfig config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.renameFile(model.key);
    final className = config.renameClass(model.key);
    final properties = model.value.properties ?? {};

    String fields = '';

    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = config.renameProperty(key);

      final generator = propertyGenerators[schema.runtimeType];
      if (generator != null) {
        fields += generator.generateField(
          className: className,
          propertyName: propertyName,
          key: key,
          schema: schema,
        );
      }
    }

    final bodyText = fields.isEmpty ? '' : '{\n$fields  }';
    final content = _generateClassContent(
      className: className,
      filename: filename,
      bodyText: bodyText,
      properties: properties,
      model: model,
    );

    return (filename: filename, content: content);
  }

  String _generateClassContent({
    required String className,
    required String filename,
    required String bodyText,
    required Map<String, OpenApiSchema> properties,
    required OpenApiModel model,
  }) {
    return '''
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
abstract class ${className} with _\$${className} {
  const ${className}._();

  ${properties.entries.map((e) => 'static const String ${(config.renameProperty(e.key))}Key = \'${e.key}\';').join('\n')}

  @JsonSerializable(converters: convertors)
  const factory ${className}($bodyText) = _${className};

  factory ${className}.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}
''';
  }
}

/// Main OpenApiModelGenerator class using strategy pattern
class OpenApiModelGenerator {
  /// Constructor that initializes the different generation strategies
  OpenApiModelGenerator({required this.config})
    : strategies = {
        ModelType.enum_: EnumModelStrategy(config),
        ModelType.union: UnionModelStrategy(config),
        ModelType.regular: RegularModelStrategy(config),
      };
  final SwaggerToDartConfig config;
  final Map<ModelType, ModelGenerationStrategy> strategies;

  /// Main entry point that runs the appropriate generator based on model type
  ({String filename, String content}) run(OpenApiModel model) {
    final modelType = _determineModelType(model);
    final strategy = strategies[modelType];

    if (strategy == null) {
      throw StateError('No strategy available for model type: $modelType');
    }

    return strategy.generate(model);
  }

  /// Determines the type of model we're dealing with
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
