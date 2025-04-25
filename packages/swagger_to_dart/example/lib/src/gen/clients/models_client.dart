import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';
part 'models_client.g.dart';

@RestApi()
abstract class ModelsClient {
  factory ModelsClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ModelsClient;

  /// OperationId: models-create_user
  /// Summary: Create a new user
  /// Description: Create a new user from a Pydantic model.
  @POST('/models/user')
  Future<HttpResponse<User>> modelsCreateUser();

  /// OperationId: models-get_location
  /// Summary: Process location information
  /// Description: Handle a Pydantic model as query parameters.
  @GET('/models/location')
  Future<HttpResponse> modelsGetLocation();

  /// OperationId: models-create_animal
  /// Summary: Create an animal based on type discriminator
  /// Description: Handle discriminated union of Pydantic models.
  @POST('/models/animal')
  Future<HttpResponse> modelsCreateAnimal();

  /// OperationId: models-response_filtered
  /// Summary: Return a filtered response model
  /// Description: Return a response filtered by the response_model.
  @GET('/response/filtered')
  Future<HttpResponse<UserBase>> modelsResponseFiltered();

  /// OperationId: models-response_multiple
  /// Summary: Return different response models based on query
  /// Description: Return different response models based on query parameters.
  @GET('/response/multiple')
  Future<HttpResponse> modelsResponseMultiple({@Query('is_user') bool isUser});

  /// OperationId: models-response_list
  /// Summary: Return a list of models
  /// Description: Return a list of items with a response model.
  @GET('/response/list')
  Future<HttpResponse<List<User>>> modelsResponseList();
}
