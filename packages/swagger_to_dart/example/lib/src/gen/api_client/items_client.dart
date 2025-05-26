library items_client;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'items_client.g.dart';

@RestApi()
abstract class ItemsClient {
  factory ItemsClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _ItemsClient;

  /// post
  /// {
  ///     "tags": [
  ///         "items"
  ///     ],
  ///     "summary": "Create Item",
  ///     "operationId": "items-create_item",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/ItemRequestBody"
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
  ///                         "$ref": "#/components/schemas/app__router__items_router__ItemResponse"
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
  @POST("/items/")
  Future<HttpResponse<AppRouterItemsRouterItemResponse>> itemsCreateItem({
    @Body() required ItemRequestBody requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
