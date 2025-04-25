import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';
part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _FilesClient;

  /// OperationId: files-form_basic
  /// Summary: Handle basic form data
  /// Description: Handle form data.
  @POST('/forms/basic')
  Future<HttpResponse> filesFormBasic();

  /// OperationId: files-file_upload
  /// Summary: Handle single file upload
  /// Description: Handle file upload.
  @POST('/files/upload')
  Future<HttpResponse> filesFileUpload();

  /// OperationId: files-files_multiple
  /// Summary: Handle multiple file uploads
  /// Description: Handle multiple file uploads.
  @POST('/files/multiple')
  Future<HttpResponse> filesFilesMultiple();
}
