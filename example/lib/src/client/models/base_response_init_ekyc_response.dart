import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_init_ekyc_response.freezed.dart';
part 'base_response_init_ekyc_response.g.dart';

@freezed
class BaseResponseInitEkycResponse with _$BaseResponseInitEkycResponse {
  const BaseResponseInitEkycResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseInitEkycResponse({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required InitEkycResponse data,
  }) = _BaseResponseInitEkycResponse;

  factory BaseResponseInitEkycResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseInitEkycResponseFromJson(json);
}
