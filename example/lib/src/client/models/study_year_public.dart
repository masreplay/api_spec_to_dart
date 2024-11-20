import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'study_year_public.freezed.dart';
part 'study_year_public.g.dart';

@freezed
class StudyYearPublic with _$StudyYearPublic {
  const StudyYearPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudyYearPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'value')

    /// Value
    required String value,
  }) = _StudyYearPublic;

  factory StudyYearPublic.fromJson(Map<String, dynamic> json) =>
      _$StudyYearPublicFromJson(json);
}
