import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_university_card_public.freezed.dart';
part 'student_university_card_public.g.dart';

@freezed
class StudentUniversityCardPublic with _$StudentUniversityCardPublic {
  const StudentUniversityCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentUniversityCardPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'organization_ar_name') required String? organizationArName,
    @JsonKey(name: 'organization_en_name') required String? organizationEnName,
    @JsonKey(name: 'card_number') required String? cardNumber,
    @JsonKey(name: 'english_full_name') required String? englishFullName,
    @JsonKey(name: 'arabic_full_name') required String? arabicFullName,
    @JsonKey(name: 'col_or_dep_en') required String? colOrDepEn,
    @JsonKey(name: 'col_or_dep_ar') required String? colOrDepAr,
    @JsonKey(name: 'stage_en') required String? stageEn,
    @JsonKey(name: 'stage_ar') required String? stageAr,
    @JsonKey(name: 'birth_date') required String? birthDate,
    @JsonKey(name: 'issuing_date') required String? issuingDate,
    @JsonKey(name: 'expire_date') required String? expireDate,
    @JsonKey(name: 'country_name_ar') required String? countryNameAr,
    @JsonKey(name: 'country_name_en') required String? countryNameEn,
    @JsonKey(name: 'ministry_name_ar') required String? ministryNameAr,
    @JsonKey(name: 'ministry_name_en') required String? ministryNameEn,
    @JsonKey(name: 'ministry_logo_url') required String ministryLogoUrl,
    @JsonKey(name: 'personal_image') required String personalImage,
  }) = _StudentUniversityCardPublic;

  factory StudentUniversityCardPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentUniversityCardPublicFromJson(json);
}
