import 'dart:convert';
import 'dart:io';

import 'package:logger/logger.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

final logger = Logger();

Future<void> main(List<String> args) async {
  final path = './bin/example/swagger.json';

  final file = File(path);

  if (!file.existsSync()) {
    print('File not found');
    return;
  }

  final content = await file.readAsString();

  final json = jsonDecode(content);

  final openApi = OpenApi.fromJson(json);

  final validatedJson = JsonFactory.instance.encode(openApi.toJson());

  print(validatedJson);

  File('./bin/gen.json').writeAsStringSync(validatedJson);
}
