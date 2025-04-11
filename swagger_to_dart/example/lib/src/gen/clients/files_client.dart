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
  /// Summery: Handle basic form data
  /// Description: Handle form data.
  @FormUrlEncoded()
  @POST('/forms/basic')
  Future<HttpResponse> filesFormBasic({
    @Body() required BodyFilesFormBasic body,
  });

  /// OperationId: files-file_upload
  /// Summery: Handle single file upload
  /// Description: Handle file upload.
  @MultiPart()
  @POST('/files/upload')
  Future<HttpResponse> _filesFileUpload({
    @Part() required Map<String, dynamic> body,
  });

  /// OperationId: files-files_multiple
  /// Summery: Handle multiple file uploads
  /// Description: Handle multiple file uploads.
  @MultiPart()
  @POST('/files/multiple')
  Future<HttpResponse> _filesFilesMultiple({
    @Part() required Map<String, dynamic> body,
  });
}

extension FilesClientExtension on FilesClient {
  Future<HttpResponse> filesFileUpload({required BodyFilesFileUpload body}) {
    return _filesFileUpload(body: body.toJson());
  }

  Future<HttpResponse> filesFilesMultiple({
    required BodyFilesFilesMultiple body,
  }) {
    return _filesFilesMultiple(body: body.toJson());
  }
}
