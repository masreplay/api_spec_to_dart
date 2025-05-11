import 'package:recase/recase.dart';
import 'package:swagger_to_dart/src/parser/openapi/models/models.dart';

class Renaming {
  const Renaming._();

  static Renaming get _instance => const Renaming._();

  static Renaming get instance => _instance;

  String renameProperty(String key) {
    return key.camelCase;
  }

  String renameMethod(String key) {
    return key.camelCase;
  }

  String renameEnum(String key) {
    return key.pascalCase;
  }

  String renameRefClass(OpenApiSchemaRef value) {
    return renameClass(value.ref!.split('/').last);
  }

  String renameClass(String value) {
    final name = value.pascalCase;

    if (name.endsWith('NoneType')) {
      return name.substring(0, name.length - 8);
    }

    return name;
  }

  String renameFile(String key) {
    final name = key.snakeCase;

    if (name.endsWith('none_type')) {
      return name.substring(0, name.length - 9);
    }

    return name;
  }
}
