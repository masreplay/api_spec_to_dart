import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

String commentLine(String line) {
  return '''/// ${line.split('\n').join('\n/// ')}''';
}

class OpenApiClientGenerator {
  const OpenApiClientGenerator({required this.config});

  final ConfigComponents config;

  ({String filename, String content}) generator({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
  }) {
    final library = LibraryBuilder();

    // Add imports
    library.directives.addAll([
      Directive.import('package:dio/dio.dart'),
      Directive.import('package:retrofit/retrofit.dart'),
      ...config.importConfig.importModelsCode
          .map((importPath) => Directive.import(importPath)),
    ]);

    final fileName = '${config.namingUtils.renameFile(clientName)}_client';
    library.directives.add(Directive.part('$fileName.g.dart'));

    // Define the class
    final className = '${config.namingUtils.renameClass(clientName)}Client';
    final clientClass = ClassBuilder()
      ..name = className
      ..abstract = true
      ..annotations.add(CodeExpression(Code('RestApi()')))
      ..constructors.add(Constructor((b) {
        b.factory = true;
        b.redirect = refer('_$className');
        b.requiredParameters.add(Parameter((p) => p
          ..name = 'dio'
          ..type = refer('Dio')));
        b.optionalParameters.add(Parameter((p) => p
          ..named = true
          ..name = 'baseUrl'
          ..type = refer('String?')));
        b.optionalParameters.add(Parameter((p) => p
          ..named = true
          ..name = 'errorLogger'
          ..type = refer('ParseErrorLogger?')));
      }));

    // Generate methods
    for (final tagPath in tagPaths) {
      final method = path[tagPath]!;

      for (final entry in method.methods.entries) {
        final methodType = entry.key;
        final OpenApiPathMethod method = entry.value;

        // Method name
        final methodName = config.namingUtils.renameMethod(
          method.operationId ?? "${methodType}_${tagPath.replaceAll('/', '_')}",
        );

        // Define the method
        final methodBuilder = MethodBuilder()
          ..name = methodName
          ..returns = _getReturnType(method.responses, methodName);

        // Add comments
        if (method.operationId != null) {
          methodBuilder.docs.add('/// OperationId: ${method.operationId}');
        }
        if (method.summary != null) {
          methodBuilder.docs.add('/// Summary: ${method.summary}');
        }
        if (method.description != null) {
          methodBuilder.docs.add('/// Description: ${method.description}');
        }

        // Add annotations
        if (method.deprecated == true) {
          methodBuilder.annotations.add(CodeExpression(Code('deprecated')));
        }
        methodBuilder.annotations.add(CodeExpression(
          Code('${methodType.toUpperCase()}(\'$tagPath\')'),
        ));

        // Add parameters
        final parameters = method.parameters ?? [];
        for (final param in parameters) {
          final paramName = config.namingUtils.renameProperty(param.name);
          final paramType = _getDartType(param.schema, methodName);
          final annotation = _getParameterAnnotation(param);

          methodBuilder.optionalParameters.add(Parameter((p) => p
            ..name = paramName
            ..type = refer(paramType!)
            ..named = true
            ..annotations.add(CodeExpression(Code(annotation)))));
        }

        // Add the method to the class
        clientClass.methods.add(methodBuilder.build());
      }
    }

    library.body.add(clientClass.build());

    // Generate the Dart code
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final generatedCode = library.build().accept(emitter).toString();

    return (filename: fileName, content: generatedCode);
  }

  String _getParameterAnnotation(OpenApiPathMethodParameter param) {
    switch (param.in_) {
      case OpenApiPathMethodParameterType.query:
        return 'Query(\'${param.name}\')';
      case OpenApiPathMethodParameterType.path:
        return 'Path(\'${param.name}\')';
      case OpenApiPathMethodParameterType.header:
        return 'Header(\'${param.name}\')';
      default:
        return '';
    }
  }

  Reference _getReturnType(Map<String, dynamic>? responses, String methodName) {
    final successResponse = responses?['200'];
    final responseType = _getDartType(
        successResponse?.content?.current.value?.schema, methodName);

    if (responseType == null ||
        responseType == 'dynamic' ||
        responseType == 'Map<String, dynamic>') {
      return refer('Future<HttpResponse>');
    } else {
      return refer('Future<HttpResponse<$responseType>>');
    }
  }

  String? _getDartType(OpenApiSchema? model, String className) {
    if (model == null) return null;

    return switch (model) {
      OpenApiSchemaType value => config.dartTypeConverter.dartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
            OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
                value,
                config.dartTypeConverter,
              ),
            _ => null,
          },
          items: value.items,
          title: value.title,
        ),
      OpenApiSchemaRef value => config.namingUtils.renameRefClass(value),
      OpenApiSchemaAnyOf value => convertOpenApiAnyOfToDartType(
          value,
          config.dartTypeConverter,
        ),
      OpenApiSchemaOneOf value => generateOpenApiOneOfToDartType(
          '${className}Union${value.title ?? 'Model'}',
          value,
          config.dartTypeConverter,
        ),
    };
  }
}
