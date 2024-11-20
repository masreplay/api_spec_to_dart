import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_summery.freezed.dart';
part 'student_summery.g.dart';

@freezed
class StudentSummery with _$StudentSummery {
  const factory StudentSummery({
    @JsonKey(name: 'image_url') required String? imageUrl,
  }) = _StudentSummery;

  factory StudentSummery.fromJson(Map<String, dynamic> json) =>
      _$StudentSummeryFromJson(json);
}
