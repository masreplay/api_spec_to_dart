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
    final buffer = StringBuffer();

    _writeImports(buffer, filename);
    _writeClassDeclaration(buffer, className);
    _writeUnionConstructors(buffer, className, unionTypes);
    _writeFromJsonFactory(buffer, className);

    return buffer.toString();
  }

  void _writeImports(StringBuffer buffer, String filename) {
    buffer.writeln(
      'import \'package:freezed_annotation/freezed_annotation.dart\';',
    );
    buffer.writeln('part \'$filename.freezed.dart\';');
    buffer.writeln('part \'$filename.g.dart\';');
    buffer.writeln();
  }

  void _writeClassDeclaration(StringBuffer buffer, String className) {
    buffer.writeln('@freezed');
    buffer.writeln('class $className with _\$$className {');
  }

  void _writeUnionConstructors(
    StringBuffer buffer,
    String className,
    List<({String type, String value})> unionTypes,
  ) {
    for (final unionType in unionTypes) {
      final constructorName = unionType.type.toLowerCase();
      buffer.writeln(
        '  factory $className.$constructorName(${unionType.type} value) = _\$${className}${unionType.type.pascalCase};',
      );
    }
    buffer.writeln();
  }

  void _writeFromJsonFactory(StringBuffer buffer, String className) {
    buffer.writeln('''
  factory $className.fromJson(
    Map<String, dynamic> json,
  ) => _\$${className}FromJson(
    json,
  );
}''');
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
