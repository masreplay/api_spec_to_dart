import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_announcements_client.g.dart';

@RestApi()
abstract class LecturerAnnouncementsClient {
  factory LecturerAnnouncementsClient(Dio dio, {String baseUrl}) =
      _LecturerAnnouncementsClient;

  /// lecturer_announcements-get_lecturer_announcements
  @GET('/api/v1/lecturer/announcements/me/{course_id}')
  Future<HttpResponse<dynamic>> get(
    @Queries() GetQueries queries,
    @Path('course_id') int courseId,
  );

  /// lecturer_announcements-create_lecturer_announcement
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/announcements/me/{course_id}')
  Future<HttpResponse<dynamic>> createLecturerAnnouncement(
    @Path('course_id') int courseId,
    @Body() BodyLecturerAnnouncementsCreateLecturerAnnouncement body,
  );

  /// lecturer_announcements-get_lecturer_announcement
  @GET('/api/v1/lecturer/announcements/{id}')
  Future<HttpResponse<dynamic>> getLecturerAnnouncement(
    @Path('id') int id,
  );

  /// lecturer_announcements-update_lecturer_announcement
  @PUT('/api/v1/lecturer/announcements/{id}')
  Future<HttpResponse<dynamic>> updateLecturerAnnouncement(
    @Path('id') int id,
    @Body() LecturerAnnouncementUpdatePublic body,
  );

  /// lecturer_announcements-delete_lecturer_announcement
  @DELETE('/api/v1/lecturer/announcements/{id}')
  Future<HttpResponse<dynamic>> deleteLecturerAnnouncement(
    @Path('id') int id,
  );

  /// lecturer_announcements-get_lecturer_announcement_comments
  @GET('/api/v1/lecturer/announcements/{id}/comments')
  Future<HttpResponse<dynamic>> getLecturerAnnouncementComments(
    @Queries() GetLecturerAnnouncementCommentsQueries queries,
    @Path('id') int id,
  );

  /// lecturer_announcements-create_lecturer_announcement_comment
  @POST('/api/v1/lecturer/announcements/{id}/comments')
  Future<HttpResponse<dynamic>> createLecturerAnnouncementComment(
    @Path('id') int id,
    @Body() CommentCreatePublic body,
  );
}
