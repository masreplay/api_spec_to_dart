/// CustomersApiCustomersGetQueryParameters
/// {
///     "properties": {
///         "search": {
///             "type": "string",
///             "nullable": true
///         },
///         "requireFullPaymentOnClose": {
///             "type": "boolean",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library customers_api_customers_get_query_parameters;

import 'exports.dart';
part 'customers_api_customers_get_query_parameters.freezed.dart';
part 'customers_api_customers_get_query_parameters.g.dart'; // CustomersApiCustomersGetQueryParameters

@freezed
abstract class CustomersApiCustomersGetQueryParameters
    with _$CustomersApiCustomersGetQueryParameters {
  const CustomersApiCustomersGetQueryParameters._();

  @jsonSerializable
  const factory CustomersApiCustomersGetQueryParameters({
    /// search
    @JsonKey(name: CustomersApiCustomersGetQueryParameters.searchKey_)
    String? search,

    /// requireFullPaymentOnClose
    @JsonKey(
      name:
          CustomersApiCustomersGetQueryParameters.requireFullPaymentOnCloseKey_,
    )
    bool? requireFullPaymentOnClose,
  }) = _CustomersApiCustomersGetQueryParameters;

  factory CustomersApiCustomersGetQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$CustomersApiCustomersGetQueryParametersFromJson(json);

  static const String searchKey_ = r'search';

  static const String requireFullPaymentOnCloseKey_ =
      r'requireFullPaymentOnClose';
}
