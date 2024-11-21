import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_registration_client.g.dart';

///
@RestApi()
abstract class StudentRegistrationClient {
  factory StudentRegistrationClient(Dio dio, {String baseUrl}) =
      _StudentRegistrationClient;
}
