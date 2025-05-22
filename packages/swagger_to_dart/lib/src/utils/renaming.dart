import 'package:swagger_to_dart/src/schema/openapi/v3/v3.dart';

import 'recase.dart';

final keywords = <String>{
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
  'final',
  'var',
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

class Renaming {
  const Renaming._();

  static Renaming get _instance => const Renaming._();

  static Renaming get instance => _instance;

  String _guard(String text) {
    final name = keywords.contains(text) ? '${text}__' : text;

    return name.replaceAll(' ', '_');
  }

  String renameProperty(String key) {
    return Recase.instance.toCamelCase(_guard(key));
  }

  String renameMethod(String key) {
    return Recase.instance.toCamelCase(_guard(key));
  }

  String renameEnum(String key) {
    return Recase.instance.toPascalCase(_guard(key));
  }

  String renameRefClass(OpenApiSchemaRef value) {
    return renameClass(_guard(value.ref!.split('/').last));
  }

  String renameClass(String value) {
    final name = Recase.instance.toPascalCase(_guard(value));

    if (name.endsWith('NoneType')) {
      return  name.substring(0, name.length - 8);
    }

    return name;
  }

  String renameFile(String key) {
    final name = Recase.instance.toSnakeCase(_guard(key));

    if (name.endsWith('none_type')) {
      return name.substring(0, name.length - 9);
    }

    return name;
  }
}
