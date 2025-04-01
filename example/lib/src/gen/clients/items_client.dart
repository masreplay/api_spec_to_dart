import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'items_client.g.dart';

@RestApi()
abstract class ItemsClient {
  factory ItemsClient(Dio dio, {String baseUrl}) = _ItemsClient;

  /// OperationId: items-read_items
  /// Summery: Read Items
  /// Description: Retrieve items.
  @GET('/items/')
  Future<HttpResponse<ItemsPublic>> itemsReadItems({
    @Queries() required ItemsReadItemsQueries queries,
  });

  /// OperationId: items-create_item
  /// Summery: Create Item
  /// Description: Create new item.
  @POST('/items/')
  Future<HttpResponse<ItemPublic>> itemsCreateItem({
    @Body() required ItemCreate body,
  });

  /// OperationId: items-read_item
  /// Summery: Read Item
  /// Description: Get item by ID.
  @GET('/items/{id}')
  Future<HttpResponse<ItemPublic>> itemsReadItem({
    @Path('id') required String id,
  });

  /// OperationId: items-update_item
  /// Summery: Update Item
  /// Description: Update an item.
  @PUT('/items/{id}')
  Future<HttpResponse<ItemPublic>> itemsUpdateItem({
    @Path('id') required String id,
    @Body() required ItemUpdate body,
  });

  /// OperationId: items-delete_item
  /// Summery: Delete Item
  /// Description: Delete an item.
  @DELETE('/items/{id}')
  Future<HttpResponse<Message>> itemsDeleteItem({
    @Path('id') required String id,
  });
}
