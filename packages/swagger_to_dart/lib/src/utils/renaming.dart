import '../parser/openapi/models/models.dart';
import 'recase.dart';

class Renaming {
  const Renaming._();

  static Renaming get _instance => const Renaming._();

  static Renaming get instance => _instance;

  String renameProperty(String key) {
    return Recase.instance.toCamelCase(key);
  }

  String renameMethod(String key) {
    return Recase.instance.toCamelCase(key);
  }

  String renameEnum(String key) {
    return Recase.instance.toPascalCase(key);
  }

  String renameRefClass(OpenApiSchemaRef value) {
    return renameClass(value.ref!.split('/').last);
  }

  String renameClass(String value) {
    final name = Recase.instance.toPascalCase(value);

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
