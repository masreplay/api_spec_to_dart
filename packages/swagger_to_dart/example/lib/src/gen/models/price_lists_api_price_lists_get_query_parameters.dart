/// PriceListsApiPriceListsGetQueryParameters
/// {
///     "properties": {
///         "enabled": {
///             "type": "boolean",
///             "nullable": true
///         },
///         "salePointId": {
///             "type": "string",
///             "format": "uuid",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library price_lists_api_price_lists_get_query_parameters;

import 'exports.dart';
part 'price_lists_api_price_lists_get_query_parameters.freezed.dart';
part 'price_lists_api_price_lists_get_query_parameters.g.dart'; // PriceListsApiPriceListsGetQueryParameters

@freezed
abstract class PriceListsApiPriceListsGetQueryParameters
    with _$PriceListsApiPriceListsGetQueryParameters {
  const PriceListsApiPriceListsGetQueryParameters._();

  @jsonSerializable
  const factory PriceListsApiPriceListsGetQueryParameters({
    /// enabled
    @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.enabledKey_)
    bool? enabled,

    /// salePointId
    @JsonKey(name: PriceListsApiPriceListsGetQueryParameters.salePointIdKey_)
    String? salePointId,
  }) = _PriceListsApiPriceListsGetQueryParameters;

  factory PriceListsApiPriceListsGetQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$PriceListsApiPriceListsGetQueryParametersFromJson(json);

  static const String enabledKey_ = r'enabled';

  static const String salePointIdKey_ = r'salePointId';
}
