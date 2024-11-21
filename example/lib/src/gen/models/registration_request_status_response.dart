import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'registration_request_status_response.freezed.dart';
part 'registration_request_status_response.g.dart';

@freezed
class RegistrationRequestStatusResponse
    with _$RegistrationRequestStatusResponse {
  const RegistrationRequestStatusResponse._();

  @JsonSerializable(converters: convertors)
  const factory RegistrationRequestStatusResponse({
    @JsonKey(name: 'status') required StudentRequestStatus status,

    /// Message
    @JsonKey(name: 'message') required String? message,
  }) = _RegistrationRequestStatusResponse;

  factory RegistrationRequestStatusResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RegistrationRequestStatusResponseFromJson(json);
}
