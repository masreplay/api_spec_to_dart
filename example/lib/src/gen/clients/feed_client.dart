import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'feed_client.g.dart';

@RestApi()
abstract class FeedClient {
  factory FeedClient(Dio dio, {String baseUrl}) = _FeedClient;

  /// OperationId: feed-read_feed
  /// Summery: Read Feed
  /// Description: Get the feed for the current user.
  @GET('/feed/')
  Future<HttpResponse<FeedPublic>> feedReadFeed();
}
