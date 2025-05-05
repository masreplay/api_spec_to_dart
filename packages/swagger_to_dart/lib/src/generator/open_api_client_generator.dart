import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/retrofit_class_code_builder.dart';
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiClientGenerator {
  const OpenApiClientGenerator(this.context);

  final CodeGenerationContext context;

  Library generate({
    required OpenApiPaths path,
    required String clientName,
    required List<String> tagPaths,
  }) {
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
}
