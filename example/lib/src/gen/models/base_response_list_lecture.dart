import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_lecture.freezed.dart';
part 'base_response_list_lecture.g.dart';

@freezed
class BaseResponseListLecture with _$BaseResponseListLecture {
  const BaseResponseListLecture._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListLecture({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data')
    required List<AppApiRoutesV1StudentAttendanceRouteLecture> data,
  }) = _BaseResponseListLecture;

  factory BaseResponseListLecture.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListLectureFromJson(json);
}
