import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/open_api_to_dart_type_converter.dart';
import 'package:swagger_to_dart/src/utils/naming_utils.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

String handleOpenApiOneOfToDartType(
  String key,
  OpenApiSchemaOneOf model,
  OpenApiToDartTypeConverter typeConverter,
) {
  final className = NamingUtils.instance.renameClass(key);

  generateUnionFile(
    key: key,
    className: className,
    model: model,
    config: config,
  );

  return className;
}

String generateUnionFile({
  required String key,
  required String className,
  required OpenApiSchemaOneOf model,
  required SwaggerToDartConfig config,
}) {
  final filename = NamingUtils.instance.renameFile(key);

  final unionTypes = <(String, String)>[];
  model.discriminator.mapping.entries.map((e) {
    unionTypes.add(
        (e.key, NamingUtils.instance.renameClass(e.value.split('/').last)));
  }).toList();

  // TODO: generate union file

  if (!Directory(pathConfig.modelsOutputDirectory).existsSync()) {
    Directory(pathConfig.modelsOutputDirectory).createSync(recursive: true);
  }

  final filepath = path.join(
    pathConfig.modelsOutputDirectory,
    '${NamingUtils.instance.renameFile(className)}.dart',
  );

  final file = File(filepath);

  file.writeAsString(content);

  print('Generated: $filepath');
  globalUnionClasses.add(className);

  return className;
}
