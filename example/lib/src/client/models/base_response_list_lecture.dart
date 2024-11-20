import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_lecture.freezed.dart';
part 'base_response_list_lecture.g.dart';

@freezed
class BaseResponseListLecture with _$BaseResponseListLecture {
  const BaseResponseListLecture._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListLecture({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListLecture;

  factory BaseResponseListLecture.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListLectureFromJson(json);
}
