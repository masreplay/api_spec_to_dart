import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_profile_public.freezed.dart';
part 'lecturer_profile_public.g.dart';

///LecturerProfilePublic

@freezed
class LecturerProfilePublic with _$LecturerProfilePublic {
  const LecturerProfilePublic._();

  @JsonSerializable(converters: convertors)
  const factory LecturerProfilePublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Full Name
    @JsonKey(name: 'full_name') required String fullName,

    /// Image Url
    @JsonKey(name: 'image_url') required Uri? imageUrl,
  }) = _LecturerProfilePublic;

  factory LecturerProfilePublic.fromJson(Map<String, dynamic> json) =>
      _$LecturerProfilePublicFromJson(json);
}
