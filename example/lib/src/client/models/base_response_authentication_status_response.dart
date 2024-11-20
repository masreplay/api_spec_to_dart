import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_authentication_status_response.freezed.dart';
part 'base_response_authentication_status_response.g.dart';

@freezed
class BaseResponseAuthenticationStatusResponse
    with _$BaseResponseAuthenticationStatusResponse {
  const BaseResponseAuthenticationStatusResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseAuthenticationStatusResponse({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required AuthenticationStatusResponse data,
  }) = _BaseResponseAuthenticationStatusResponse;

  factory BaseResponseAuthenticationStatusResponse.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseAuthenticationStatusResponseFromJson(json);
}
