class FreezedClassGenerator {
  const FreezedClassGenerator();
  
  String generateDefaultTemplate({
    required String dartPackageName,
    required String modelName,
    required String fileName,
  }) {
    final String fieldsText = '';

    return '''
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:${dartPackageName}/models/models.dart';

part '${fileName}.freezed.dart';
part '${fileName}.g.dart';

@freezed
class ${modelName} with _\$${modelName} {
    const factory ${modelName}({
        ${fieldsText}
    }) = _${modelName};

    factory ${modelName}.fromJson(Map<String, dynamic> json) => _\$${modelName}FromJson(json);
}
''';
  }
}
