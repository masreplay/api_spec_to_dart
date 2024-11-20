import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_ids_identification_card_public.freezed.dart';
part 'student_ids_identification_card_public.g.dart';

@freezed
class StudentIdsIdentificationCardPublic
    with _$StudentIdsIdentificationCardPublic {
  const StudentIdsIdentificationCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIdentificationCardPublic({
    @JsonKey(name: 'number')

    /// Number
    required String? number,
    @JsonKey(name: 'record')

    /// Record
    required String? record,
    @JsonKey(name: 'page')

    /// Page
    required String? page,
    @JsonKey(name: 'issuing_authority')

    /// Issuing Authority
    required String? issuingAuthority,
    @JsonKey(name: 'date_of_issue')

    /// Date Of Issue
    required DateTime? dateOfIssue,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
    @JsonKey(name: 'back_image') required FilePublic? backImage,
  }) = _StudentIdsIdentificationCardPublic;

  factory StudentIdsIdentificationCardPublic.fromJson(
          Map<String, dynamic> json) =>
      _$StudentIdsIdentificationCardPublicFromJson(json);
}
