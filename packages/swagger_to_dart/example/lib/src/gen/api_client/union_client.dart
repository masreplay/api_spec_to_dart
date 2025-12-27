library union_client;

import 'package:dio/dio.dart' hide Headers;
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

  @POST("/union/models/animal")
  Future<HttpResponse<CreateAnimalResponse>> unionCreateAnimal({
    @Body() required Animal requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'union'],
      r'summary': r'Create an animal based on type discriminator',
      r'operationId': r'union-create_animal',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {
              r'oneOf': [
                {r'$ref': r'#/components/schemas/Dog'},
                {r'$ref': r'#/components/schemas/Cat'},
                {r'$ref': r'#/components/schemas/Parrot'},
              ],
              r'title': r'Animal',
              r'discriminator': {
                r'propertyName': r'type',
                r'mapping': {
                  r'dog': r'#/components/schemas/Dog',
                  r'cat': r'#/components/schemas/Cat',
                  r'parrot': r'#/components/schemas/Parrot',
                },
              },
            },
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
                r'$ref': r'#/components/schemas/CreateAnimalResponse',
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
