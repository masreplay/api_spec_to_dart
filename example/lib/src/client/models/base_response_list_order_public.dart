import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_order_public.freezed.dart';
part 'base_response_list_order_public.g.dart';

@freezed
class BaseResponseListOrderPublic with _$BaseResponseListOrderPublic {
  const BaseResponseListOrderPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListOrderPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListOrderPublic;

  factory BaseResponseListOrderPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListOrderPublicFromJson(json);
}
