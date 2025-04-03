import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Generates consistent class content for different model types
class FreezedClassContentGenerator {
  FreezedClassContentGenerator(this.config);

  final SwaggerToDartConfig config;

  /// Generates the complete class content for a regular model
  String generateRegularClassContent({
    required String className,
    required String filename,
    required String bodyText,
    required Map<String, OpenApiSchema> properties,
    required OpenApiModel model,
  }) {
    final buffer = StringBuffer();

    _writeImports(buffer, filename);
    _writeClassDocumentation(buffer, model);
    _writeClassDeclaration(buffer, className);
    _writePropertyKeys(buffer, properties);
    _writeFactoryConstructor(buffer, className, bodyText);
    _writeFromJsonFactory(buffer, className);

    return buffer.toString();
  }

  /// Generates the complete class content for a union model
  String generateUnionClassContent({
    required String className,
    required String filename,
    required List<OneOfModel> unionProps,
    required String normalProps,
    required OpenApiModel model,
  }) {
    final buffer = StringBuffer();

    _writeImports(buffer, filename);
    _writeClassDocumentation(buffer, model);
    _writeUnionClassDeclaration(buffer, className);
    _writeUnionConstructors(buffer, className, unionProps, normalProps);
    _writeFromJsonFactory(buffer, className);

    return buffer.toString();
  }

  /// Generates the complete class content for an enum model
  String generateEnumClassContent({
    required String className,
    required String filename,
    required String enumValues,
    required String type,
    required OpenApiModel model,
  }) {
    final buffer = StringBuffer();

    _writeImports(buffer, filename);
    _writeClassDocumentation(buffer, model);
    _writeEnumDeclaration(buffer, className);
    _writeEnumValues(buffer, enumValues);
    _writeEnumMethods(buffer, className, type);

    return buffer.toString();
  }

  void _writeImports(StringBuffer buffer, String filename) {
    buffer.writeln('import \'dart:io\';');
    buffer.writeln();
    buffer.writeln(
      'import \'package:freezed_annotation/freezed_annotation.dart\';',
    );
    buffer.writeln('import \'package:dio/dio.dart\';');
    buffer.writeln();
    buffer.writeln('import \'../../convertors.dart\';');
    buffer.writeln(config.importModelsCode);
    buffer.writeln();
    buffer.writeln('part \'$filename.freezed.dart\';');
    buffer.writeln('part \'$filename.g.dart\';');
    buffer.writeln();
  }

  void _writeClassDocumentation(StringBuffer buffer, OpenApiModel model) {
    buffer.writeln('/// ${model.key}');
    if (model.value.description != null) {
      buffer.writeln(commentLine(model.value.description!));
    }
  }

  void _writeClassDeclaration(StringBuffer buffer, String className) {
    buffer.writeln('@freezed');
    buffer.writeln('abstract class $className with _\$$className {');
    buffer.writeln('  const $className._();');
    buffer.writeln();
  }

  void _writeUnionClassDeclaration(StringBuffer buffer, String className) {
    buffer.writeln('@freezed');
    buffer.writeln('sealed class $className with _\$$className {');
  }

  void _writeEnumDeclaration(StringBuffer buffer, String className) {
    buffer.writeln('@JsonEnum(valueField: \'value\', alwaysCreate: true)');
    buffer.writeln('enum $className {');
  }

  void _writePropertyKeys(
    StringBuffer buffer,
    Map<String, OpenApiSchema> properties,
  ) {
    for (final entry in properties.entries) {
      buffer.writeln(
        '  static const String ${(config.renameProperty(entry.key))}Key = \'${entry.key}\';',
      );
    }
    buffer.writeln();
  }

  void _writeFactoryConstructor(
    StringBuffer buffer,
    String className,
    String bodyText,
  ) {
    buffer.writeln('  @JsonSerializable(converters: convertors)');
    buffer.writeln('  const factory $className($bodyText) = _$className;');
    buffer.writeln();
  }

  void _writeUnionConstructors(
    StringBuffer buffer,
    String className,
    List<OneOfModel> unionProps,
    String normalProps,
  ) {
    if (!unionProps.any((e) => e.unionName == 'fallback')) {
      buffer.writeln(
        '  const factory $className.fallback() = ${className}Fallback;',
      );
      buffer.writeln();
    }

    for (final prop in unionProps) {
      buffer.writeln(
        '@FreezedUnionValue("${prop.unionName}") const factory $className.${Recase.instance.toCamelCase(prop.unionName)}({required ${prop.type} ${prop.key}, $normalProps}) = ${config.renameClass('${className}_${prop.unionName}')};',
      );
    }
    buffer.writeln();
  }

  void _writeEnumValues(StringBuffer buffer, String enumValues) {
    buffer.write(enumValues);
    buffer.writeln();
  }

  void _writeEnumMethods(StringBuffer buffer, String className, String type) {
    buffer.writeln(';');
    buffer.writeln('const $className(this.value);');
    buffer.writeln();
    buffer.writeln('''
factory $className.fromJson($type value) {
  return values.firstWhere(
    (e) => e.value == value,
    orElse: () => values.first,
  );
}''');
    buffer.writeln('final $type value;');
    buffer.writeln();
    buffer.writeln('$type toJson() => _\$${className}EnumMap[this]!;');
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
}
