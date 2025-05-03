import 'package:code_builder/src/specs/method.dart';
import 'package:collection/collection.dart';
import 'package:swagger_to_dart/src/utils/naming_utils.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

import 'model_type_determiner.dart';

typedef OpenApiModel = MapEntry<String, OpenApiSchemas>;

class OpenApiModelGenerator {
  OpenApiModelGenerator({required this.config});

  final SwaggerToDartConfig config;

  ({String filename, String content}) run(OpenApiModel model) {
    final schema = model.value;

    var type = ModelTypeEnum.regular;

    if (schema.enum_ != null && schema.enum_!.isNotEmpty) {
      type = ModelTypeEnum.enum_;
    }

    final properties = schema.properties ?? {};
    if (properties.entries.any(
      (entry) =>
          checkAnyOfType(entry.value) || entry.value is OpenApiSchemaOneOf,
    )) {
      type = ModelTypeEnum.union;
    }

    if (schema is OpenApiSchemaAnyOf || schema is OpenApiSchemaOneOf) {
      type = ModelTypeEnum.union;
    }

    return strategy.generate(model);
  }
}

class TypePropertyGenerator {
  TypePropertyGenerator(this.config);
  final SwaggerToDartConfig config;

  Parameter generateField({
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

    final dartType = config.dartTypeConverter.dartType(
      format: schema.format,
      type: schema.type,
      genericType: _getDependentType(schema.items),
      items: schema.items,
      title: schema.title,
      parentTitle: className,
    );

    return FreezedClassCodeBuilder.instance.parameter_(
      name: propertyName,
      type: dartType,
      isDeprecated: false,
      defaultValue: _getTypedDefaultValue(schema, dartType),
    );
  }

  String? _getDependentType(OpenApiSchema? items) {
    return switch (items) {
      OpenApiSchemaRef value => NamingUtils.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
          value,
          config.dartTypeConverter,
        ),
      _ => null,
    };
  }

  Object? _getTypedDefaultValue(
    OpenApiSchemaType schema,
    String dartType,
  ) {
    final defaultValue = schema.default_;
    if (defaultValue == null) {
      return null;
    }

    switch (schema.type) {
      case OpenApiSchemaVarType.string:
        return '\'${defaultValue}\'';
      case OpenApiSchemaVarType.boolean:
        return defaultValue.toString();
      case OpenApiSchemaVarType.integer:
      case OpenApiSchemaVarType.number:
        return defaultValue.toString();
      case OpenApiSchemaVarType.array:
        if (defaultValue is List) {
          final formattedItems = defaultValue.map((item) {
            if (item is String) {
              return '\'${item}\'';
            } else {
              return item.toString();
            }
          }).join(', ');
          return '[$formattedItems]';
        }
        return null;
      case OpenApiSchemaVarType.object:
        if (defaultValue is Map) {
          return 'const ${defaultValue}';
        }
        return null;
      case OpenApiSchemaVarType.null_:
        return 'null';
      default:
        if (dartType == 'DateTime' && defaultValue is String) {
          return 'DateTime.parse(\'${defaultValue}\')';
        } else if (dartType == 'Uri' && defaultValue is String) {
          return 'Uri.parse(\'${defaultValue}\')';
        }
        return defaultValue.toString();
    }
  }
}

class RefPropertyGenerator {
  RefPropertyGenerator(this.config);
  final SwaggerToDartConfig config;

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

    final refClassName = NamingUtils.instance.renameRefClass(schema);

    return fieldGenerator.generateField(
      className: className,
      freezedDefaultValue: _getDefaultValueCode(schema.default_, refClassName),
      jsonName: key,
      propertyName: propertyName,
      parameterType: refClassName,
      title: null,
      description: schema.description,
    );
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${NamingUtils.instance.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${NamingUtils.instance.renameProperty(defaultValue)}';
    }
    return null;
  }
}

class AnyOfPropertyGenerator {
  AnyOfPropertyGenerator(this.config)
      : unionTypeGenerator = UnionTypeGenerator(config);
  final SwaggerToDartConfig config;
  final UnionTypeGenerator unionTypeGenerator;

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
      parameterType: dartType,
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

    final nonNullSchemas = value.anyOf!
        .where(
          (e) =>
              !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_),
        )
        .toList();

    if (nonNullSchemas.length == 1) {
      final baseType = unionTypeGenerator.resolveDartType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final types = nonNullSchemas
        .map((schema) => unionTypeGenerator.resolveDartType(schema))
        .toList();
    final unionClassName = unionTypeGenerator.generateUnionClassName(types);

    return isNullable ? '$unionClassName?' : unionClassName;
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${NamingUtils.instance.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${NamingUtils.instance.renameProperty(defaultValue)}';
    }
    return null;
  }
}

class EnumModelStrategy {
  EnumModelStrategy(this.config);
  final SwaggerToDartConfig config;

  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = NamingUtils.instance.renameFile(model.key);
    final className = NamingUtils.instance.renameClass(model.key);
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

    final content = generateEnumClassContent(
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
      final name = description == null
          ? 'value$value'
          : NamingUtils.instance.renameProperty(description);
      final enumName = NamingUtils.instance.renameProperty(value.toString());

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

class UnionModelStrategy {
  UnionModelStrategy(this.config)
      : propertyGenerators = {
          OpenApiSchemaType: TypePropertyGenerator(config),
          OpenApiSchemaRef: RefPropertyGenerator(config),
          OpenApiSchemaAnyOf: AnyOfPropertyGenerator(config),
          OpenApiSchemaOneOf: AnyOfPropertyGenerator(config),
        };
  final SwaggerToDartConfig config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;

  Object generate(OpenApiModel model) {
    final filename = NamingUtils.instance.renameFile(model.key);
    final className = NamingUtils.instance.renameClass(model.key);
    final schema = model.value;

    final schemaJson = schema.toJson();

    if (schemaJson.containsKey('anyOf')) {
      final openApiSchema = OpenApiSchema.fromJson(schemaJson);

      if (openApiSchema is OpenApiSchemaAnyOf) {
        final nonNullSchemas = openApiSchema.anyOf!
            .where(
              (e) => !(e is OpenApiSchemaType &&
                  e.type == OpenApiSchemaVarType.null_),
            )
            .toList();

        if (nonNullSchemas.length == 1) {
          final regularModel = OpenApiSchemas(
            type: 'object',
            properties: {'value': nonNullSchemas.first},
          );
          return RegularModelStrategy(
            config,
          ).generate(MapEntry(model.key, regularModel));
        }

        final types = nonNullSchemas.map((schema) {
          return switch (schema) {
            OpenApiSchemaType value => config.dartTypeConverter.dartType(
                type: value.type,
                format: value.format,
                genericType: switch (value.items) {
                  OpenApiSchemaRef value => NamingUtils.instance.renameRefClass(
                      value,
                    ),
                  OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                      value,
                      config.dartTypeConverter,
                    ),
                  _ => null,
                },
                items: value.items,
                title: value.title,
                parentTitle: schema.title,
              ),
            OpenApiSchemaRef value => NamingUtils.instance.renameRefClass(
                value,
              ),
            OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                value,
                config.dartTypeConverter,
              ),
            _ => throw ArgumentError(
                'Unsupported schema type: ${schema.runtimeType}',
              ),
          };
        }).toList();

        final unionClassName = types
            .map((type) => NamingUtils.instance.renameClass(type))
            .join('Or');

        final unionContent = FreezedClassCodeBuilder.instance.unionClass_(
          className: unionClassName,
          filename: filename,
          unions: types,
        );

        return unionContent;
      }
    }

    final properties = schema.properties ?? {};
    final unionProps = <OneOfModel>[];
    final normalProps = StringBuffer();

    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = NamingUtils.instance.renameProperty(key);

      switch (schema) {
        case OpenApiSchemaType():
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
          break;
        case OpenApiSchemaRef():
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
          break;
        case OpenApiSchemaAnyOf():
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
          break;
        case OpenApiSchemaOneOf():
          for (final mapping in schema.discriminator.mapping.entries) {
            unionProps.add(
              (
                type: NamingUtils.instance
                    .renameClass(mapping.value.split('/').last),
                key: key,
                unionName: propertyName,
                model: schema,
              ),
            );
          }
          break;
      }
    }

    final propertyGroupList = unionProps.groupListsBy(
      (e) => e.key,
    );

    final content = contentGenerator.class_(
      className: className,
      filename: filename,
      parameters: [],
    );

    return (filename: filename, content: content);
  }
}

class RegularModelStrategy {
  RegularModelStrategy(this.config)
      : propertyGenerators = {
          OpenApiSchemaType: TypePropertyGenerator(config),
          OpenApiSchemaRef: RefPropertyGenerator(config),
          OpenApiSchemaAnyOf: AnyOfPropertyGenerator(config),
        };
  final SwaggerToDartConfig config;

  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;

  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = NamingUtils.instance.renameFile(model.key);
    final className = NamingUtils.instance.renameClass(model.key);
    final properties = model.value.properties ?? {};

    final fields = StringBuffer();
    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = NamingUtils.instance.renameProperty(key);

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

    final content = FreezedClassCodeBuilder.instance.class_(
      className: className,
      filename: filename,
      parameters: [],
    );

    return (filename: filename, content: formatCodeBuilder(content));
  }
}
