import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/builder.dart';
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiModelGenerator {
  const OpenApiModelGenerator(this.context);

  final CodeGenerationContext context;

  Future<void> generate() async {
    if (context.openApi.components case final openApiComponents?) {
      for (final entry in openApiComponents.schemas.entries) {
        final result = run(entry);

        context.addModel(result);
      }
    }
  }

  Library run(MapEntry<String, OpenApiSchemas> model) {
    final schema = model.value;

    ModelTypeEnum type = ModelTypeEnum.regular;

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

    final strategy = switch (type) {
      ModelTypeEnum.regular => RegularModelStrategy(context),
      ModelTypeEnum.enum_ => EnumModelStrategy(context),
      ModelTypeEnum.union => UnionModelStrategy(context),
    };

    return strategy.generate(model);
  }
}

// Convert OpenApiSchema to Parameter
abstract class PropertyGeneratorStrategy {
  const PropertyGeneratorStrategy(this.context);

  final CodeGenerationContext context;

  Parameter generate({
    required String className,
    required String propertyName,
    required String key,
    required OpenApiSchema schema,
  });
}

class TypePropertyGenerator extends PropertyGeneratorStrategy {
  const TypePropertyGenerator(super.context);

  @override
  Parameter generate({
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

    final dartType = context.dartTypeConverter.getDartType(
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
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value =>
        context.dartTypeConverter.convertOpenApiAnyOfToDartType(value),
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

class RefPropertyGenerator extends PropertyGeneratorStrategy {
  const RefPropertyGenerator(super.context);

  @override
  Parameter generate({
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

    final refClassName = Renaming.instance.renameRefClass(schema);

    return FreezedClassCodeBuilder.instance.parameter_(
      name: propertyName,
      type: refClassName,
      isDeprecated: false,
      defaultValue: _getDefaultValueCode(schema.default_, refClassName),
    );
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${Renaming.instance.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${Renaming.instance.renameProperty(defaultValue)}';
    }
    return null;
  }
}

class AnyOfPropertyGenerator extends PropertyGeneratorStrategy {
  const AnyOfPropertyGenerator(super.context);

  @override
  Parameter generate({
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

    return FreezedClassCodeBuilder.instance.parameter_(
      name: propertyName,
      type: dartType,
      defaultValue: _getDefaultValueCode(schema.default_, dartType),
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
      final baseType = resolveDartType(nonNullSchemas.first);
      return isNullable ? '$baseType?' : baseType;
    }

    final types =
        nonNullSchemas.map((schema) => resolveDartType(schema)).toList();
    final unionClassName = generateUnionClassName(types);

    return isNullable ? '$unionClassName?' : unionClassName;
  }

  String? _getDefaultValueCode(Object? defaultValue, String className) {
    if (defaultValue == 'null') {
      return 'null';
    } else if (defaultValue != null && defaultValue is int) {
      return '$className.value${Renaming.instance.renameProperty("$defaultValue")}';
    } else if (defaultValue != null && defaultValue is String) {
      return '$className.${Renaming.instance.renameProperty(defaultValue)}';
    }
    return null;
  }

  String generateUnionClassName(List<String> types) {
    return types.map(Renaming.instance.renameClass).join('Or');
  }

  String resolveDartType(OpenApiSchema schema) {
    return switch (schema) {
      OpenApiSchemaType value => context.dartTypeConverter.getDartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
            OpenApiSchemaAnyOf value => _resolveAnyOfType(value),
            _ => null,
          },
          items: value.items,
          title: value.title,
          parentTitle: schema.title),
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value => _resolveAnyOfType(value),
      _ =>
        throw ArgumentError('Unsupported schema type: ${schema.runtimeType}'),
    };
  }

  String _resolveAnyOfType(OpenApiSchemaAnyOf value) {
    final nonNullSchemas = value.anyOf!
        .where(
          (e) =>
              !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_),
        )
        .toList();

    if (nonNullSchemas.length == 1) {
      return resolveDartType(nonNullSchemas.first);
    }

    final types =
        nonNullSchemas.map((schema) => resolveDartType(schema)).toList();
    return generateUnionClassName(types);
  }
}

// Generate Enum, Union, Regular models
abstract class ModelStrategy {
  const ModelStrategy(this.context);

  final CodeGenerationContext context;

  Library generate(MapEntry<String, OpenApiSchemas> model);
}

class EnumModelStrategy extends ModelStrategy {
  const EnumModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final className =
        Renaming.instance.renameClass(model.value.title ?? model.key);
    final filename = Renaming.instance.renameFile(className);

    return Library((b) => b
      ..name = filename
      ..body.addAll([
        Enum((b) => b
              ..name = filename
              // ..constructors.addAll([
              //   Constructor(
              //     (b) => b
              //       ..constant = true
              //       ..requiredParameters.addAll([
              //         Parameter((b) => b
              //           ..name = 'value'
              //           ..required = true
              //           ..type = refer('$String')),
              //       ]),
              //   ),
              // ])
              ..values.addAll([
                for (final value in model.value.xEnumVarnames ?? [])
                  EnumValue((b) => b
                        ..annotations.add(refer('@JsonValue($value)'))
                        ..name = "value${value}"
                      // ..arguments.addAll([
                      //   literalString(value.toString()),
                      // ]),
                      ),
              ])
            // ..methods.addAll([
            //   Method(
            //     (b) => b
            //       ..name = 'toJson'
            //       ..returns = refer('$String'),
            //   ),
            // ]),
            ),
      ]));
  }
}

class UnionModelStrategy extends ModelStrategy {
  const UnionModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final propertyGenerators = {
      OpenApiSchemaType: TypePropertyGenerator(context),
      OpenApiSchemaRef: RefPropertyGenerator(context),
      OpenApiSchemaAnyOf: AnyOfPropertyGenerator(context),
      OpenApiSchemaOneOf: AnyOfPropertyGenerator(context),
    };

    final className =
        Renaming.instance.renameClass(model.value.title ?? model.key);
    final filename = Renaming.instance.renameFile(className);
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
            context,
          ).generate(MapEntry(model.key, regularModel));
        }

        final types = nonNullSchemas.map((schema) {
          return switch (schema) {
            OpenApiSchemaType value => context.dartTypeConverter.getDartType(
                type: value.type,
                format: value.format,
                genericType: switch (value.items) {
                  OpenApiSchemaRef value => Renaming.instance.renameRefClass(
                      value,
                    ),
                  OpenApiSchemaAnyOf value => context.dartTypeConverter
                      .convertOpenApiAnyOfToDartType(value),
                  _ => null,
                },
                items: value.items,
                title: value.title,
                parentTitle: schema.title,
              ),
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(
                value,
              ),
            OpenApiSchemaAnyOf value =>
              context.dartTypeConverter.convertOpenApiAnyOfToDartType(value),
            _ => throw ArgumentError(
                'Unsupported schema type: ${schema.runtimeType}',
              ),
          };
        }).toList();

        final unionClassName =
            types.map((type) => Renaming.instance.renameClass(type)).join('Or');

        return FreezedClassCodeBuilder.instance.unionClass_(
          className: unionClassName,
          filename: filename,
          unions: [],
        );
      }
    }

    final properties = schema.properties ?? {};
    final unionProps = <Parameter>[];
    final normalProps = StringBuffer();

    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = Renaming.instance.renameProperty(key);

      switch (schema) {
        case OpenApiSchemaType():
          final generator = TypePropertyGenerator(context);

          final fieldCode = generator.generate(
            className: className,
            propertyName: propertyName,
            key: key,
            schema: schema,
          );
          normalProps.writeln(fieldCode);

          break;
        case OpenApiSchemaRef():
          final generator = propertyGenerators[schema.runtimeType];
          if (generator != null) {
            final fieldCode = generator.generate(
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
            final fieldCode = generator.generate(
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
              FreezedClassCodeBuilder.instance.parameter_(
                type: Renaming.instance
                    .renameClass(mapping.value.split('/').last),
                name: propertyName,
              ),
            );
          }
          break;
      }
    }

    return FreezedClassCodeBuilder.instance.unionClass_(
      className: className,
      filename: filename,
      unions: [],
    );
  }
}

class RegularModelStrategy extends ModelStrategy {
  const RegularModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final propertyGenerators = <Type, PropertyGeneratorStrategy>{
      OpenApiSchemaType: TypePropertyGenerator(context),
      OpenApiSchemaRef: RefPropertyGenerator(context),
      OpenApiSchemaAnyOf: AnyOfPropertyGenerator(context),
    };

    final className =
        Renaming.instance.renameClass(model.value.title ?? model.key);
    final filename = Renaming.instance.renameFile(className);
    final properties = model.value.properties ?? {};

    final parameters = <Parameter>[];
    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = Renaming.instance.renameProperty(key);

      final generator = propertyGenerators[schema.runtimeType];
      if (generator != null) {
        final fieldCode = generator.generate(
          className: className,
          propertyName: propertyName,
          key: key,
          schema: schema,
        );
        parameters.add(fieldCode);
      }
    }

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import(
            'package:freezed_annotation/freezed_annotation.dart',
          ),
          Directive.import('convertors.dart'),
          Directive.part('${filename}.freezed.dart'),
          Directive.part('${filename}.g.dart'),
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
              ..mixins.addAll([refer('_\$${className}')])
              ..fields.addAll([
                for (final entry in parameters)
                  Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = '${entry.name}Key'
                      ..type = refer('$String')
                      ..assignment = Code('"${entry.name}"'),
                  ),
              ])
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..constant = true
                    ..name = '_',
                ),
                Constructor(
                  (b) => b
                    ..constant = true
                    ..factory = true
                    ..redirect = refer('_${className}')
                    ..requiredParameters.addAll([...parameters]),
                ),
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
  }
}
