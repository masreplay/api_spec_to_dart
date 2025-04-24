import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

String convertOpenApiAnyOfToDartType(
  OpenApiSchemaAnyOf value,
  DartTypeConverter typeConverter,
) {
  // Check for common pattern of nullable types (anyOf with one type and null)
  if (value.anyOf?.length == 2) {
    // Check if one of the types is null
    final hasNullType = value.anyOf!.any(
      (schema) =>
          schema is OpenApiSchemaType &&
          schema.type == OpenApiSchemaVarType.null_,
    );

    if (hasNullType) {
      // Get the non-null type
      final nonNullSchema = value.anyOf!.firstWhere(
        (schema) => !(schema is OpenApiSchemaType &&
            schema.type == OpenApiSchemaVarType.null_),
      );

      // Return the non-null type with a ? to indicate it's nullable
      return switch (nonNullSchema) {
        OpenApiSchemaType value => typeConverter.dartType(
              type: value.type,
              format: value.format,
              genericType: switch (value.items) {
                OpenApiSchemaRef value =>
                  typeConverter.namingUtils.renameRefClass(value),
                OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                    value,
                    typeConverter,
                  ),
                _ => null,
              },
              items: value.items,
              title: value.title,
            ) +
            '?',
        OpenApiSchemaRef value =>
          typeConverter.namingUtils.renameRefClass(value) + '?',
        OpenApiSchemaAnyOf value =>
          convertOpenApiAnyOfToDartType(value, typeConverter) + '?',
        OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
              value.title ?? 'UnionModel',
              value,
              typeConverter,
            ) +
            '?',
      };
    }
  }

  // If it's not a simple nullable type, then it's a union of multiple types
  // In Dart, we'll use dynamic since it can hold any of these types
  return 'dynamic';
}

String generateOpenApiOneOfToDartType(
  String key,
  OpenApiSchemaOneOf model,
  DartTypeConverter typeConverter,
) {
  final namingUtils = typeConverter.namingUtils;
  final importConfig = ImportConfig(baseConfig: typeConverter.baseConfig);
  final pathConfig = PathConfig(baseConfig: typeConverter.baseConfig);

  final filename = namingUtils.renameFile(key);
  final className = namingUtils.renameClass(key);

  // Generate Freezed Union Class
  final unionTypes = <(String, String)>[];
  model.discriminator.mapping.entries.forEach((e) {
    unionTypes.add((e.key, namingUtils.renameClass(e.value.split('/').last)));
  });

  // Create a library builder
  final library = LibraryBuilder();

  // Add imports
  library.directives.addAll([
    Directive.import('dart:io'),
    Directive.import('package:freezed_annotation/freezed_annotation.dart'),
    Directive.import('package:dio/dio.dart'),
    Directive.import('convertors.dart'),
    ...importConfig.importModelsCode.map(Directive.import),
    Directive.part('${filename}.freezed.dart'),
    Directive.part('${filename}.g.dart'),
  ]);

  // Define the union class
  final unionClass = ClassBuilder()
    ..name = className
    ..annotations.add(CodeExpression(Code('freezed')))
    ..docs.add('/// $key')
    ..constructors.add(Constructor((b) {
      b.factory = true;
      b.redirect = refer('${className}Fallback');
    }))
    ..constructors.addAll(unionTypes.map((type) {
      return Constructor((b) {
        b.factory = true;
        b.redirect =
            refer('${namingUtils.renameClass('${className}_${type.$1}')}');
        b.requiredParameters.add(Parameter((p) => p
          ..name = 'value'
          ..type = refer(type.$2)));
        b.annotations
            .add(CodeExpression(Code('FreezedUnionValue("${type.$1}")')));
      });
    }).toList()) // Ensure `.toList()` is called here
    ..methods.add(Method((b) {
      b.name = 'fromJson';
      b.returns = refer(className);
      b.static = true;
      b.body = Code('return _\$${className}FromJson(json);');
      b.requiredParameters.add(Parameter((p) => p
        ..name = 'json'
        ..type = refer('Map<String, dynamic>')));
    }));

  library.body.add(unionClass.build());

  // Generate the Dart code
  final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
  final generatedCode = library.build().accept(emitter).toString();

  // Write the generated code to a file
  final filepath = path.join(
    pathConfig.modelsOutputDirectory,
    '${namingUtils.renameFile(className)}.dart',
  );

  final file = File(filepath);
  if (!file.parent.existsSync()) {
    file.parent.createSync(recursive: true);
  }
  file.writeAsStringSync(generatedCode);

  print('Generated: $filepath');

  return className;
}
