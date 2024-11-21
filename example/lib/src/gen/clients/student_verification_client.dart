import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_verification_client.g.dart';

///
@RestApi()
abstract class StudentVerificationClient {
  factory StudentVerificationClient(Dio dio, {String baseUrl}) =
      _StudentVerificationClient;
}
