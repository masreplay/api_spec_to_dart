/// app__router__generic_router__ItemResponse
/// {
///     "properties": {
///         "id": {
///             "type": "integer",
///             "title": "Id"
///         },
///         "name": {
///             "type": "string",
///             "title": "Name"
///         }
///     },
///     "type": "object",
///     "required": [
///         "id",
///         "name"
///     ],
///     "title": "ItemResponse"
/// }
library app_router_generic_router_item_response;

import 'exports.dart';
part 'app_router_generic_router_item_response.freezed.dart';
part 'app_router_generic_router_item_response.g.dart'; // AppRouterGenericRouterItemResponse

@freezed
abstract class AppRouterGenericRouterItemResponse
    with _$AppRouterGenericRouterItemResponse {
  const AppRouterGenericRouterItemResponse._();

  @generationJsonSerializable
  const factory AppRouterGenericRouterItemResponse({
    /// id
    @JsonKey(name: AppRouterGenericRouterItemResponse.idKey) required int id,

    /// name
    @JsonKey(name: AppRouterGenericRouterItemResponse.nameKey)
    required String name,
  }) = _AppRouterGenericRouterItemResponse;

  factory AppRouterGenericRouterItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AppRouterGenericRouterItemResponseFromJson(json);

  static const String idKey = "id";

  static const String nameKey = "name";
}
