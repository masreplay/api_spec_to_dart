import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/src/config/open_api_to_dart_type_converter.dart';
import 'package:swagger_to_dart/src/utils/renaming.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

String handleOpenApiOneOfToDartType(
  String key,
  OpenApiSchemaOneOf model,
  OpenApiToDartTypeConverter typeConverter,
  CodeGenerationContext context,
) {
  final className = Renaming.instance.renameClass(key);

  generateUnionFile(
    key: key,
    className: className,
    model: model,
    context: context,
  );

  return className;
}

String generateUnionFile({
  required String key,
  required String className,
  required OpenApiSchemaOneOf model,
  required CodeGenerationContext context,
}) {
  final unionTypes = <(String, String)>[];
  model.discriminator.mapping.entries.map((e) {
    unionTypes
        .add((e.key, Renaming.instance.renameClass(e.value.split('/').last)));
  }).toList();

  // TODO: generate union file

  if (!Directory(context.pathConfig.modelsOutputDirectory).existsSync()) {
    Directory(pathConfig.modelsOutputDirectory).createSync(recursive: true);
  }

  final filepath = path.join(
    pathConfig.modelsOutputDirectory,
    '${Renaming.instance.renameFile(className)}.dart',
  );

  final file = File(filepath);

  file.writeAsString(content);

  print('Generated: $filepath');
  globalUnionClasses.add(className);

  return className;
}
