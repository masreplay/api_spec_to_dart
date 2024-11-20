import 'package:freezed_annotation/freezed_annotation.dart';

part 'admission_me_public.freezed.dart';
part 'admission_me_public.g.dart';

@freezed
class AdmissionMePublic with _$AdmissionMePublic {
  const factory AdmissionMePublic({
    @JsonKey(name: 'is_current') required bool? isCurrent,
    @JsonKey(name: 'collage') required String? collage,
    @JsonKey(name: 'department') required String? department,
    @JsonKey(name: 'type') required int? type,
    @JsonKey(name: 'year') required String? year,
    @JsonKey(name: 'study_status') required String? studyStatus,
    @JsonKey(name: 'division') required String? division,
    @JsonKey(name: 'group') required String? group,
    @JsonKey(name: 'stage') required int? stage,
    @JsonKey(name: 'is_direct') required int? isDirect,
    @JsonKey(name: 'scholarship') required String? scholarship,
    @JsonKey(name: 'channel') required String? channel,
  }) = _AdmissionMePublic;

  factory AdmissionMePublic.fromJson(Map<String, dynamic> json) =>
      _$AdmissionMePublicFromJson(json);
}
