library;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'union_client.g.dart';

@RestApi()
abstract class UnionClient {
  factory UnionClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _UnionClient;

  /// post
  /// {
  ///     "tags": [
  ///         "union"
  ///     ],
  ///     "summary": "Create an animal based on type discriminator",
  ///     "operationId": "union-create_animal",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "oneOf": [
  ///                         {
  ///                             "$ref": "#/components/schemas/Dog"
  ///                         },
  ///                         {
  ///                             "$ref": "#/components/schemas/Cat"
  ///                         },
  ///                         {
  ///                             "$ref": "#/components/schemas/Parrot"
  ///                         }
  ///                     ],
  ///                     "title": "Animal",
  ///                     "discriminator": {
  ///                         "propertyName": "type",
  ///                         "mapping": {
  ///                             "dog": "#/components/schemas/Dog",
  ///                             "cat": "#/components/schemas/Cat",
  ///                             "parrot": "#/components/schemas/Parrot"
  ///                         }
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     },
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/CreateAnimalResponse"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @POST('/union/models/animal')
  Future<HttpResponse<CreateAnimalResponse>> unionCreateAnimal({
    @Body() required Animal requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
