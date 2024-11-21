import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_os_client.g.dart';

@RestApi()
abstract class StudentOSClient {
  factory StudentOSClient(Dio dio, {String baseUrl}) = _StudentOSClient;

  /// student_os-read_organizational_structure_for_student
  /// Read Organizational Structure For Student
  @GET('/api/v1/student/os/me')
  Future<HttpResponse<dynamic>> readOrganizationalStructureForStudent();
}
