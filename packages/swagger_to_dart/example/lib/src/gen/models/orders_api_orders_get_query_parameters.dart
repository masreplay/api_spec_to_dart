/// OrdersApiOrdersGetQueryParameters
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
///         "salePointId": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "status": {
///             "oneOf": [
///                 {
///                     "$ref": "#/components/schemas/OrderStatus"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "nullable": true
///         },
///         "customerId": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         },
///         "dateRange": {
///             "oneOf": [
///                 {
///                     "$ref": "#/components/schemas/DateRange"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library orders_api_orders_get_query_parameters;

import 'exports.dart';
part 'orders_api_orders_get_query_parameters.freezed.dart';
part 'orders_api_orders_get_query_parameters.g.dart'; // OrdersApiOrdersGetQueryParameters

@freezed
abstract class OrdersApiOrdersGetQueryParameters
    with _$OrdersApiOrdersGetQueryParameters {
  const OrdersApiOrdersGetQueryParameters._();

  @jsonSerializable
  const factory OrdersApiOrdersGetQueryParameters({
    /// pageToken
    @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageTokenKey_)
    String? pageToken,

    /// pageSize
    @Default(100)
    @JsonKey(name: OrdersApiOrdersGetQueryParameters.pageSizeKey_)
    int pageSize,

    /// salePointId
    @JsonKey(name: OrdersApiOrdersGetQueryParameters.salePointIdKey_)
    String? salePointId,

    /// status
    @JsonKey(name: OrdersApiOrdersGetQueryParameters.statusKey_)
    OrderStatus? status,

    /// customerId
    @JsonKey(name: OrdersApiOrdersGetQueryParameters.customerIdKey_)
    String? customerId,

    /// dateRange
    @JsonKey(name: OrdersApiOrdersGetQueryParameters.dateRangeKey_)
    DateRange? dateRange,
  }) = _OrdersApiOrdersGetQueryParameters;

  factory OrdersApiOrdersGetQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$OrdersApiOrdersGetQueryParametersFromJson(json);

  static const String pageTokenKey_ = r'pageToken';

  static const String pageSizeKey_ = r'pageSize';

  static const String salePointIdKey_ = r'salePointId';

  static const String statusKey_ = r'status';

  static const String customerIdKey_ = r'customerId';

  static const String dateRangeKey_ = r'dateRange';
}
