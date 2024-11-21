import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'files_client.g.dart';

///
@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String baseUrl}) = _FilesClient;
}
