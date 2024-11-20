import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_ids_national_card_public.freezed.dart';
part 'student_ids_national_card_public.g.dart';

@freezed
class StudentIdsNationalCardPublic with _$StudentIdsNationalCardPublic {
  const StudentIdsNationalCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsNationalCardPublic({
    @JsonKey(name: 'number')

    /// Number
    required String? number,
    @JsonKey(name: 'serial_number')

    /// Serial Number
    required String? serialNumber,
    @JsonKey(name: 'issuing_authority')

    /// Issuing Authority
    required String? issuingAuthority,
    @JsonKey(name: 'date_of_issue')

    /// Date Of Issue
    required DateTime? dateOfIssue,
    @JsonKey(name: 'date_of_expiry')

    /// Date Of Expiry
    required DateTime? dateOfExpiry,
    @JsonKey(name: 'family_number')

    /// Family Number
    required String? familyNumber,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
    @JsonKey(name: 'back_image') required FilePublic? backImage,
  }) = _StudentIdsNationalCardPublic;

  factory StudentIdsNationalCardPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsNationalCardPublicFromJson(json);
}
