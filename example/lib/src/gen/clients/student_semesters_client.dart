import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_semesters_client.g.dart';

@RestApi()
abstract class StudentSemestersClient {
  factory StudentSemestersClient(Dio dio, {String baseUrl}) =
      _StudentSemestersClient;

  /// student_semesters-read_semesters
  @GET('/api/v1/student/semesters/{id}')
  Future<HttpResponse<dynamic>> readSemesters(
    @Queries() ReadSemestersQueries queries,
    @Path('id') int id,
  );
}
