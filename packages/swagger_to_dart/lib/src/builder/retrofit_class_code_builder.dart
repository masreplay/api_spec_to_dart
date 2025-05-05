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
    required String className,
    String? filename,
    required List<Parameter> parameters,
  }) {
    filename = filename ?? Renaming.instance.renameFile(className);
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
