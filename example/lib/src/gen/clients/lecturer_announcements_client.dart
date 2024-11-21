import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_announcements_client.g.dart';

@RestApi()
abstract class LecturerAnnouncementsClient {
  factory LecturerAnnouncementsClient(Dio dio, {String baseUrl}) =
      _LecturerAnnouncementsClient;

  /// lecturer_announcements-get_lecturer_announcements
  /// Get Lecturer Announcements
  @GET('/api/v1/lecturer/announcements/me/{course_id}')
  Future<HttpResponse<dynamic>> get({
    @Queries() required GetQueries queries,
    @Path('course_id') required int courseId,
  });

  /// lecturer_announcements-create_lecturer_announcement
  /// Create Lecturer Announcement
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/announcements/me/{course_id}')
  Future<HttpResponse<dynamic>> createLecturerAnnouncement({
    @Path('course_id') required int courseId,
    @Body() required BodyLecturerAnnouncementsCreateLecturerAnnouncement body,
  });

  /// lecturer_announcements-get_lecturer_announcement
  /// Get Lecturer Announcement
  @GET('/api/v1/lecturer/announcements/{id}')
  Future<HttpResponse<dynamic>> getLecturerAnnouncement({
    @Path('id') required int id,
  });

  /// lecturer_announcements-update_lecturer_announcement
  /// Update Lecturer Announcement
  @PUT('/api/v1/lecturer/announcements/{id}')
  Future<HttpResponse<dynamic>> updateLecturerAnnouncement({
    @Path('id') required int id,
    @Body() required LecturerAnnouncementUpdatePublic body,
  });

  /// lecturer_announcements-delete_lecturer_announcement
  /// Delete Lecturer Announcement
  @DELETE('/api/v1/lecturer/announcements/{id}')
  Future<HttpResponse<dynamic>> deleteLecturerAnnouncement({
    @Path('id') required int id,
  });

  /// lecturer_announcements-get_lecturer_announcement_comments
  /// Get Lecturer Announcement Comments
  @GET('/api/v1/lecturer/announcements/{id}/comments')
  Future<HttpResponse<dynamic>> getLecturerAnnouncementComments({
    @Queries() required GetLecturerAnnouncementCommentsQueries queries,
    @Path('id') required int id,
  });

  /// lecturer_announcements-create_lecturer_announcement_comment
  /// Create Lecturer Announcement Comment
  @POST('/api/v1/lecturer/announcements/{id}/comments')
  Future<HttpResponse<dynamic>> createLecturerAnnouncementComment({
    @Path('id') required int id,
    @Body() required CommentCreatePublic body,
  });
}
