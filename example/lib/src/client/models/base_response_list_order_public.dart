import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_order_public.freezed.dart';
part 'base_response_list_order_public.g.dart';

@freezed
class BaseResponseListOrderPublic with _$BaseResponseListOrderPublic {
  const factory BaseResponseListOrderPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListOrderPublic;

  factory BaseResponseListOrderPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListOrderPublicFromJson(json);
}
