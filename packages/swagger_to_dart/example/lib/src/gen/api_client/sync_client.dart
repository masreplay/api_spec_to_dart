library sync_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'sync_client.g.dart';

@RestApi()
abstract class SyncClient {
  factory SyncClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _SyncClient;

  @GET("/api/sync/pull")
  Future<HttpResponse<List<Change>>> syncApiSyncPullGet({
    @Queries() required SyncApiSyncPullGetQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Sync'],
      r'summary': r'Pulls all changes since the last pull.',
      r'parameters': [
        {
          r'name': r'lastId',
          r'in': r'query',
          r'description': r'The last change id to sync from.',
          r'schema': {
            r'type': r'string',
            r'format': r'uuid',
            r'nullable': true,
          },
        },
        {
          r'name': r'pageSize',
          r'in': r'query',
          r'description':
              r'Maximum number of changes to return (default 1000, max 5000)',
          r'schema': {
            r'type': r'integer',
            r'format': r'int32',
            r'default': 1000,
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {r'$ref': r'#/components/schemas/Change'},
              },
            },
          },
        },
      },
    },
  });
  @POST("/api/sync/push")
  Future<HttpResponse> syncApiSyncPushPost({
    @Body() required List<Change> requestBody,
    @Header("X-Server-Source-Id")
    required String xMinusServerMinusSourceMinusId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Sync'],
      r'summary': r'Pushes changes.',
      r'parameters': [
        {
          r'name': r'X-Server-Source-Id',
          r'in': r'header',
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {
              r'type': r'array',
              r'items': {r'$ref': r'#/components/schemas/Change'},
            },
          },
        },
      },
      r'responses': {
        r'200': {r'description': r'OK'},
      },
    },
  });
}
