import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_university_card_public.freezed.dart';
part 'student_university_card_public.g.dart';

@freezed
class StudentUniversityCardPublic with _$StudentUniversityCardPublic {
  const StudentUniversityCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentUniversityCardPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'organization_ar_name')

    /// Organization Ar Name
    required String? organizationArName,
    @JsonKey(name: 'organization_en_name')

    /// Organization En Name
    required String? organizationEnName,
    @JsonKey(name: 'card_number')

    /// Card Number
    required String? cardNumber,
    @JsonKey(name: 'english_full_name')

    /// English Full Name
    required String? englishFullName,
    @JsonKey(name: 'arabic_full_name')

    /// Arabic Full Name
    required String? arabicFullName,
    @JsonKey(name: 'col_or_dep_en')

    /// Col Or Dep En
    required String? colOrDepEn,
    @JsonKey(name: 'col_or_dep_ar')

    /// Col Or Dep Ar
    required String? colOrDepAr,
    @JsonKey(name: 'stage_en')

    /// Stage En
    required String? stageEn,
    @JsonKey(name: 'stage_ar')

    /// Stage Ar
    required String? stageAr,
    @JsonKey(name: 'birth_date')

    /// Birth Date
    required String? birthDate,
    @JsonKey(name: 'issuing_date')

    /// Issuing Date
    required String? issuingDate,
    @JsonKey(name: 'expire_date')

    /// Expire Date
    required String? expireDate,
    @JsonKey(name: 'country_name_ar')

    /// Country Name Ar
    required String? countryNameAr,
    @JsonKey(name: 'country_name_en')

    /// Country Name En
    required String? countryNameEn,
    @JsonKey(name: 'ministry_name_ar')

    /// Ministry Name Ar
    required String? ministryNameAr,
    @JsonKey(name: 'ministry_name_en')

    /// Ministry Name En
    required String? ministryNameEn,
    @JsonKey(name: 'ministry_logo_url')

    /// Ministry Logo Url
    required String ministryLogoUrl,
    @JsonKey(name: 'personal_image')

    /// Personal Image
    required String personalImage,
  }) = _StudentUniversityCardPublic;

  factory StudentUniversityCardPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentUniversityCardPublicFromJson(json);
}
