import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_semesters_client.g.dart';

@RestApi()
abstract class StudentSemestersClient {
  factory StudentSemestersClient(Dio dio, {String baseUrl}) =
      _StudentSemestersClient;

  /// null
  @GET('/api/v1/student/semesters/{id}')
  Future<HttpResponse<dynamic>> readSemesters(
    @Queries() QueriesClass queries,
    @Path('id') String id,
  );
}
