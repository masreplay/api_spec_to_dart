import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_notifications_client.g.dart';

@RestApi()
abstract class StudentNotificationsClient {
  factory StudentNotificationsClient(Dio dio, {String baseUrl}) =
      _StudentNotificationsClient;

  /// student_notifications-read_notifications
  @GET('/api/v1/student/notifications/')
  Future<HttpResponse<dynamic>> readNotifications(
    @Queries() ReadNotificationsQueries queries,
  );

  /// student_notifications-send_player_id
  @POST('/api/v1/student/notifications/token')
  Future<HttpResponse<dynamic>> sendPlayerId(
    @Body() StudentDeviceCreate body,
  );

  /// student_notifications-mark_as_read
  @PATCH('/api/v1/student/notifications/mark-as-read')
  Future<HttpResponse<dynamic>> markAsRead(
    @Queries() MarkAsReadQueries queries,
  );

  /// student_notifications-read_notification_detail
  @GET('/api/v1/student/notifications/{id}')
  Future<HttpResponse<dynamic>> readNotificationDetail(
    @Path('id') int id,
  );
}
