import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_notifications_client.g.dart';

@RestApi()
abstract class StudentNotificationsClient {
  factory StudentNotificationsClient(Dio dio, {String baseUrl}) =
      _StudentNotificationsClient;

  /// null
  @GET('/api/v1/student/notifications/')
  Future<HttpResponse<dynamic>> readNotifications();

  /// null
  @GET('/api/v1/student/notifications/{id}')
  Future<HttpResponse<dynamic>> readNotificationDetail();
}
