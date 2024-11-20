import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_study_year_public.freezed.dart';
part 'base_response_list_study_year_public.g.dart';

@freezed
class BaseResponseListStudyYearPublic with _$BaseResponseListStudyYearPublic {
  const factory BaseResponseListStudyYearPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListStudyYearPublic;

  factory BaseResponseListStudyYearPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListStudyYearPublicFromJson(json);
}
