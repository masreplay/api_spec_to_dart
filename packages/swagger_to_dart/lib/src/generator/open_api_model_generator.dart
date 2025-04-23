import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
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
/// Class responsible for generating fields with proper annotations
class FieldGenerator {
  FieldGenerator(this.config);

  final ConfigComponents config;

  String generateField({
    required String className,
    required String propertyName,
    required Object? freezedDefaultValue,
    required String jsonName,
    required String propertyType,
    String? title,
    String? description,
  }) {
    // Use Code Builder to generate the field
    final field = Field((b) {
      b.name = propertyName;
      b.type = refer(propertyType);
      b.modifier = FieldModifier.final$;

      // Add annotations
      b.annotations.addAll([
        if (freezedDefaultValue != null)
          CodeExpression(Code('Default(${freezedDefaultValue})')),
        CodeExpression(Code('JsonKey(name: "$jsonName")')),
        if (description == 'deprecated') CodeExpression(Code('deprecated')),
        if (description != null &&
            description.startsWith('deprecated(') &&
            description.endsWith(')'))
          CodeExpression(Code(
              'Deprecated("${description.substring(11, description.length - 1)}")')),
      ]);

      // Add documentation
      if (title != null || description != null) {
        final commentParts = [
          if (title != null) title,
          if (description != null) description,
        ];
        b.docs.add('/// ${commentParts.join(', ')}');
      }
    });

    // Return the generated field as a string
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${field.accept(emitter)}');
  }
}

/// Strategy for generating standard type fields
class TypePropertyGenerator implements PropertyGeneratorStrategy {
  TypePropertyGenerator(this.config) : fieldGenerator = FieldGenerator(config);

  final ConfigComponents config;
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

    final dartType = config.dartTypeConverter.dartType(
      format: schema.format,
      type: schema.type,
      genericType: _getDependentType(schema.items),
      items: schema.items,
      title: schema.title,
      parentTitle: className,
    );

    // Use Code Builder to generate the field
    final field = Field((b) {
      b.name = propertyName;
      b.type = refer(dartType);
      b.modifier = FieldModifier.final$;

      // Add annotations
      b.annotations.addAll([
        CodeExpression(Code('JsonKey(name: "$key")')),
        if (schema.description == 'deprecated')
          CodeExpression(Code('deprecated')),
        if (schema.description != null &&
            schema.description!.startsWith('deprecated(') &&
            schema.description!.endsWith(')'))
          CodeExpression(Code(
              'Deprecated("${schema.description!.substring(11, schema.description!.length - 1)}")')),
      ]);
    });

    // Return the generated field as a string
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${field.accept(emitter)}');
  }

  String? _getDependentType(OpenApiSchema? items) {
    return switch (items) {
      OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
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
          // Format array items according to their type
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
          // Basic map serialization
          return 'const ${defaultValue}';
        }
        return null;
      case OpenApiSchemaVarType.null_:
        return 'null';
      default:
        // For unknown types, try to use the dartType for guidance
        if (dartType == 'DateTime' && defaultValue is String) {
          return 'DateTime.parse(\'${defaultValue}\')';
        } else if (dartType == 'Uri' && defaultValue is String) {
          return 'Uri.parse(\'${defaultValue}\')';
        }
        return defaultValue.toString();
    }
  }
}

/// Strategy for generating reference fields
class RefPropertyGenerator implements PropertyGeneratorStrategy {
  RefPropertyGenerator(this.config) : fieldGenerator = FieldGenerator(config);

  final ConfigComponents config;
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

    final refClassName = config.namingUtils.renameRefClass(schema);

    // Use Code Builder to generate the field
    final field = Field((b) {
      b.name = propertyName;
      b.type = refer(refClassName);
      b.modifier = FieldModifier.final$;

      // Add annotations
      b.annotations.addAll([
        CodeExpression(Code('JsonKey(name: "$key")')),
        if (schema.description == 'deprecated')
          CodeExpression(Code('deprecated')),
        if (schema.description != null &&
            schema.description!.startsWith('deprecated(') &&
            schema.description!.endsWith(')'))
          CodeExpression(Code(
              'Deprecated("${schema.description!.substring(11, schema.description!.length - 1)}")')),
      ]);
    });

    // Return the generated field as a string
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${field.accept(emitter)}');
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${config.namingUtils.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${config.namingUtils.renameProperty(defaultValue)}';
    }
    return null;
  }
}

/// Strategy for generating anyOf fields
class AnyOfPropertyGenerator implements PropertyGeneratorStrategy {
  AnyOfPropertyGenerator(this.config)
      : fieldGenerator = FieldGenerator(config),
        unionTypeGenerator = UnionTypeGenerator(config);

  final ConfigComponents config;
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

    // Use Code Builder to generate the field
    final field = Field((b) {
      b.name = propertyName;
      b.type = refer(dartType);
      b.modifier = FieldModifier.final$;

      // Add annotations
      b.annotations.addAll([
        CodeExpression(Code('JsonKey(name: "$key")')),
        if (schema.description == 'deprecated')
          CodeExpression(Code('deprecated')),
        if (schema.description != null &&
            schema.description!.startsWith('deprecated(') &&
            schema.description!.endsWith(')'))
          CodeExpression(Code(
              'Deprecated("${schema.description!.substring(11, schema.description!.length - 1)}")')),
      ]);
    });

    // Return the generated field as a string
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${field.accept(emitter)}');
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

    // Add the union class to the generated content
    return isNullable ? '$unionClassName?' : unionClassName;
  }
}

/// Strategy for generating enum models
class EnumModelStrategy implements ModelGenerationStrategy {
  EnumModelStrategy(this.config)
      : contentGenerator = FreezedClassContentGenerator(config);
  final ConfigComponents config;
  final FreezedClassContentGenerator contentGenerator;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.namingUtils.renameFile(model.key);
    final className = config.namingUtils.renameClass(model.key);
    final enum_ = model.value.enum_ ?? [];

    if (enum_.isEmpty) {
      throw ArgumentError('Cannot generate enum for model without enum values');
    }

    final isNumber = model.value.type == 'integer';
    final type = isNumber ? 'int' : 'String';

    // Use code_builder to generate enum values
    final enumValues = <Field>[];
    for (int i = 0; i < enum_.length; i++) {
      final value = enum_[i];
      final description = model.value.xEnumVarnames?[i];
      final name = description == null
          ? 'value$value'
          : config.namingUtils.renameProperty(description);

      final field = Field((b) {
        b.name = name;
        b.modifier = FieldModifier.constant;
        b.assignment = Code(isNumber ? '$value' : "'$value'");
      });
      enumValues.add(field);
    }

    // Generate the enum class content
    final content = contentGenerator.generateEnumClassContent(
      className: className,
      filename: filename,
      enumValues: enumValues
          .map((f) => f.accept(DartEmitter.scoped()).toString())
          .join('\n'),
      type: type,
      model: model,
    );

    return (filename: filename, content: content);
  }
}

/// Strategy for generating union models
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

  final ConfigComponents config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;
  final FreezedClassContentGenerator contentGenerator;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.namingUtils.renameFile(model.key);
    final className = config.namingUtils.renameClass(model.key);
    final schema = model.value;

    // Check if this is an `anyOf` schema
    final schemaJson = schema.toJson();
    if (schemaJson.containsKey('anyOf')) {
      final openApiSchema = OpenApiSchema.fromJson(schemaJson);

      if (openApiSchema is OpenApiSchemaAnyOf) {
        final nonNullSchemas = openApiSchema.anyOf!
            .where((e) => !(e is OpenApiSchemaType &&
                e.type == OpenApiSchemaVarType.null_))
            .toList();

        if (nonNullSchemas.length == 1) {
          // If there's only one non-null type, treat it as a regular model
          final regularModel = OpenApiSchemas(
            type: 'object',
            properties: {'value': nonNullSchemas.first},
          );
          return RegularModelStrategy(config).generate(
            MapEntry(model.key, regularModel),
          );
        }

        // Generate union type class
        final types = nonNullSchemas.map((schema) {
          return switch (schema) {
            OpenApiSchemaType value => config.dartTypeConverter.dartType(
                type: value.type,
                format: value.format,
                items: value.items,
                title: value.title,
                genericType: switch (value.items) {
                  OpenApiSchemaRef value =>
                    config.namingUtils.renameRefClass(value),
                  OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                      value, config.dartTypeConverter),
                  _ => null,
                },
              ),
            OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
            OpenApiSchemaAnyOf value =>
              convertOpenApiAnyOfToDartType(value, config.dartTypeConverter),
            _ => throw ArgumentError(
                'Unsupported schema type: ${schema.runtimeType}',
              ),
          };
        }).toList();

        final unionClassName = types.map((type) => type.pascalCase).join('Or');

        // Use `code_builder` to generate the union class
        final library = LibraryBuilder();

        // Add imports
        library.directives.addAll([
          Directive.import(
              'package:freezed_annotation/freezed_annotation.dart'),
          Directive.part('${filename}.freezed.dart'),
          Directive.part('${filename}.g.dart'),
        ]);

        // Define the union class
        final unionClass = ClassBuilder()
          ..name = unionClassName
          ..annotations.add(CodeExpression(Code('freezed')))
          ..constructors.addAll(types.map((type) {
            return Constructor((b) {
              b.factory = true;
              b.redirect = refer('_\$${unionClassName}${type.pascalCase}');
              b.requiredParameters.add(Parameter((p) => p
                ..name = 'value'
                ..type = refer(type)));
              b.annotations.add(CodeExpression(Code('JsonKey(name: "value")')));
            });
          }))
          ..methods.add(Method((b) {
            b.name = 'fromJson';
            b.returns = refer(unionClassName);
            b.static = true;
            b.body = Code('return _\$${unionClassName}FromJson(json);');
            b.requiredParameters.add(Parameter((p) => p
              ..name = 'json'
              ..type = refer('Map<String, dynamic>')));
          }));

        library.body.add(unionClass.build());

        // Generate the Dart code
        final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
        final generatedCode = library.build().accept(emitter).toString();

        return (filename: filename, content: generatedCode);
      }
    }

    // Handle regular model with union properties
    final properties = schema.properties ?? {};
    final unionProps = <OneOfModel>[];
    final fields = <Field>[];

    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = config.namingUtils.renameProperty(key);

      switch (schema) {
        case OpenApiSchemaType():
        case OpenApiSchemaRef():
        case OpenApiSchemaAnyOf():
          final generator = propertyGenerators[schema.runtimeType];
          if (generator != null) {
            final fieldCode = generator.generateField(
              className: className,
              propertyName: propertyName,
              key: key,
              schema: schema,
            );
            fields.add(Field((b) => b..name = fieldCode));
          }
          break;
        case OpenApiSchemaOneOf():
          for (final mapping in schema.discriminator.mapping.entries) {
            unionProps.add(
              (
                type: config.namingUtils
                    .renameClass(mapping.value.split('/').last),
                key: key,
                unionName: mapping.key,
              ),
            );
          }
          break;
      }
    }

    // Generate the union class content
    final content = contentGenerator.generateUnionClassContent(
      className: className,
      filename: filename,
      unionProps: unionProps,
      normalProps: fields
          .map((f) => f.accept(DartEmitter.scoped()).toString())
          .join('\n'),
      model: model,
    );

    return (filename: filename, content: content);
  }
}

class RegularModelStrategy implements ModelGenerationStrategy {
  RegularModelStrategy(this.config)
      : propertyGenerators = {
          OpenApiSchemaType: TypePropertyGenerator(config),
          OpenApiSchemaRef: RefPropertyGenerator(config),
          OpenApiSchemaAnyOf: AnyOfPropertyGenerator(config),
        },
        contentGenerator = FreezedClassContentGenerator(config);
  final ConfigComponents config;
  final Map<Type, PropertyGeneratorStrategy> propertyGenerators;
  final FreezedClassContentGenerator contentGenerator;

  @override
  ({String filename, String content}) generate(OpenApiModel model) {
    final filename = config.namingUtils.renameFile(model.key);
    final className = config.namingUtils.renameClass(model.key);
    final properties = model.value.properties ?? {};

    // Use code_builder to generate fields
    final fields = <Field>[];
    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = config.namingUtils.renameProperty(key);

      final generator = propertyGenerators[schema.runtimeType];
      if (generator != null) {
        final fieldCode = generator.generateField(
          className: className,
          propertyName: propertyName,
          key: key,
          schema: schema,
        );

        // Parse the generated field code into a Field object
        fields.add(Field((b) => b..name = fieldCode));
      }
    }

    // Generate the class body
    final bodyText = fields.isEmpty
        ? ''
        : fields
            .map((f) => f.accept(DartEmitter.scoped()).toString())
            .join('\n');

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
          ModelTypeEnum.enum_: EnumModelStrategy(config),
          ModelTypeEnum.union: UnionModelStrategy(config),
          ModelTypeEnum.regular: RegularModelStrategy(config),
        },
        typeDeterminer = ModelTypeDeterminer();
  final ConfigComponents config;
  final Map<ModelTypeEnum, ModelGenerationStrategy> strategies;
  final ModelTypeDeterminer typeDeterminer;

  ({String filename, String content}) run(OpenApiModel model) {
    final modelType = typeDeterminer.determine(model);
    final strategy = strategies.entries
        .firstWhere((entry) => entry.key.name == modelType.name)
        .value;

    return strategy.generate(model);
  }
}
