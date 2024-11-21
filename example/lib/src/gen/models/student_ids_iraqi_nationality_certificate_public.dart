import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_ids_iraqi_nationality_certificate_public.freezed.dart';
part 'student_ids_iraqi_nationality_certificate_public.g.dart';

@freezed
class StudentIdsIraqiNationalityCertificatePublic
    with _$StudentIdsIraqiNationalityCertificatePublic {
  const StudentIdsIraqiNationalityCertificatePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIraqiNationalityCertificatePublic({
    /// Number
    @JsonKey(name: 'number') required String? number,

    /// Wallet Number
    @JsonKey(name: 'wallet_number') required String? walletNumber,

    /// Issuing Authority
    @JsonKey(name: 'issuing_authority') required String? issuingAuthority,

    /// Date Of Issue
    @JsonKey(name: 'date_of_issue') required DateTime? dateOfIssue,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
    @JsonKey(name: 'back_image') required FilePublic? backImage,
  }) = _StudentIdsIraqiNationalityCertificatePublic;

  factory StudentIdsIraqiNationalityCertificatePublic.fromJson(
          Map<String, dynamic> json) =>
      _$StudentIdsIraqiNationalityCertificatePublicFromJson(json);
}
