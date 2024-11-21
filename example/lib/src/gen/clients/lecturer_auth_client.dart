import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'lecturer_auth_client.g.dart';

///
@RestApi()
abstract class LecturerAuthClient {
  factory LecturerAuthClient(Dio dio, {String baseUrl}) = _LecturerAuthClient;
}
