import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_study_year_public.freezed.dart';
part 'base_response_list_study_year_public.g.dart';

@freezed
class BaseResponseListStudyYearPublic with _$BaseResponseListStudyYearPublic {
  const BaseResponseListStudyYearPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListStudyYearPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListStudyYearPublic;

  factory BaseResponseListStudyYearPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListStudyYearPublicFromJson(json);
}
