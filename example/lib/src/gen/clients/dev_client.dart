import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'dev_client.g.dart';

@RestApi()
abstract class DevClient {
  factory DevClient(Dio dio, {String baseUrl}) = _DevClient;

  /// dev-trigger_error
  /// Trigger Error
  @GET('/dev/sentry-debug')
  Future<HttpResponse> devTriggerError();

  /// dev-proxy_to_minio
  /// Proxy To Minio
  @GET('/dev/s3/{file_path}')
  Future<HttpResponse> devProxyToMinio({
    @Path('file_path') required String filePath,
  });

  /// dev-upload_file
  /// Upload File
  @MultiPart()
  @POST('/dev/upload-file/')
  Future<HttpResponse> devUploadFile({
    @Body() required BodyDevUploadFile body,
  });
}
