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

  @POST('/items/')
  Future<HttpResponse<ItemResponse>> itemsCreateItem({
    @Body() required ItemRequestBody requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['items'],
      'summary': 'Create Item',
      'operationId': 'items-create_item',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/ItemRequestBody'},
          },
        },
        'required': true,
      },
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {
                '\$ref': '#/components/schemas/app__router__items_router__ItemResponse',
              },
            },
          },
        },
        '422': {
          'description': 'Validation Error',
          'content': {
            'application/json': {
              'schema': {'\$ref': '#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
}
