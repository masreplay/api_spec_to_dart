import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';

import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';

class ApiClientGenerator {
  const ApiClientGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    if (context.openApi.components case final openApiComponents?) {
      for (final entry in openApiComponents.schemas.entries) {
        final result = build(entry);

        context.addModel(result);
      }
    }
  }

  Library build(MapEntry<String, OpenApiSchemas> model) {
    return RetrofitClassCodeBuilder.instance.class_(
      className: clientName,
      parameters: [],
    );
  }
}
