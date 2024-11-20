import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_lecture.freezed.dart';
part 'base_response_list_lecture.g.dart';

@freezed
class BaseResponseListLecture with _$BaseResponseListLecture {
  const factory BaseResponseListLecture({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListLecture;

  factory BaseResponseListLecture.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListLectureFromJson(json);
}
