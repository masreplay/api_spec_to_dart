// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/pubspec.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Base config class that provides access to the core configuration components
class BaseConfig {
  const BaseConfig({required this.swaggerToDart, required this.pubspec});

  final SwaggerToDart swaggerToDart;
  final Pubspec pubspec;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'swagger_to_dart': swaggerToDart.toJson(),
      'pubspec': pubspec.toString(),
    };
  }
}

/// Handles output directory paths
class PathConfig {
  const PathConfig({required this.baseConfig});

  final BaseConfig baseConfig;

  String get modelsOutputDirectory {
    return path.join(baseConfig.swaggerToDart.outputDirectory, 'models');
  }

  String get convertorOutputDirectory {
    return path.join(baseConfig.swaggerToDart.outputDirectory, 'models');
  }

  String get clientsOutputDirectory {
    return path.join(baseConfig.swaggerToDart.outputDirectory, 'clients');
  }
}

/// Handles import code generation
class ImportConfig {
  const ImportConfig({required this.baseConfig});

  final BaseConfig baseConfig;

  List<String> get importModelsCode {
    return [
      'package:${baseConfig.pubspec.name}/src/gen/models/models.dart',
      if (baseConfig.pubspec.isFlutterProject) 'package:flutter/material.dart',
    ];
    // return '''import 'package:${baseConfig.pubspec.name}/src/gen/models/models.dart';
    // ${baseConfig.pubspec.isFlutterProject ? "import 'package:flutter/material.dart';" : ''}
    // ''';
  }

  List<String> get importClientsCode {
    return [
      'package:${baseConfig.pubspec.name}/src/gen/clients/clients.dart',
    ];
    // return '''import 'package:${baseConfig.pubspec.name}/src/gen/clients/clients.dart';''';
  }
}

/// Converts OpenAPI schema types to Dart types
class DartTypeConverter {
  const DartTypeConverter({
    required this.baseConfig,
    required this.namingUtils,
  });

  final BaseConfig baseConfig;
  final NamingUtils namingUtils;

  String dartType({
    required OpenApiSchemaVarType? type,
    required String? format,
    required String? genericType,
    required OpenApiSchema? items,
    required String? title,
    String? parentTitle,
  }) {
    switch (type) {
      case OpenApiSchemaVarType.string:
        return switch (format) {
          'date-time' => 'DateTime',
          'date' => 'DateTime',
          'color-hex' => 'Color',
          'binary' => 'MultipartFile',
          'uuid' => 'String',
          'time' ||
          'duration' =>
            baseConfig.pubspec.isFlutterProject ? 'TimeOfDay' : 'String',
          'uri' => 'Uri',
          _ => 'String',
        };
      case OpenApiSchemaVarType.number:
        return 'double';
      case OpenApiSchemaVarType.integer:
        return 'int';
      case OpenApiSchemaVarType.boolean:
        return 'bool';
      case OpenApiSchemaVarType.array:
        final className = switch (items) {
          OpenApiSchemaType value => dartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value => namingUtils.renameRefClass(value),
                OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                    value,
                    this,
                  ),
                _ => null,
              },
              items: value.items,
              title: value.title,
              parentTitle: parentTitle),
          OpenApiSchemaRef value => namingUtils.renameRefClass(value),
          OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
              value,
              this,
            ),
          OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
              '${parentTitle}${title}UnionResponse',
              value,
              this,
            ),
          null => null,
        };

        if (className == null) return 'List<dynamic>';

        return 'List<$className>';
      case OpenApiSchemaVarType.object:
        if (genericType == null) return 'Map<String, dynamic>';

        return 'Map<String, $genericType>';
      case OpenApiSchemaVarType.null_ || OpenApiSchemaVarType.$unknown || null:
        return 'dynamic';
    }
  }
}

/// Utilities for naming conventions and transformations
class NamingUtils {
  const NamingUtils({required this.dartKeywords});

  final DartKeywords dartKeywords;

  String renameProperty(String key) {
    return dartKeywords.renameProtect(Recase.instance.toCamelCase(key));
  }

  String renameMethod(String key) {
    return dartKeywords.renameProtect(Recase.instance.toCamelCase(key));
  }

  String renameEnum(String key) {
    return Recase.instance.toPascalCase(key);
  }

  String renameRefClass(OpenApiSchemaRef value) {
    return renameClass(value.ref!.split('/').last);
  }

  String renameClass(String key) {
    final name = Recase.instance.toPascalCase(key);

    if (name.endsWith('NoneType')) {
      return name.substring(0, name.length - 8);
    }

    return name;
  }

  String renameFile(String key) {
    final name = Recase.instance.toSnakeCase(key);

    if (name.endsWith('none_type')) {
      return name.substring(0, name.length - 9);
    }

    return name;
  }
}

/// Handles Dart keywords and reserved words
class DartKeywords {
  const DartKeywords();

  /// Handles Dart keywords by appending an underscore if the identifier
  /// conflicts with a reserved keyword
  String renameProtect(String name) {
    return name;
  }

  /// Returns the set of reserved keywords
  Set<String> get reservedKeywords => keywords;
}

/// Set of reserved Dart keywords that can't be used as identifiers
const keywords = {
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'base',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'var',
  'final',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'of',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'sealed',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'type',
  'typedef',
  'void',
  'when',
  'with',
  'while',
  'yield',
};

/// Factory class to create and initialize all config components
class ConfigFactory {
  static ConfigComponents create({
    required SwaggerToDart swaggerToDart,
    required Pubspec pubspec,
  }) {
    final baseConfig = BaseConfig(
      swaggerToDart: swaggerToDart,
      pubspec: pubspec,
    );

    final dartKeywords = const DartKeywords();
    final namingUtils = NamingUtils(dartKeywords: dartKeywords);

    return ConfigComponents(
      baseConfig: baseConfig,
      pathConfig: PathConfig(baseConfig: baseConfig),
      importConfig: ImportConfig(baseConfig: baseConfig),
      namingUtils: namingUtils,
      dartTypeConverter: DartTypeConverter(
        baseConfig: baseConfig,
        namingUtils: namingUtils,
      ),
      dartKeywords: dartKeywords,
    );
  }
}

/// Container class that holds all config components
class ConfigComponents {
  const ConfigComponents({
    required this.baseConfig,
    required this.pathConfig,
    required this.importConfig,
    required this.namingUtils,
    required this.dartTypeConverter,
    required this.dartKeywords,
  });

  final BaseConfig baseConfig;
  final PathConfig pathConfig;
  final ImportConfig importConfig;
  final NamingUtils namingUtils;
  final DartTypeConverter dartTypeConverter;
  final DartKeywords dartKeywords;

  Map<String, dynamic> toJson() => baseConfig.toJson();
}
