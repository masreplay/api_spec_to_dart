import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_university_card_public.freezed.dart';
part 'student_university_card_public.g.dart';

@freezed
class StudentUniversityCardPublic with _$StudentUniversityCardPublic {
  const StudentUniversityCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentUniversityCardPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Organization Ar Name
    @JsonKey(name: 'organization_ar_name') required String? organizationArName,

    /// Organization En Name
    @JsonKey(name: 'organization_en_name') required String? organizationEnName,

    /// Card Number
    @JsonKey(name: 'card_number') required String? cardNumber,

    /// English Full Name
    @JsonKey(name: 'english_full_name') required String? englishFullName,

    /// Arabic Full Name
    @JsonKey(name: 'arabic_full_name') required String? arabicFullName,

    /// Col Or Dep En
    @JsonKey(name: 'col_or_dep_en') required String? colOrDepEn,

    /// Col Or Dep Ar
    @JsonKey(name: 'col_or_dep_ar') required String? colOrDepAr,

    /// Stage En
    @JsonKey(name: 'stage_en') required String? stageEn,

    /// Stage Ar
    @JsonKey(name: 'stage_ar') required String? stageAr,

    /// Birth Date
    @JsonKey(name: 'birth_date') required String? birthDate,

    /// Issuing Date
    @JsonKey(name: 'issuing_date') required String? issuingDate,

    /// Expire Date
    @JsonKey(name: 'expire_date') required String? expireDate,

    /// Country Name Ar
    @JsonKey(name: 'country_name_ar') required String? countryNameAr,

    /// Country Name En
    @JsonKey(name: 'country_name_en') required String? countryNameEn,

    /// Ministry Name Ar
    @JsonKey(name: 'ministry_name_ar') required String? ministryNameAr,

    /// Ministry Name En
    @JsonKey(name: 'ministry_name_en') required String? ministryNameEn,

    /// Ministry Logo Url
    @JsonKey(name: 'ministry_logo_url') required String ministryLogoUrl,

    /// Personal Image
    @JsonKey(name: 'personal_image') required String personalImage,
  }) = _StudentUniversityCardPublic;

  factory StudentUniversityCardPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentUniversityCardPublicFromJson(json);
}
