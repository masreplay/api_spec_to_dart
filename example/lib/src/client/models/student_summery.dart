import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_summery.freezed.dart';
part 'student_summery.g.dart';

@freezed
class StudentSummery with _$StudentSummery {
  const StudentSummery._();

  @JsonSerializable(converters: convertors)
  const factory StudentSummery({
    @JsonKey(name: 'image_url')

    /// Image Url
    required String? imageUrl,
  }) = _StudentSummery;

  factory StudentSummery.fromJson(Map<String, dynamic> json) =>
      _$StudentSummeryFromJson(json);
}
