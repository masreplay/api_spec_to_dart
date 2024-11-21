import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_order_response.freezed.dart';
part 'base_response_list_order_response.g.dart';

@freezed
class BaseResponseListOrderResponse with _$BaseResponseListOrderResponse {
  const BaseResponseListOrderResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListOrderResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<OrderResponse> data,
  }) = _BaseResponseListOrderResponse;

  factory BaseResponseListOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListOrderResponseFromJson(json);
}
