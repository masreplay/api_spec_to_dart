import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_profile_public.freezed.dart';
part 'lecturer_profile_public.g.dart';

@freezed
class LecturerProfilePublic with _$LecturerProfilePublic {
  const LecturerProfilePublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerProfilePublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'full_name')

    /// Full Name
    required String fullName,
    @JsonKey(name: 'image_url')

    /// Image Url
    required Uri? imageUrl,
  }) = _LecturerProfilePublic;

  factory LecturerProfilePublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerProfilePublicFromJson(json);
}
