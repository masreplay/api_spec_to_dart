import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String baseUrl}) = _FilesClient;

  /// files-upload_file
  @MultiPart()
  @POST('/api/v1/common/files/upload')
  Future<HttpResponse<dynamic>> uploadFile(
    @Body() BodyFilesUploadFile body,
  );

  /// files-delete_file
  @DELETE('/api/v1/common/files/delete/{id}')
  Future<HttpResponse<dynamic>> deleteFile(
    @Path('id') int id,
  );
}
