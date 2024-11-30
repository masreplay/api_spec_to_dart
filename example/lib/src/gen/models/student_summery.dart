import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_summery.freezed.dart';
part 'student_summery.g.dart';

///StudentSummery

@freezed
class StudentSummery with _$StudentSummery {
  const StudentSummery._();

  @JsonSerializable(converters: convertors)
  const factory StudentSummery({
    /// Image Url
    @JsonKey(name: 'image_url') required String? imageUrl,
  }) = _StudentSummery;

  factory StudentSummery.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentSummeryFromJson(
        json,
      );
}
