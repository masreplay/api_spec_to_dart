import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'read_semesters_queries.freezed.dart';
part 'read_semesters_queries.g.dart';

///readSemestersQueries

@freezed
class ReadSemestersQueries with _$ReadSemestersQueries {
  const ReadSemestersQueries._();

  @JsonSerializable(converters: convertors)
  const factory ReadSemestersQueries({
    @Default(SemesterFilter.all)
    @JsonKey(name: 'filter')
    required SemesterFilter filter,
  }) = _ReadSemestersQueries;

  factory ReadSemestersQueries.fromJson(Map<String, dynamic> json) =>
      _$ReadSemestersQueriesFromJson(json);
}
