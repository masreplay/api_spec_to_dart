import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'admission_me_public.freezed.dart';
part 'admission_me_public.g.dart';

@freezed
class AdmissionMePublic with _$AdmissionMePublic {
  const AdmissionMePublic._();

  @JsonSerializable(converters: convertors)
  const factory AdmissionMePublic({
    @JsonKey(name: 'is_current')

    /// Is Current
    required bool? isCurrent,
    @JsonKey(name: 'collage')

    /// Collage
    required String? collage,
    @JsonKey(name: 'department')

    /// Department
    required String? department,
    @JsonKey(name: 'type')

    /// Type
    required int? type,
    @JsonKey(name: 'year')

    /// Year
    required String? year,
    @JsonKey(name: 'study_status')

    /// Study Status
    required String? studyStatus,
    @JsonKey(name: 'division')

    /// Division
    required String? division,
    @JsonKey(name: 'group')

    /// Group
    required String? group,
    @JsonKey(name: 'stage')

    /// Stage
    required int? stage,
    @JsonKey(name: 'is_direct')

    /// Is Direct
    required int? isDirect,
    @JsonKey(name: 'scholarship')

    /// Scholarship
    required String? scholarship,
    @JsonKey(name: 'channel')

    /// Channel
    required String? channel,
  }) = _AdmissionMePublic;

  factory AdmissionMePublic.fromJson(Map<String, dynamic> json) =>
      _$AdmissionMePublicFromJson(json);
}
