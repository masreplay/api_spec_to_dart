/// GenerateInvoicesRequest
/// {
///     "properties": {
///         "order_ids": {
///             "type": "array",
///             "items": {
///                 "type": "string",
///                 "format": "uuid"
///             }
///         }
///     },
///     "type": "object",
///     "required": [
///         "order_ids"
///     ],
///     "additionalProperties": false
/// }
library generate_invoices_request;

import 'exports.dart';
part 'generate_invoices_request.freezed.dart';
part 'generate_invoices_request.g.dart'; // GenerateInvoicesRequest

@freezed
abstract class GenerateInvoicesRequest with _$GenerateInvoicesRequest {
  const GenerateInvoicesRequest._();

  @jsonSerializable
  const factory GenerateInvoicesRequest({
    /// orderIds
    @JsonKey(name: GenerateInvoicesRequest.orderIdsKey_)
    required List<String> orderIds,
  }) = _GenerateInvoicesRequest;

  factory GenerateInvoicesRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateInvoicesRequestFromJson(json);

  static const String orderIdsKey_ = r'order_ids';
}
