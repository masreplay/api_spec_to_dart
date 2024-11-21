import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_ids_iraqi_nationality_certificate_update_public.freezed.dart';
part 'student_ids_iraqi_nationality_certificate_update_public.g.dart';

///StudentIdsIraqiNationalityCertificateUpdatePublic

@freezed
class StudentIdsIraqiNationalityCertificateUpdatePublic
    with _$StudentIdsIraqiNationalityCertificateUpdatePublic {
  const StudentIdsIraqiNationalityCertificateUpdatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIraqiNationalityCertificateUpdatePublic({
    /// Iraqi Nationality Certificate Number
    @JsonKey(name: 'iraqi_nationality_certificate_number')
    required String iraqiNationalityCertificateNumber,

    /// Iraqi Nationality Certificate Wallet Number
    @JsonKey(name: 'iraqi_nationality_certificate_wallet_number')
    required String iraqiNationalityCertificateWalletNumber,

    /// Iraqi Nationality Certificate Date Of Issue
    @JsonKey(name: 'iraqi_nationality_certificate_date_of_issue')
    required DateTime iraqiNationalityCertificateDateOfIssue,

    /// Iraqi Nationality Certificate Issuing Authority
    @JsonKey(name: 'iraqi_nationality_certificate_issuing_authority')
    required String iraqiNationalityCertificateIssuingAuthority,
  }) = _StudentIdsIraqiNationalityCertificateUpdatePublic;

  factory StudentIdsIraqiNationalityCertificateUpdatePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentIdsIraqiNationalityCertificateUpdatePublicFromJson(
        json,
      );
}
