import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:swagger_to_dart/src/utils/renaming.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class RetrofitClassCodeBuilder {
  static const RetrofitClassCodeBuilder _instance =
      const RetrofitClassCodeBuilder._();

  const RetrofitClassCodeBuilder._();

  static RetrofitClassCodeBuilder get instance => _instance;

  Library class_({
    required String name,
    required List<Parameter> parameters,
  }) {
    final className = '${Renaming.instance.renameClass(name)}Client';
    final filename = Renaming.instance.renameFile(className);

    final privateMethods = <({String methodName, OpenApiPathMethod method})>[];
    for (final tagPath in tagPaths) {
      final method = path[tagPath]!;

      for (final entry in method.methods.entries) {
        final String methodType = entry.key;
        final OpenApiPathMethod method = entry.value;

        // method name
        final methodName = Renaming.instance.renameMethod(
          method.operationId ?? "${methodType}_${tagPath.replaceAll('/', '_')}",
        );

        // response / return type
        final responses = method.responses ?? {};
        final successResponse = responses['200'] ?? responses['201'];

        final response = _getDartType(
          successResponse?.content?.current.value?.schema,
          methodName,
        );

        // request type + http method type + path / annotation
        final requestBody = method.requestBody?.content.current;
        final isMultipart = requestBody?.key == 'MultiPart()';
        if (isMultipart)
          privateMethods.add((methodName: methodName, method: method));

        if (requestBody?.key case final key?) {
          writeln('@${key}');
        }

        final retrofitHttpMethodType = Recase.instance.toScreamingSnakeCase(
          methodType,
        );

        if (method.deprecated == true) {
          writeln('@deprecated');
        }
        writeln('''@${retrofitHttpMethodType}('${tagPath}')''');

        final propertiesSnippets = <String>[];

        final parameters = method.parameters ?? [];

        /// queries / properties
        final queriesParams = parameters
            .where((e) => e.in_ == OpenApiPathMethodParameterType.query)
            .toList();

        if (queriesParams.isNotEmpty) {
          final queriesClass = generateQueriesClass(queriesParams, methodName);

          propertiesSnippets.add(
            '''@Queries() required ${Renaming.instance.renameClass(queriesClass)} queries,''',
          );
        }

        /// path params / properties
        final pathParams = parameters.where(
          (e) => e.in_ == OpenApiPathMethodParameterType.path,
        );

        for (final pathParam in pathParams) {
          final dartType = _getDartType(pathParam.schema, methodName);
          final paramName = Renaming.instance.renameProperty(pathParam.name);

          propertiesSnippets.add(
            '''@Path('${pathParam.name}') required $dartType $paramName,''',
          );
        }

        // body / properties
        if (requestBody != null) {
          final body = requestBody.value?.schema;

          final dartType =
              body == null ? 'dynamic' : _getDartType(body, methodName);

          if (isMultipart) {
            propertiesSnippets.add(
              '''@Part() required Map<String, dynamic> body,''',
            );
          } else {
            propertiesSnippets.add('''@Body() required $dartType body,''');
          }
        }

        /// headers / properties
        // print(
        //   "skippedParameters: ${skippedParameters} ${parameters.where((e) => e.in_ == OpenApiPathMethodParameterType.header).map((e) => e.name).toList().join(',')}",
        // );

        final headerParams = parameters
            .where(
              (e) =>
                  e.in_ == OpenApiPathMethodParameterType.header &&
                  !skippedParameters.contains(e.name),
            )
            .toList();

        for (final headerParam in headerParams) {
          final dartType = _getDartType(headerParam.schema, methodName);
          final paramName = Renaming.instance.renameProperty(headerParam.name);
          propertiesSnippets.add(
            '''@Header('${headerParam.name}') required $dartType $paramName,''',
          );
        }

        String propertiesCode = '';

        if (propertiesSnippets.isNotEmpty) {
          propertiesCode = '''{${propertiesSnippets.join('\n')}}''';
        }

        final returnType = response == null ||
                response == 'dynamic' ||
                response == 'Map<String, dynamic>'
            ? 'Future<HttpResponse>'
            : 'Future<HttpResponse<${response}>>';

        writeln(
          '''$returnType ${isMultipart ? '_' : ''}$methodName($propertiesCode);''',
        );
      }
    }

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('package:retrofit/retrofit.dart'),
          Directive.import('package:dio/dio.dart'),
          Directive.part('${filename}.g.dart'),
        ])
        ..annotations.addAll([
          generateRestApiAnnotation(retrofit.RestApi()),
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..abstract = true
              ..name = className
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..constant = true
                    ..factory = true
                    ..redirect = refer('_${className}')
                    ..optionalParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'dio'
                          ..type = refer('Dio'),
                      ),
                    ])
                    ..requiredParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'baseUrl'
                          ..type = refer('String'),
                      ),
                      Parameter(
                        (b) => b
                          ..name = 'errorLogger'
                          ..type = refer('ParseErrorLogger'),
                      ),
                    ]),
                ),
              ])
              ..fields.addAll([])
              ..methods.addAll([]),
          ),
          Extension(
            (b) => b
              ..name = '${className}Extension'
              ..on = refer(className),
          ),
        ]),
    );
  }

  // if (privateMethods.isNotEmpty) {
  //   writeln('extension ${className}Extension on ${className} {');
  //   for (final entry in privateMethods) {
  //     final method = entry.method;

  //     final methodName = entry.methodName;

  //     // response / return type
  //     final responses = method.responses ?? {};
  //     final successResponse = responses['200'] ?? responses['201'];

  //     final response = _getDartType(
  //       successResponse?.content?.current.value?.schema,
  //       methodName,
  //     );

  //     final requestBody = method.requestBody?.content.current;
  //     final body = requestBody?.value?.schema;

  //     final dartType =
  //         body == null ? 'dynamic' : _getDartType(body, methodName);
  //     final parameters = method.parameters?.where((e) {
  //           return !(e.in_ == OpenApiPathMethodParameterType.header &&
  //               skippedParameters.contains(e.name));
  //         }) ??
  //         [];

  //     final params = StringBuffer();
  //     for (final param in parameters) {
  //       final dartType = _getDartType(param.schema, methodName);
  //       final paramName = NamingUtils.instance.renameProperty(param.name);
  //       params.writeln('required $dartType  $paramName,\n ');
  //     }

  //     final returnType = response == null ||
  //             response == 'dynamic' ||
  //             response == 'Map<String, dynamic>'
  //         ? 'Future<HttpResponse>'
  //         : 'Future<HttpResponse<${response}>>';

  //     writeln('''$returnType $methodName(
  //   {${params.toString()}
  //   required $dartType body,
  //   }
  //  ){
  //   return _$methodName(
  //     body: body.toJson(),
  //     ${parameters.map((e) => '${NamingUtils.instance.renameProperty(e.name)}: ${NamingUtils.instance.renameProperty(e.name)},').join(',\n')}
  //   );
  // }''');
  //   }
  // }

  Expression generateRestApiAnnotation(retrofit.RestApi restApi) {
    return refer('RestApi()');
  }
}
