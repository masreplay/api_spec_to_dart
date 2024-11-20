import 'dart:convert';
import 'dart:io';

import 'package:logger/logger.dart';
import 'package:swagger_to_dart/src/swagger/models/open_api.dart';

final logger = Logger();

Future<void> main(List<String> args) async {
  final path = './bin/swagger.json';

  final file = File(path);

  if (!file.existsSync()) {
    print('File not found');
    return;
  }

  final content = await file.readAsString();

  final json = jsonDecode(content);

  final openApi = OpenApi.fromJson(json);

  final validatedJson = JsonEncoder.withIndent('  ').convert(openApi.toJson());

  print(validatedJson);

  File('./bin/gen.json').writeAsStringSync(validatedJson);
}
