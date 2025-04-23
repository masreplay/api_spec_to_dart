import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Generates union types for OpenAPI anyOf schemas
class UnionTypeGenerator {
  UnionTypeGenerator(this.config);

  final ConfigComponents config;

  /// Generates a union type class name based on the types involved
  String generateUnionClassName(List<String> types) {
    return types.map((type) => type.pascalCase).join('Or');
  }

  /// Generates the content for a union type class
  String generateUnionClassContent({
    required String className,
    required String filename,
    required List<({String type, String value})> unionTypes,
  }) {
    final library = Library((lib) {
      // Add imports
      lib.directives.addAll([
        Directive.import('package:freezed_annotation/freezed_annotation.dart'),
        Directive.part('$filename.freezed.dart'),
        Directive.part('$filename.g.dart'),
      ]);

      // Add the union type class
      lib.body.add(Class((c) {
        c.name = className;
        c.annotations.add(CodeExpression(Code('freezed')));
        c.mixins.add(refer('_\$$className'));

        // Add union constructors
        for (final unionType in unionTypes) {
          final constructorName = unionType.type.toLowerCase();
          c.constructors.add(Constructor((ctr) {
            ctr.factory = true;
            ctr.name = constructorName;
            ctr.redirect = refer('_\$${className}${unionType.type.pascalCase}');
            ctr.requiredParameters.add(Parameter((p) => p
              ..name = 'value'
              ..type = refer(unionType.type)));
          }));
        }

        // Add fromJson factory method
        c.constructors.add(Constructor((ctr) {
          ctr.factory = true;
          ctr.name = 'fromJson';
          ctr.requiredParameters.add(Parameter((p) => p
            ..name = 'json'
            ..type = refer('Map<String, dynamic>')));
          ctr.body = Code('return _\$${className}FromJson(json);');
        }));
      }));
    });

    // Format and return the generated code
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    return DartFormatter(languageVersion: DartFormatter.latestLanguageVersion)
        .format('${library.accept(emitter)}');
  }

  /// Resolves the Dart type for a schema
  String resolveDartType(OpenApiSchema schema) {
    return switch (schema) {
      OpenApiSchemaType value => config.dartTypeConverter.dartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
            OpenApiSchemaAnyOf value => _resolveAnyOfType(value),
            _ => null,
          },
          items: value.items,
          title: value.title,
          parentTitle: schema.title),
      OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
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
