import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_reset_password_client.g.dart';

@RestApi()
abstract class StudentResetPasswordClient {
  factory StudentResetPasswordClient(Dio dio, {String baseUrl}) =
      _StudentResetPasswordClient;
}
