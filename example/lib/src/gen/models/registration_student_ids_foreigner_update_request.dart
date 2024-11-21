import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'registration_student_ids_foreigner_update_request.freezed.dart';
part 'registration_student_ids_foreigner_update_request.g.dart';

@freezed
class RegistrationStudentIdsForeignerUpdateRequest
    with _$RegistrationStudentIdsForeignerUpdateRequest {
  const RegistrationStudentIdsForeignerUpdateRequest._();

  @JsonSerializable(converters: convertors)
  const factory RegistrationStudentIdsForeignerUpdateRequest({
    @JsonKey(name: 'national_card')
    required StudentIdsNationalCardUpdatePublic nationalCard,
    @JsonKey(name: 'passport') required StudentIdsPassportUpdatePublic passport,
  }) = _RegistrationStudentIdsForeignerUpdateRequest;

  factory RegistrationStudentIdsForeignerUpdateRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RegistrationStudentIdsForeignerUpdateRequestFromJson(json);
}
