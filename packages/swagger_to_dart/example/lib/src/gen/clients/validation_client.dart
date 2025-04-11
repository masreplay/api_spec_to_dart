import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'validation_client.g.dart';

@RestApi()
abstract class ValidationClient {
  factory ValidationClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ValidationClient;

  /// OperationId: validation-param_path
  /// Summery: Demonstrate path parameter validation
  /// Description: Path parameter with validation.
  @GET('/params/path/{item_id}')
  Future<HttpResponse> validationParamPath({
    @Path('item_id') required int itemId,
  });

  /// OperationId: validation-param_query
  /// Summery: Demonstrate query parameter validation
  /// Description: Query parameters with validation.
  @GET('/params/query')
  Future<HttpResponse> validationParamQuery({
    @Queries() required ValidationParamQueryQueries queries,
  });

  /// OperationId: validation-param_body
  /// Summery: Demonstrate body parameter validation
  /// Description: Body parameters with validation.
  @POST('/params/body')
  Future<HttpResponse> validationParamBody({
    @Body() required BodyValidationParamBody body,
  });

  /// OperationId: validation-param_cookie
  /// Summery: Param Cookie
  /// Description: Cookie parameters.
  @GET('/params/cookie')
  Future<HttpResponse> validationParamCookie();

  /// OperationId: validation-param_header
  /// Summery: Param Header
  /// Description: Header parameters.
  @GET('/params/header')
  Future<HttpResponse> validationParamHeader({
    @Header('user-agent') required String userAgent,
    @Header('x-token') required String? xToken,
  });

  /// OperationId: validation-validation_complex
  /// Summery: Demonstrate complex model validation
  /// Description: Process a model with complex validation rules.
  @POST('/validation/complex')
  Future<HttpResponse<AllTypesWithValidation>> validationValidationComplex({
    @Body() required AllTypesWithValidation body,
  });

  /// OperationId: validation-validation_conditional
  /// Summery: Demonstrate conditional validation
  /// Description: Validate that at least one parameter is provided.
  @GET('/validation/conditional')
  Future<HttpResponse> validationValidationConditional({
    @Queries() required ValidationValidationConditionalQueries queries,
  });

  /// OperationId: validation-validation_conditional_body
  /// Summery: Validate a model with conditional requirements
  /// Description: Validate a body with conditional validation.
  @POST('/validation/conditional_body')
  Future<HttpResponse<ConditionalBody>> validationValidationConditionalBody({
    @Body() required ConditionalBody body,
  });

  /// OperationId: validation-constrained_int
  /// Summery: Demonstrate constrained integer validation
  /// Description: Handle constrained integer with validation.
  @GET('/constrained/int')
  Future<HttpResponse> validationConstrainedInt({
    @Queries() required ValidationConstrainedIntQueries queries,
  });

  /// OperationId: validation-constrained_float
  /// Summery: Demonstrate constrained float validation
  /// Description: Handle constrained float with validation.
  @GET('/constrained/float')
  Future<HttpResponse> validationConstrainedFloat({
    @Queries() required ValidationConstrainedFloatQueries queries,
  });

  /// OperationId: validation-constrained_string
  /// Summery: Demonstrate constrained string validation
  /// Description: Handle constrained string with validation.
  @GET('/constrained/string')
  Future<HttpResponse> validationConstrainedString({
    @Queries() required ValidationConstrainedStringQueries queries,
  });
}
