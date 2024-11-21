import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'registrations_student_ids_nationality_create_request.freezed.dart';
part 'registrations_student_ids_nationality_create_request.g.dart';

///RegistrationsStudentIdsNationalityCreateRequest

@freezed
class RegistrationsStudentIdsNationalityCreateRequest
    with _$RegistrationsStudentIdsNationalityCreateRequest {
  const RegistrationsStudentIdsNationalityCreateRequest._();

  @JsonSerializable(converters: convertors)
  const factory RegistrationsStudentIdsNationalityCreateRequest({
    @JsonKey(name: 'national_card')
    required StudentIdsNationalCardUpdatePublic nationalCard,
    @JsonKey(name: 'residence_card')
    required StudentIdsIraqiResidenceCardUpdatePublic residenceCard,
    @JsonKey(name: 'passport')
    required StudentIdsPassportUpdatePublic? passport,
  }) = _RegistrationsStudentIdsNationalityCreateRequest;

  factory RegistrationsStudentIdsNationalityCreateRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RegistrationsStudentIdsNationalityCreateRequestFromJson(json);
}
