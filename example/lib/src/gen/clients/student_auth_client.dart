import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_auth_client.g.dart';

///
@RestApi()
abstract class StudentAuthClient {
  factory StudentAuthClient(Dio dio, {String baseUrl}) = _StudentAuthClient;
}
