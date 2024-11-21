import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String baseUrl}) = _FilesClient;

  /// files-upload_file
  /// Upload File
  @MultiPart()
  @POST('/api/v1/common/files/upload')
  Future<HttpResponse<BaseResponseUnionFilePublic>> uploadFile({
    @Body() required BodyFilesUploadFile body,
  });

  /// files-delete_file
  /// Delete File
  @DELETE('/api/v1/common/files/delete/{id}')
  Future<HttpResponse<BaseResponse>> deleteFile({
    @Path('id') required int id,
  });
}
