/// app__router__generic_router__ItemResponse
///
/// ```json
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
/// ```
library;

import 'exports.dart';
part 'app_router_generic_router_item_response.freezed.dart';
part 'app_router_generic_router_item_response.g.dart';

@freezed
abstract class AppRouterGenericRouterItemResponse
    with _$AppRouterGenericRouterItemResponse {
  const AppRouterGenericRouterItemResponse._();

  @jsonSerializable
  const factory AppRouterGenericRouterItemResponse({
    /// id
    @JsonKey(name: AppRouterGenericRouterItemResponse.idKey_) required int id,

    /// name
    @JsonKey(name: AppRouterGenericRouterItemResponse.nameKey_)
    required String name,
  }) = _AppRouterGenericRouterItemResponse;

  factory AppRouterGenericRouterItemResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$AppRouterGenericRouterItemResponseFromJson(json);

  static const String idKey_ = 'id';

  static const String nameKey_ = 'name';
}
