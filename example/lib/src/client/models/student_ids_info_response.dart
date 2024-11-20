import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_ids_info_response.freezed.dart';
part 'student_ids_info_response.g.dart';

@freezed
class StudentIdsInfoResponse with _$StudentIdsInfoResponse {
  const StudentIdsInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsInfoResponse({
    @JsonKey(name: 'is_iraqi') required bool? isIraqi,
    @JsonKey(name: 'have_national_card') required bool? haveNationalCard,
    @JsonKey(name: 'national_card')
    required StudentIdsNationalCardPublic nationalCard,
    @JsonKey(name: 'identification_card')
    required StudentIdsIdentificationCardPublic identificationCard,
    @JsonKey(name: 'iraqi_nationality_certificate')
    required StudentIdsIraqiNationalityCertificatePublic
        iraqiNationalityCertificate,
    @JsonKey(name: 'iraqi_residence_card')
    required StudentIdsIraqiResidenceCardPublic iraqiResidenceCard,
    @JsonKey(name: 'passport') required StudentIdsPassportPublic passport,
  }) = _StudentIdsInfoResponse;

  factory StudentIdsInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsInfoResponseFromJson(json);
}
