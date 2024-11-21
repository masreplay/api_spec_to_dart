import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'registrations_student_ids_update_request.freezed.dart';
part 'registrations_student_ids_update_request.g.dart';

@freezed
class RegistrationsStudentIdsUpdateRequest
    with _$RegistrationsStudentIdsUpdateRequest {
  const RegistrationsStudentIdsUpdateRequest._();

  @JsonSerializable(converters: convertors)
  const factory RegistrationsStudentIdsUpdateRequest({
    @JsonKey(name: 'identification_card')
    required StudentIdsIdCardUpdatePublic identificationCard,
    @JsonKey(name: 'iraqi_nationality_certificate')
    required StudentIdsIraqiNationalityCertificateUpdatePublic
        iraqiNationalityCertificate,
    @JsonKey(name: 'residence_card')
    required StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
    @JsonKey(name: 'passport')
    required StudentIdsPassportUpdatePublic? passport,
  }) = _RegistrationsStudentIdsUpdateRequest;

  factory RegistrationsStudentIdsUpdateRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RegistrationsStudentIdsUpdateRequestFromJson(json);
}
