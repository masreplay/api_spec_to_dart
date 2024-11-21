import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_ids_passport_public.freezed.dart';
part 'student_ids_passport_public.g.dart';

@freezed
class StudentIdsPassportPublic with _$StudentIdsPassportPublic {
  const StudentIdsPassportPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsPassportPublic({
    /// Number
    @JsonKey(name: 'number') required String? number,

    /// Issuing Authority
    @JsonKey(name: 'issuing_authority') required String? issuingAuthority,

    /// Date Of Issue
    @JsonKey(name: 'date_of_issue') required DateTime? dateOfIssue,

    /// Date Of Expiry
    @JsonKey(name: 'date_of_expiry') required DateTime? dateOfExpiry,
    @JsonKey(name: 'country') required CountryPublic? country,
    @JsonKey(name: 'image') required FilePublic? image,
  }) = _StudentIdsPassportPublic;

  factory StudentIdsPassportPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsPassportPublicFromJson(json);
}
