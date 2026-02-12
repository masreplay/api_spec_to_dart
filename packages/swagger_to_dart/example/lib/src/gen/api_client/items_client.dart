library items_client;

import 'package:dio/dio.dart' hide Headers;
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

  @POST("/items/")
  Future<HttpResponse<ItemResponse>> itemsCreateItem({
    @Body() required ItemRequestBody requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'items'],
      r'summary': r'Create Item',
      r'operationId': r'items-create_item',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ItemRequestBody'},
          },
        },
        r'required': true,
      },
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/app__router__items_router__ItemResponse',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
}
