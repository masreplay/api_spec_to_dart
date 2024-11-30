import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'admission_me_public.freezed.dart';
part 'admission_me_public.g.dart';

///AdmissionMePublic

@freezed
class AdmissionMePublic with _$AdmissionMePublic {
  const AdmissionMePublic._();

  @JsonSerializable(converters: convertors)
  const factory AdmissionMePublic({
    /// Is Current
    @JsonKey(name: 'is_current') required bool? isCurrent,

    /// Collage
    @JsonKey(name: 'collage') required String? collage,

    /// Department
    @JsonKey(name: 'department') required String? department,

    /// Type
    @JsonKey(name: 'type') required int? type,

    /// Year
    @JsonKey(name: 'year') required String? year,

    /// Study Status
    @JsonKey(name: 'study_status') required String? studyStatus,

    /// Division
    @JsonKey(name: 'division') required String? division,

    /// Group
    @JsonKey(name: 'group') required String? group,

    /// Stage
    @JsonKey(name: 'stage') required int? stage,

    /// Is Direct
    @JsonKey(name: 'is_direct') required int? isDirect,

    /// Scholarship
    @JsonKey(name: 'scholarship') required String? scholarship,

    /// Channel
    @JsonKey(name: 'channel') required String? channel,
  }) = _AdmissionMePublic;

  factory AdmissionMePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AdmissionMePublicFromJson(
        json,
      );
}
