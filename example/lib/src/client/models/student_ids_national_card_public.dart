import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'student_ids_national_card_public.freezed.dart';
part 'student_ids_national_card_public.g.dart';

@freezed
class StudentIdsNationalCardPublic with _$StudentIdsNationalCardPublic {
  const factory StudentIdsNationalCardPublic({
    @JsonKey(name: 'number') required String? number,
    @JsonKey(name: 'serial_number') required String? serialNumber,
    @JsonKey(name: 'issuing_authority') required String? issuingAuthority,
    @JsonKey(name: 'date_of_issue') required DateTime? dateOfIssue,
    @JsonKey(name: 'date_of_expiry') required DateTime? dateOfExpiry,
    @JsonKey(name: 'family_number') required String? familyNumber,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
    @JsonKey(name: 'back_image') required FilePublic? backImage,
  }) = _StudentIdsNationalCardPublic;

  factory StudentIdsNationalCardPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsNationalCardPublicFromJson(json);
}
