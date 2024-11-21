import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_list_study_year_public.freezed.dart';
part 'base_response_list_study_year_public.g.dart';

@freezed
class BaseResponseListStudyYearPublic with _$BaseResponseListStudyYearPublic {
  const BaseResponseListStudyYearPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListStudyYearPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<StudyYearPublic> data,
  }) = _BaseResponseListStudyYearPublic;

  factory BaseResponseListStudyYearPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListStudyYearPublicFromJson(json);
}
