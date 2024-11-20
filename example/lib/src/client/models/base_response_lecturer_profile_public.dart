import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_lecturer_profile_public.freezed.dart';
part 'base_response_lecturer_profile_public.g.dart';

@freezed
class BaseResponseLecturerProfilePublic
    with _$BaseResponseLecturerProfilePublic {
  const BaseResponseLecturerProfilePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseLecturerProfilePublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required LecturerProfilePublic data,
  }) = _BaseResponseLecturerProfilePublic;

  factory BaseResponseLecturerProfilePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseLecturerProfilePublicFromJson(json);
}
