import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'study_year_public.freezed.dart';
part 'study_year_public.g.dart';

///StudyYearPublic

@freezed
class StudyYearPublic with _$StudyYearPublic {
  const StudyYearPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudyYearPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Value
    @JsonKey(name: 'value') required String value,
  }) = _StudyYearPublic;

  factory StudyYearPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudyYearPublicFromJson(json);
}
