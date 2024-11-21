import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_ids_iraqi_residence_card_public.freezed.dart';
part 'student_ids_iraqi_residence_card_public.g.dart';

@freezed
class StudentIdsIraqiResidenceCardPublic
    with _$StudentIdsIraqiResidenceCardPublic {
  const StudentIdsIraqiResidenceCardPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentIdsIraqiResidenceCardPublic({
    /// Home Address
    @JsonKey(name: 'home_address') required String? homeAddress,

    /// Street Address
    @JsonKey(name: 'street_address') required String? streetAddress,

    /// Quarter Address
    @JsonKey(name: 'quarter_address') required String? quarterAddress,

    /// Form Number
    @JsonKey(name: 'form_number') required String? formNumber,

    /// Sequence
    @JsonKey(name: 'sequence') required String? sequence,

    /// Date Of Issue
    @JsonKey(name: 'date_of_issue') required DateTime? dateOfIssue,
    @JsonKey(name: 'information_bureau')
    required InformationBureausPublic? informationBureau,
    @JsonKey(name: 'front_image') required FilePublic? frontImage,
    @JsonKey(name: 'back_image') required FilePublic? backImage,
  }) = _StudentIdsIraqiResidenceCardPublic;

  factory StudentIdsIraqiResidenceCardPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentIdsIraqiResidenceCardPublicFromJson(json);
}
