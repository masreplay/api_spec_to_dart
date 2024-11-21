import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_home_works_client.g.dart';

@RestApi()
abstract class StudentHomeWorksClient {
  factory StudentHomeWorksClient(Dio dio, {String baseUrl}) =
      _StudentHomeWorksClient;

  /// student_home_works-read_course_assessment_by_course_id
  /// Read Course Assessment By Course Id
  @GET('/api/v1/student/home_works/course/{course_id}')
  Future<
          HttpResponse<
              BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessments>>
      studentHomeWorksReadCourseAssessmentByCourseId({
    @Path('course_id') required int courseId,
  });
}
