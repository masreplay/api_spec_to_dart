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
              ..name = entry.key
              ..named = true
              ..required = true
              ..type = refer(_resolvePropertyType(entry.value))));
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
    required String normalProps,
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
        // Docs
        c.docs.add('/// ${model.key}');
        if (model.value.description != null)
          c.docs.add(model.value.description!);

        c.annotations.add(CodeExpression(Code('freezed')));
        c.name = className;
        c.mixins.add(refer('_\$$className'));

        // Private constructor
        c.constructors.add(Constructor((ctr) {
          ctr.constant = true;
          ctr.name = '_';
        }));

        // Fallback constructor if absent
        if (!unionProps.any((e) => e.unionName == 'fallback')) {
          c.constructors.add(Constructor((ctr) {
            ctr.constant = true;
            ctr.name = 'fallback';
            ctr.annotations.add(
              CodeExpression(Code('FreezedUnionValue("fallback")')),
            );
            ctr.redirect = refer('${className}Fallback');
          }));
        }

        // Variant constructors
        for (final prop in unionProps) {
          c.constructors.add(Constructor((ctr) {
            ctr.constant = true;
            ctr.name = ReCase(prop.unionName).camelCase;
            ctr.annotations.add(
              CodeExpression(Code('JsonSerializable(converters: convertors)')),
            );
            ctr.annotations.add(
              CodeExpression(Code('FreezedUnionValue("${prop.unionName}")')),
            );
            ctr.redirect = refer(config.namingUtils
                .renameClass('$className\_${prop.unionName}'));
            // Union-specific field
            ctr.optionalParameters.add(Parameter((p) => p
              ..name = prop.key
              ..named = true
              ..required = true
              ..type = refer(prop.type)
              ..toThis = true));
            // TODO: handle normalProps if needed
          }));
        }

        // fromJson factory
        c.methods.add(Method((m) {
          m.name = 'fromJson';
          m.static = true;
          m.returns = refer(className);
          m.requiredParameters.add(Parameter((p) => p
            ..name = 'json'
            ..type = refer('Map<String, dynamic>')));
          m.body = Code('return _\$${className}FromJson(json);');
        }));
      }));
    });

    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${library.accept(emitter)}');
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
      lib.directives.addAll([
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        ...config.importConfig.importModelsCode.map(Directive.import),
        Directive.part('$filename.g.dart'),
      ]);

      lib.body.add(Enum((en) {
        // Docs
        en.docs.add('/// ${model.key}');
        en.name = className;
        en.annotations.add(
          CodeExpression(
            Code('JsonEnum(valueField: "value", alwaysCreate: true)'),
          ),
        );
        // Parse and add enum entries
        for (final line in enumValues.split(',')) {
          final match = RegExp(r'^(\w+)\(([^)]+)\)\$').firstMatch(line.trim());
          if (match != null) {
            en.values.add(EnumValue((ev) => ev
              ..name = match.group(1)!
              ..arguments.add(refer(match.group(2)!))));
          }
        }
        // Value field
        en.fields.add(Field((f) => f
          ..name = 'value'
          ..type = refer(type)
          ..modifier = FieldModifier.final$));
        // Constructor
        en.constructors.add(Constructor((ctr) {
          ctr.constant = true;
          ctr.requiredParameters.add(Parameter((p) => p..name = 'this.value'));
        }));
        // toJson method
        en.methods.add(Method((m) {
          m.name = 'toJson';
          m.returns = refer(type);
          m.lambda = true;
          m.body = Code('_\$${className}EnumMap[this]!');
        }));
      }));
    });

    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${library.accept(emitter)}');
  }

  String _resolvePropertyType(OpenApiSchema schema) {
    return switch (schema) {
      // Basic types
      OpenApiSchemaType value =>
        _mapOpenApiTypeToDartType(value.type, value.format, items: value.items),

      // Reference types
      OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),

      // AnyOf types
      OpenApiSchemaAnyOf value => _resolveAnyOfType(value),

      // OneOf types
      OpenApiSchemaOneOf value => _resolveOneOfType(value),
    };
  }

  String _mapOpenApiTypeToDartType(OpenApiSchemaVarType? type, String? format,
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
          final itemType = _resolvePropertyType(items);
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

  String _resolveAnyOfType(OpenApiSchemaAnyOf schema) {
    final types = schema.anyOf!.map(_resolvePropertyType).toList();
    if (types.length == 1) {
      return types.first;
    }
    return types.join('Or'); // Example: StringOrInt
  }

  String _resolveOneOfType(OpenApiSchemaOneOf schema) {
    final types = schema.oneOf!.map(_resolvePropertyType).toList();
    if (types.length == 1) {
      return types.first;
    }
    return types.join('Or'); // Example: StringOrInt
  }
}
