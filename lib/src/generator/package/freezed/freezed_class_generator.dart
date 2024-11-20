class FreezedClassGenerator {
  const FreezedClassGenerator();

  String normalClassTemplate({
    required String fileName,
    required String modelName,
    required List<String> imports,
    required List<String> fields,
  }) {
    final body = fields.isEmpty
        ? ''
        : '''{
  ${fields.map((field) => '  $field,').join('\n')}
  }''';

    return '''
import 'package:freezed_annotation/freezed_annotation.dart';

${imports.join('\n')}

part '${fileName}.freezed.dart';
part '${fileName}.g.dart';

@freezed
class ${modelName} with _\$${modelName} {
  const factory ${modelName}($body) = _${modelName};

  factory ${modelName}.fromJson(Map<String, dynamic> json) => _\$${modelName}FromJson(json);
}
''';
  }
}
