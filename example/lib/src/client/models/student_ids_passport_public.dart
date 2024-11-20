import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_ids_passport_public.freezed.dart';
part 'student_ids_passport_public.g.dart';

@freezed
class StudentIdsPassportPublic with _$StudentIdsPassportPublic {
  const StudentIdsPassportPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsPassportPublic({
    @JsonKey(name: 'number')

    /// Number
    required String? number,
    @JsonKey(name: 'issuing_authority')

    /// Issuing Authority
    required String? issuingAuthority,
    @JsonKey(name: 'date_of_issue')

    /// Date Of Issue
    required DateTime? dateOfIssue,
    @JsonKey(name: 'date_of_expiry')

    /// Date Of Expiry
    required DateTime? dateOfExpiry,
    @JsonKey(name: 'country') required CountryPublic? country,
    @JsonKey(name: 'image') required FilePublic? image,
  }) = _StudentIdsPassportPublic;

  factory StudentIdsPassportPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentIdsPassportPublicFromJson(json);
}
