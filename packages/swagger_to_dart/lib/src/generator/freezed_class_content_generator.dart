import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
import 'package:swagger_to_dart/src/pubspec.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Generates consistent class content for different model types using code_builder
class FreezedClassContentGenerator {
  FreezedClassContentGenerator(this.config);
  final ConfigComponents config;

  String generateRegularClassContent({
    required String className,
    required String filename,
    required String bodyText,
    required Map<String, OpenApiSchema> properties,
    required OpenApiModel model,
  }) {
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final library = Library((lib) {
      lib.directives.addAll([
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        Directive.import('convertors.dart'),
        ...config.importConfig.importModelsCode.map(Directive.import),
        Directive.part('$filename.freezed.dart'),
        Directive.part('$filename.g.dart'),
      ]);

      lib.body.add(Class((c) {
        // Documentation
        c.docs.add('/// ${model.key}');
        if (model.value.description != null) {
          c.docs.add(model.value.description!);
        }

        c.abstract = true;

        // Add @freezed annotation
        c.annotations.add(CodeExpression(Code('freezed')));

        // Class name
        c.name = className;

        // Add mixin for Freezed
        c.mixins.add(refer('_\$${className}'));

        // Factory constructor
        c.constructors.add(Constructor((ctr) {
          ctr.constant = true;
          ctr.factory = true;
          ctr.annotations.add(
            CodeExpression(
                Code('JsonSerializable(converters: Convertors.convertors)')),
          );
          ctr.redirect = refer('_${className}'); // Add a valid body
          for (final entry in properties.entries) {
            ctr.optionalParameters.add(Parameter((p) => p
              ..name = entry.key.camelCase
              ..named = true
              ..required = true
              ..type = refer(_resolvePropertyType(entry.value, className))));
          }
        }));

        c.constructors.add(Constructor((ctr) {
          ctr.factory = true;
          ctr.name = 'fromJson';
          ctr.requiredParameters.add(Parameter((p) => p
            ..name = 'json'
            ..type = refer('Map<String, dynamic>')));
          ctr.lambda = true;
          ctr.body = Code('_\$${className}FromJson(json)');
        }));
      }));
    });

    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${library.accept(emitter)}');
  }

  /// Freezed union class
  String generateUnionClassContent({
    required String className,
    required String filename,
    required List<OneOfModel> unionProps,
    required String normalProps, // chưa dùng
    required OpenApiModel model,
  }) {
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);

    final library = Library((lib) {
      lib.directives.addAll([
        Directive.import('dart:io'),
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        Directive.import('package:dio/dio.dart'),
        if (config.baseConfig.pubspec.isFlutterProject)
          Directive.import('package:flutter/material.dart'),
        Directive.import('convertors.dart'),
        ...config.importConfig.importModelsCode.map(Directive.import),
        Directive.part('$filename.freezed.dart'),
        Directive.part('$filename.g.dart'),
      ]);

      lib.body.add(Class((c) {
        c.name = className;
        c.annotations.add(CodeExpression(Code('freezed')));
        c.mixins.add(refer('_\$${className}'));

        // Main factory constructor with union variants
        c.constructors.addAll([
          // Union constructors
          for (final prop in unionProps)
            Constructor((ctr) {
              ctr.constant = true;
              ctr.factory = true;
              ctr.name = ReCase(prop.unionName).camelCase;
              ctr.annotations.addAll([
                CodeExpression(Code('FreezedUnionValue("${prop.unionName}")')),
                CodeExpression(
                    Code('JsonSerializable(converters: convertors)')),
              ]);
              ctr.redirect = refer(config.namingUtils
                  .renameClass('${className}_${prop.unionName}'));
              ctr.optionalParameters.add(Parameter((p) => p
                ..name = prop.key
                ..named = true
                ..required = true
                ..type = refer(prop.type)));
            }),
        ]);

        // fromJson factory method
        c.constructors.add(Constructor((ctr) {
          ctr.factory = true;
          ctr.name = 'fromJson';
          ctr.requiredParameters.add(Parameter((p) => p
            ..name = 'json'
            ..type = refer('Map<String, dynamic>')));
          ctr.redirect = refer('_\$${className}FromJson(json)');
        }));
      }));
    });

    try {
      return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
          .format('${library.accept(emitter)}');
    } catch (e) {
      print('Error formatting code: $e');
      print('Generated code:\n${library.accept(emitter)}');
      return '';
    }
  }

  /// Freezed enum class
  String generateEnumClassContent({
    required String className,
    required String filename,
    required String enumValues,
    required String type,
    required OpenApiModel model,
  }) {
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);

    final library = Library((lib) {
      // Add necessary imports
      lib.directives.addAll([
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        ...config.importConfig.importModelsCode.map(Directive.import),
        Directive.part('$filename.g.dart'),
      ]);

      // Define the enum
      lib.body.add(Enum((en) {
        // Add documentation
        // en.docs.add('/// ${model.key}');
        // if (model.value.description != null) {
        //   en.docs.addAll(model.value.description!.split('\n'));
        // }

        // Enum name
        en.name = className;

        // Add @JsonEnum annotation
        en.annotations.add(
          CodeExpression(
              Code('JsonEnum(valueField: "value", alwaysCreate: true)')),
        );

        // Add enum values
        for (final line in enumValues.split(';')) {
          final match =
              RegExp(r"const (\w+) = '([^']+)'").firstMatch(line.trim());
          if (match != null) {
            // Sanitize the name to ensure it is in camel case
            final rawName = match.group(1)!;
            final sanitizedName = ReCase(rawName.replaceAll(' ', '')).camelCase;

            en.values.add(EnumValue((ev) => ev
              ..name = sanitizedName
              ..arguments.add(CodeExpression(Code("'${match.group(2)!}'")))));
          }
        }

        // Add the value field
        en.fields.add(Field((f) => f
          ..name = 'value'
          ..type = refer(type)
          ..modifier = FieldModifier.final$));

        // Add the constructor
        en.constructors.add(Constructor((ctr) {
          ctr.constant = true;
          ctr.requiredParameters.add(Parameter((p) => p
            ..name = 'value'
            ..toThis = true));
        }));

        // Add the toJson method
        en.methods.add(Method((m) {
          m.name = 'toJson';
          m.returns = refer(type);
          m.lambda = true;
          m.body = Code('_\$${className}EnumMap[this]!');
        }));
      }));
    });

    print(library.accept(emitter));

    // Format and return the generated code
    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${library.accept(emitter)}');
  }

  String _resolvePropertyType(OpenApiSchema schema, String className) {
    return switch (schema) {
      // Basic types
      OpenApiSchemaType value => _mapOpenApiTypeToDartType(
          value.type, value.format, className,
          items: value.items),

      // Reference types
      OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),

      // AnyOf types
      OpenApiSchemaAnyOf value => _resolveAnyOfType(value, className),

      // OneOf types
      OpenApiSchemaOneOf value => _resolveOneOfType(value, className),
    };
  }

  String _mapOpenApiTypeToDartType(
      OpenApiSchemaVarType? type, String? format, String className,
      {OpenApiSchema? items}) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return 'String';
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        if (items != null) {
          // Resolve the type of the items in the array
          final itemType = _resolvePropertyType(items, className);
          return 'List<$itemType>';
        }
        return 'List<dynamic>'; // Fallback if items is null
      case OpenApiSchemaVarType.object:
        return 'Map<String, dynamic>';
      case OpenApiSchemaVarType.null_:
        return 'Null';
      default:
        return 'dynamic'; // Fallback for unknown types
    }
  }

  String _resolveAnyOfType(OpenApiSchemaAnyOf schema, String className) {
    final types = schema.anyOf!.map(
      (e) {
        return _resolvePropertyType(e, className);
      },
    ).toList();

    if (types.length == 1) {
      // Nếu chỉ có một kiểu, trả về kiểu đó
      return types.first;
    }

    if (types.contains('Null')) {
      // Nếu có kiểu null, trả về kiểu nullable
      return '${types.firstWhere((type) => type != 'Null')}?';
    }

    // Tạo tên lớp union type dựa trên các kiểu dữ liệu
    final unionClassName = '${className}UnionType'.pascalCase;
    _generateUnionType(unionClassName, types);
    return unionClassName;
  }

  String _resolveOneOfType(OpenApiSchemaOneOf schema, String className) {
    final types = schema.oneOf!.map(
      (e) {
        return _resolvePropertyType(e, className);
      },
    ).toList();

    if (types.length == 1) {
      // Nếu chỉ có một kiểu, trả về kiểu đó
      return types.first;
    }

    if (types.contains('Null')) {
      // Nếu có kiểu null, trả về kiểu nullable
      return '${types.firstWhere((type) => type != 'Null')}?';
    }

    // Tạo tên lớp union type dựa trên các kiểu dữ liệu
    final unionClassName = '${className}UnionType'.pascalCase;
    _generateUnionType(unionClassName, types);
    return unionClassName;
  }

  void _generateUnionType(String className, List<String> types) {
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);

    final library = Library((lib) {
      lib.directives.addAll([
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        Directive.part('${className.snakeCase}.freezed.dart'),
      ]);

      lib.body.add(Class((c) {
        c.name = className;
        c.abstract = true;
        c.annotations.add(CodeExpression(Code('freezed')));
        c.mixins.add(refer('_\$${className}'));

        // Thêm các factory constructor cho từng kiểu
        for (final type in types) {
          c.constructors.add(Constructor((ctr) {
            ctr.factory = true;
            ctr.name = type.camelCase;
            ctr.redirect = refer(config.namingUtils
                .renameClass('${className}_${type.pascalCase}'));
            ctr.requiredParameters.add(Parameter((p) => p
              ..name = 'value'
              ..type = refer(type)));
          }));
        }

        // Thêm fromJson method
        c.constructors.add(Constructor((ctr) {
          ctr.factory = true;
          ctr.name = 'fromJson';
          ctr.requiredParameters.add(Parameter((p) => p
            ..name = 'json'
            ..type = refer('Map<String, dynamic>')));
          ctr.lambda = true;
          ctr.body = Code('_\$${className}FromJson(json)');
        }));
      }));
    });

    // Xuất mã ra file
    final formattedCode =
        DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
            .format('${library.accept(emitter)}');
    final filePath =
        '${config.pathConfig.modelsOutputDirectory}/${className.snakeCase}.dart'; // Adjust the path as needed
    final file = File(filePath);
    file.writeAsStringSync(formattedCode);
  }
}
