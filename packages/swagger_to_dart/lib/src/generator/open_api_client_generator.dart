import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/retrofit_class_code_builder.dart';
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/src/utils/renaming.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiClientGenerator {
  const OpenApiClientGenerator(this.context);

  final CodeGenerationContext context;

  Library generate({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
  }) {
    // final privateMethods = <({String methodName, OpenApiPathMethod method})>[];
    // for (final tagPath in tagPaths) {
    //   final method = path[tagPath]!;

    //   for (final entry in method.methods.entries) {
    //     final String methodType = entry.key;
    //     final OpenApiPathMethod method = entry.value;

    //     // method name
    //     final methodName = Renaming.instance.renameMethod(
    //       method.operationId ?? "${methodType}_${tagPath.replaceAll('/', '_')}",
    //     );

    //     // response / return type
    //     final responses = method.responses ?? {};
    //     final successResponse = responses['200'] ?? responses['201'];

    //     final response = _getDartType(
    //       successResponse?.content?.current.value?.schema,
    //       methodName,
    //     );

    //     // request type + http method type + path / annotation
    //     final requestBody = method.requestBody?.content.current;
    //     final isMultipart = requestBody?.key == 'MultiPart()';
    //     if (isMultipart)
    //       privateMethods.add((methodName: methodName, method: method));

    //     if (requestBody?.key case final key?) {
    //       writeln('@${key}');
    //     }

    //     final retrofitHttpMethodType = Recase.instance.toScreamingSnakeCase(
    //       methodType,
    //     );

    //     if (method.deprecated == true) {
    //       writeln('@deprecated');
    //     }
    //     writeln('''@${retrofitHttpMethodType}('${tagPath}')''');

    //     final propertiesSnippets = <String>[];

    //     final parameters = method.parameters ?? [];

    //     /// queries / properties
    //     final queriesParams = parameters
    //         .where((e) => e.in_ == OpenApiPathMethodParameterType.query)
    //         .toList();

    //     if (queriesParams.isNotEmpty) {
    //       final queriesClass = generateQueriesClass(queriesParams, methodName);

    //       propertiesSnippets.add(
    //         '''@Queries() required ${Renaming.instance.renameClass(queriesClass)} queries,''',
    //       );
    //     }

    //     /// path params / properties
    //     final pathParams = parameters.where(
    //       (e) => e.in_ == OpenApiPathMethodParameterType.path,
    //     );

    //     for (final pathParam in pathParams) {
    //       final dartType = _getDartType(pathParam.schema, methodName);
    //       final paramName = Renaming.instance.renameProperty(pathParam.name);

    //       propertiesSnippets.add(
    //         '''@Path('${pathParam.name}') required $dartType $paramName,''',
    //       );
    //     }

    //     // body / properties
    //     if (requestBody != null) {
    //       final body = requestBody.value?.schema;

    //       final dartType =
    //           body == null ? 'dynamic' : _getDartType(body, methodName);

    //       if (isMultipart) {
    //         propertiesSnippets.add(
    //           '''@Part() required Map<String, dynamic> body,''',
    //         );
    //       } else {
    //         propertiesSnippets.add('''@Body() required $dartType body,''');
    //       }
    //     }

    //     /// headers / properties
    //     // print(
    //     //   "skippedParameters: ${skippedParameters} ${parameters.where((e) => e.in_ == OpenApiPathMethodParameterType.header).map((e) => e.name).toList().join(',')}",
    //     // );

    //     final headerParams = parameters
    //         .where(
    //           (e) =>
    //               e.in_ == OpenApiPathMethodParameterType.header &&
    //               !skippedParameters.contains(e.name),
    //         )
    //         .toList();

    //     for (final headerParam in headerParams) {
    //       final dartType = _getDartType(headerParam.schema, methodName);
    //       final paramName = Renaming.instance.renameProperty(headerParam.name);
    //       propertiesSnippets.add(
    //         '''@Header('${headerParam.name}') required $dartType $paramName,''',
    //       );
    //     }

    //     String propertiesCode = '';

    //     if (propertiesSnippets.isNotEmpty) {
    //       propertiesCode = '''{${propertiesSnippets.join('\n')}}''';
    //     }

    //     final returnType = response == null ||
    //             response == 'dynamic' ||
    //             response == 'Map<String, dynamic>'
    //         ? 'Future<HttpResponse>'
    //         : 'Future<HttpResponse<${response}>>';

    //     writeln(
    //       '''$returnType ${isMultipart ? '_' : ''}$methodName($propertiesCode);''',
    //     );
    //   }
    // }

    return RetrofitClassCodeBuilder.instance.class_(
      className: clientName,
      parameters: [],
    );
  }

  Library generateQueriesClass(
    List<OpenApiPathMethodParameter> queries,
    String name,
  ) {
    final generator = OpenApiModelGenerator(context);

    final className = '${name}Queries';

    final params = queries.map((e) {
      return MapEntry(e.name, e.schema);
    }).toList();

    return generator.run(
      MapEntry(
        className,
        OpenApiSchemas(
          type: 'object',
          properties: Map.fromIterable(
            params,
            key: (e) => e.key,
            value: (e) => e.value,
          ),
        ),
      ),
    );
  }

  String? _getDartType(OpenApiSchema? model, String className) {
    if (model == null) return null;

    return switch (model) {
      OpenApiSchemaType value => context.dartTypeConverter.dartType(
          type: value.type,
          format: value.format,
          genericType: switch (value.items) {
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
            OpenApiSchemaAnyOf value =>
              context.dartTypeConverter.convertOpenApiAnyOfToDartType(
                value,
                context.dartTypeConverter,
              ),
            _ => null,
          },
          items: value.items,
          title: value.title,
        ),
      OpenApiSchemaRef value => Renaming.instance.renameRefClass(value),
      OpenApiSchemaAnyOf value =>
        context.dartTypeConverter.convertOpenApiAnyOfToDartType(
          value,
          context.dartTypeConverter,
        ),
      OpenApiSchemaOneOf value => handleOpenApiOneOfToDartType(
          '${className}Union${value.title ?? 'Model'}',
          value,
          context.dartTypeConverter,
        ),
    };
  }
}
