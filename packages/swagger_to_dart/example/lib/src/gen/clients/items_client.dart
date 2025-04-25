import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';
part 'items_client.g.dart';

@RestApi()
abstract class ItemsClient {
  factory ItemsClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ItemsClient;

  /// OperationId: items-create_item
  /// Summary: Create Item
  @POST('/items/create')
  Future<HttpResponse<ItemResponse>> itemsCreateItem();
}
