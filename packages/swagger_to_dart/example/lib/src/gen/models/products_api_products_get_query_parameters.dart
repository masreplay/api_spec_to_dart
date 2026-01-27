/// ProductsApiProductsGetQueryParameters
/// {
///     "properties": {
///         "pageToken": {
///             "type": "string",
///             "nullable": true
///         },
///         "pageSize": {
///             "type": "integer",
///             "format": "int32",
///             "default": 100
///         },
///         "categoryId": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "search": {
///             "type": "string",
///             "nullable": true
///         },
///         "priceListId": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "replacePrices": {
///             "type": "boolean",
///             "default": false
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library products_api_products_get_query_parameters;

import 'exports.dart';
part 'products_api_products_get_query_parameters.freezed.dart';
part 'products_api_products_get_query_parameters.g.dart'; // ProductsApiProductsGetQueryParameters

@freezed
abstract class ProductsApiProductsGetQueryParameters
    with _$ProductsApiProductsGetQueryParameters {
  const ProductsApiProductsGetQueryParameters._();

  @jsonSerializable
  const factory ProductsApiProductsGetQueryParameters({
    /// pageToken
    @JsonKey(name: ProductsApiProductsGetQueryParameters.pageTokenKey_)
    String? pageToken,

    /// pageSize
    @Default(100)
    @JsonKey(name: ProductsApiProductsGetQueryParameters.pageSizeKey_)
    int pageSize,

    /// categoryId
    @JsonKey(name: ProductsApiProductsGetQueryParameters.categoryIdKey_)
    String? categoryId,

    /// search
    @JsonKey(name: ProductsApiProductsGetQueryParameters.searchKey_)
    String? search,

    /// priceListId
    @JsonKey(name: ProductsApiProductsGetQueryParameters.priceListIdKey_)
    String? priceListId,

    /// replacePrices
    @Default(false)
    @JsonKey(name: ProductsApiProductsGetQueryParameters.replacePricesKey_)
    bool replacePrices,
  }) = _ProductsApiProductsGetQueryParameters;

  factory ProductsApiProductsGetQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ProductsApiProductsGetQueryParametersFromJson(json);

  static const String pageTokenKey_ = r'pageToken';

  static const String pageSizeKey_ = r'pageSize';

  static const String categoryIdKey_ = r'categoryId';

  static const String searchKey_ = r'search';

  static const String priceListIdKey_ = r'priceListId';

  static const String replacePricesKey_ = r'replacePrices';
}
