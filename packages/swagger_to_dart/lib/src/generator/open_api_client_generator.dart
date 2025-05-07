import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/retrofit_class_code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class OpenApiClientGenerator {
  const OpenApiClientGenerator(this.generator);

  final SwaggerToDartCodeGenerator generator;

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
}
