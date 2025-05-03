import '../parser/swagger/models/models.dart';
import 'recase.dart';

class NamingUtils {
  const NamingUtils._();

  static NamingUtils get _instance => NamingUtils._();

  static NamingUtils get instance => _instance;

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
