import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_ids_national_card_public.freezed.dart';
part 'student_ids_national_card_public.g.dart';

///StudentIdsNationalCardPublic

@freezed
class StudentIdsNationalCardPublic with _$StudentIdsNationalCardPublic {
  const StudentIdsNationalCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsNationalCardPublic({
    /// Number
    @JsonKey(name: 'number') required String? number,

    /// Serial Number
    @JsonKey(name: 'serial_number') required String? serialNumber,

    /// Issuing Authority
    @JsonKey(name: 'issuing_authority') required String? issuingAuthority,

    /// Date Of Issue
    @JsonKey(name: 'date_of_issue') required DateTime? dateOfIssue,

    /// Date Of Expiry
    @JsonKey(name: 'date_of_expiry') required DateTime? dateOfExpiry,

    /// Family Number
    @JsonKey(name: 'family_number') required String? familyNumber,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
    @JsonKey(name: 'back_image') required FilePublic? backImage,
  }) = _StudentIdsNationalCardPublic;

  factory StudentIdsNationalCardPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentIdsNationalCardPublicFromJson(
        json,
      );
}
