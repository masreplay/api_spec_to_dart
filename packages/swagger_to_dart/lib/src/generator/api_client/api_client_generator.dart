import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class ApiClientGenerator {
  const ApiClientGenerator(this.context);

  final GenerationContext context;

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
