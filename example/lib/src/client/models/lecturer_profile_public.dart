import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_profile_public.freezed.dart';
part 'lecturer_profile_public.g.dart';

@freezed
class LecturerProfilePublic with _$LecturerProfilePublic {
  const factory LecturerProfilePublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'image_url') required Uri? imageUrl,
  }) = _LecturerProfilePublic;

  factory LecturerProfilePublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerProfilePublicFromJson(json);
}
