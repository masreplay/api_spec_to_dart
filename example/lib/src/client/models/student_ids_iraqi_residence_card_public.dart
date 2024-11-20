import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_ids_iraqi_residence_card_public.freezed.dart';
part 'student_ids_iraqi_residence_card_public.g.dart';

@freezed
class StudentIdsIraqiResidenceCardPublic
    with _$StudentIdsIraqiResidenceCardPublic {
  const StudentIdsIraqiResidenceCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIraqiResidenceCardPublic({
    @JsonKey(name: 'home_address')

    /// Home Address
    required String? homeAddress,
    @JsonKey(name: 'street_address')

    /// Street Address
    required String? streetAddress,
    @JsonKey(name: 'quarter_address')

    /// Quarter Address
    required String? quarterAddress,
    @JsonKey(name: 'form_number')

    /// Form Number
    required String? formNumber,
    @JsonKey(name: 'sequence')

    /// Sequence
    required String? sequence,
    @JsonKey(name: 'date_of_issue')

    /// Date Of Issue
    required DateTime? dateOfIssue,
    @JsonKey(name: 'information_bureau')
    required InformationBureausPublic? informationBureau,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
    @JsonKey(name: 'back_image') required FilePublic? backImage,
  }) = _StudentIdsIraqiResidenceCardPublic;

  factory StudentIdsIraqiResidenceCardPublic.fromJson(
          Map<String, dynamic> json) =>
      _$StudentIdsIraqiResidenceCardPublicFromJson(json);
}
