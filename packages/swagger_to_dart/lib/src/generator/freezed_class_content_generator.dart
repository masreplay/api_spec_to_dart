import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:swagger_to_dart/src/pubspec.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Generates consistent class content for different model types using code_builder
class FreezedClassGenerator {
  FreezedClassGenerator(this.config);

  final ConfigComponents config;
  final _formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );

  /// Generates the complete class content for a regular model
  String generateRegularClassContent({
    required String className,
    required String filename,
    required String bodyText,
    required Map<String, OpenApiSchema> properties,
    required OpenApiModel model,
  }) {
    final library = _createLibrary(
      filename: filename,
      model: model,
      builder: (libraryBuilder) {
        _addClassDeclaration(
          libraryBuilder: libraryBuilder,
          className: className,
          model: model,
          properties: properties,
          bodyText: bodyText,
          isUnion: false,
        );
      },
    );

    return _emitCode(library);
  }

  /// Generates the complete class content for a union model
  String generateUnionClassContent({
    required String className,
    required String filename,
    required List<OneOfModel> unionProps,
    required String normalProps,
    required OpenApiModel model,
  }) {
    final library = _createLibrary(
      filename: filename,
      model: model,
      builder: (libraryBuilder) {
        _addUnionClassDeclaration(
          libraryBuilder: libraryBuilder,
          className: className,
          model: model,
          unionProps: unionProps,
          normalProps: normalProps,
        );
      },
    );

    return _emitCode(library);
  }

  /// Generates the complete class content for an enum model
  String generateEnumClassContent({
    required String className,
    required String filename,
    required String enumValues,
    required String type,
    required OpenApiModel model,
  }) {
    final library = _createLibrary(
      filename: filename,
      model: model,
      freezed: false,
      builder: (libraryBuilder) {
        _addEnumDeclaration(
          libraryBuilder: libraryBuilder,
          className: className,
          model: model,
          enumValues: enumValues,
          type: type,
        );
      },
    );

    return _emitCode(library);
  }

  /// Creates a library with standard imports and documentation
  Library _createLibrary({
    required String filename,
    required OpenApiModel model,
    required void Function(LibraryBuilder) builder,
    bool freezed = true,
    bool json = true,
  }) {
    return Library((libraryBuilder) {
      // Add imports
      libraryBuilder.directives.addAll([
        Directive.import('dart:io'),
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        Directive.import('package:dio/dio.dart'),
        if (config.baseConfig.pubspec.isFlutterProject)
          Directive.import('package:flutter/material.dart'),
        Directive.import('convertors.dart'),
      ]);

      // Add custom model imports
      final importModelsDirectives = config.importConfig.importModelsCode
          .split('\n')
          .where((line) => line.trim().isNotEmpty)
          .map((line) => Directive.import(
              line.replaceAll('import ', '').replaceAll(';', '').trim()));
      libraryBuilder.directives.addAll(importModelsDirectives);

      // Add part directives
      if (freezed) {
        libraryBuilder.directives.add(Directive.part('$filename.freezed.dart'));
      }
      if (json) {
        libraryBuilder.directives.add(Directive.part('$filename.g.dart'));
      }

      // Build the rest of the library
      builder(libraryBuilder);
    });
  }

  /// Adds a standard class declaration
  void _addClassDeclaration({
    required LibraryBuilder libraryBuilder,
    required String className,
    required OpenApiModel model,
    required Map<String, OpenApiSchema> properties,
    required String bodyText,
    required bool isUnion,
  }) {
    final classBuilder = Class((cls) {
      // Add doc comments
      cls.docs.add('/// ${model.key}');
      if (model.value.description != null) {
        cls.docs.add(commentLine(model.value.description!));
      }

      // Add annotations
      cls.annotations.add(refer('freezed'));

      // Set class name and modifier
      cls.name = className;
      if (isUnion) {
        cls.sealed = true;
      } else {
        cls.abstract = true;
      }
      cls.extend = refer('_\$$className');

      // Add const constructor
      cls.constructors.add(Constructor((constructor) {
        constructor.constant = true;
        constructor.name = '_';
      }));

      // Add property key constants
      for (final entry in properties.entries) {
        final propertyName = config.namingUtils.renameProperty(entry.key);
        cls.fields.add(Field((field) {
          field.static = true;
          field.modifier = FieldModifier.constant;
          field.type = refer('String');
          field.name = '${propertyName}Key';
          field.assignment = literalString(entry.key).code;
        }));
      }

      // Add factory constructor
      cls.constructors.add(Constructor((constructor) {
        constructor.factory = true;
        constructor.annotations.add(refer('JsonSerializable')
            .call([], {'converters': refer('convertors')}));
        constructor.constant = true;
        constructor.lambda = true;
        constructor.body = Code('_$className');
        constructor.requiredParameters.add(Parameter((parameter) {
          parameter.type = refer(bodyText);
        }));
      }));

      // Add fromJson factory method
      cls.methods.add(Method((method) {
        method.static = false;
        method.returns = refer(className);
        method.name = 'fromJson';
        method.requiredParameters.add(Parameter((parameter) {
          parameter.type = refer('Map<String, dynamic>');
          parameter.name = 'json';
        }));
        method.lambda = false;
        method.body = Code('return _\${className}FromJson(json);');
      }));
    });

    libraryBuilder.body.add(classBuilder);
  }

  /// Adds a union class declaration
  void _addUnionClassDeclaration({
    required LibraryBuilder libraryBuilder,
    required String className,
    required OpenApiModel model,
    required List<OneOfModel> unionProps,
    required String normalProps,
  }) {
    final classBuilder = Class((cls) {
      // Add doc comments
      cls.docs.add('/// ${model.key}');
      if (model.value.description != null) {
        cls.docs.add(commentLine(model.value.description!));
      }

      // Add annotations
      cls.annotations.add(refer('freezed'));

      // Set class name and modifier
      cls.name = className;
      cls.sealed = true;
      cls.extend = refer('_\$$className');

      // Add property key constants
      final properties = model.value.properties ?? {};
      for (final entry in properties.entries) {
        final propertyName = config.namingUtils.renameProperty(entry.key);
        cls.fields.add(Field((field) {
          field.static = true;
          field.modifier = FieldModifier.constant;
          field.type = refer('String');
          field.name = '${propertyName}Key';
          field.assignment = literalString(entry.key).code;
        }));
      }

      // Add fallback constructor if needed
      if (!unionProps.any((e) => e.unionName == 'fallback')) {
        cls.constructors.add(Constructor((constructor) {
          constructor.factory = true;
          constructor.name = 'fallback';
          constructor.annotations.addAll([
            refer('JsonSerializable')
                .call([], {'converters': refer('convertors')}),
            refer('FreezedUnionValue').call([literalString('fallback')]),
          ]);
          constructor.constant = true;
          constructor.lambda = true;
          constructor.body = Code('${className}Fallback');
        }));
      }

      // Add union constructors
      for (final prop in unionProps) {
        cls.constructors.add(Constructor((constructor) {
          constructor.factory = true;
          constructor.name = Recase.instance.toCamelCase(prop.unionName);
          constructor.annotations.addAll([
            refer('JsonSerializable')
                .call([], {'converters': refer('convertors')}),
            refer('FreezedUnionValue').call([literalString(prop.unionName)]),
          ]);
          constructor.constant = true;
          constructor.lambda = true;
          constructor.body = Code(
              config.namingUtils.renameClass('${className}_${prop.unionName}'));

          // Add required parameter
          constructor.optionalParameters.add(Parameter((parameter) {
            parameter.required = true;
            parameter.named = true;
            parameter.type = refer(prop.type);
            parameter.name = prop.key;
          }));

          // Add normal parameters if needed
          if (normalProps.isNotEmpty) {
            // Note: This is simplified - ideally we'd parse normalProps
            // and add each parameter individually
            constructor.optionalParameters.add(Parameter((parameter) {
              parameter.named = true;
              parameter.toThis = true;
              parameter.name = 'normalProps';
            }));
          }
        }));
      }

      // Add fromJson factory method
      cls.methods.add(Method((method) {
        method.static = false;
        method.returns = refer(className);
        method.name = 'fromJson';
        method.requiredParameters.add(Parameter((parameter) {
          parameter.type = refer('Map<String, dynamic>');
          parameter.name = 'json';
        }));
        method.lambda = false;
        method.body = Code('return _\${className}FromJson(json);');
      }));
    });

    libraryBuilder.body.add(classBuilder);
  }

  /// Adds an enum declaration
  void _addEnumDeclaration({
    required LibraryBuilder libraryBuilder,
    required String className,
    required OpenApiModel model,
    required String enumValues,
    required String type,
  }) {
    // Parse enum values from string
    final enumValuesCode = enumValues.trimRight().split('\n');
    final values = <String>[];

    for (var line in enumValuesCode) {
      line = line.trim();
      if (line.isNotEmpty && !line.startsWith('//')) {
        // Extract the enum value name (before any comma or comment)
        final valueMatch = RegExp(r'^\s*(\w+)').firstMatch(line);
        if (valueMatch != null) {
          values.add(valueMatch.group(1)!);
        }
      }
    }

    final enumBuilder = Enum((cls) {
      // Add doc comments
      cls.docs.add('/// ${model.key}');
      if (model.value.description != null) {
        cls.docs.add(commentLine(model.value.description!));
      }

      // Add annotations
      cls.annotations.add(refer('JsonEnum').call([], {
        'valueField': literalString('value'),
        'alwaysCreate': literalBool(true),
      }));

      // Set class name and type
      cls.name = className;

      // Add enum values
      for (final value in values) {
        cls.fields.add(Field((field) {
          field.name = value;
          field.type = refer('');
          field.static = false;
        }));
      }

      // Add constructor
      cls.constructors.add(Constructor((constructor) {
        constructor.constant = true;
        constructor.requiredParameters.add(Parameter((parameter) {
          parameter.toThis = true;
          parameter.name = 'value';
        }));
      }));

      // Add value field
      cls.fields.add(Field((field) {
        field.modifier = FieldModifier.final$;
        field.type = refer(type);
        field.name = 'value';
      }));

      // Add fromJson factory method
      cls.methods.add(Method((method) {
        method.static = false;
        method.returns = refer(className);
        method.name = 'fromJson';
        method.requiredParameters.add(Parameter((parameter) {
          parameter.type = refer(type);
          parameter.name = 'value';
        }));
        method.body = Code('''
return values.firstWhere(
  (e) => e.value == value,
  orElse: () => values.first,
);''');
      }));

      // Add toJson method
      cls.methods.add(Method((method) {
        method.returns = refer(type);
        method.name = 'toJson';
        method.lambda = true;
        method.body = Code('_\$${className}EnumMap[this]!');
      }));
    });

    libraryBuilder.body.add(enumBuilder);
  }

  /// Emits and formats the Dart code
  String _emitCode(Library library) {
    final emitter = DartEmitter();
    final code = library.accept(emitter).toString();

    try {
      return _formatter.format(code);
    } catch (e) {
      // If formatting fails, return unformatted code
      return code;
    }
  }
}
