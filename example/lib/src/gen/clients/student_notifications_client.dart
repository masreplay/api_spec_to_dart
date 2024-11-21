import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_notifications_client.g.dart';

@RestApi()
abstract class StudentNotificationsClient {
  factory StudentNotificationsClient(Dio dio, {String baseUrl}) =
      _StudentNotificationsClient;

  /// student_notifications-read_notifications
  /// Read Notifications
  @GET('/api/v1/student/notifications/')
  Future<HttpResponse<BaseResponsePaginationResponseStudentNotificationsPublic>>
      readNotifications({
    @Queries() required ReadNotificationsQueries queries,
  });

  /// student_notifications-send_player_id
  /// Send Player Id
  @POST('/api/v1/student/notifications/token')
  Future<HttpResponse<MessageResponse>> sendPlayerId({
    @Body() required StudentDeviceCreate body,
  });

  /// student_notifications-mark_as_read
  /// Mark As Read
  @PATCH('/api/v1/student/notifications/mark-as-read')
  Future<HttpResponse<BaseResponseUnionStudentNotificationsPublic>> markAsRead({
    @Queries() required MarkAsReadQueries queries,
  });

  /// student_notifications-read_notification_detail
  /// Read Notification Detail
  @GET('/api/v1/student/notifications/{id}')
  Future<HttpResponse<BaseResponseUnionStudentNotificationsPublic>>
      readNotificationDetail({
    @Path('id') required int id,
  });
}
