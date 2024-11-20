import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_admission_me_public.freezed.dart';
part 'base_response_list_admission_me_public.g.dart';

@freezed
class BaseResponseListAdmissionMePublic
    with _$BaseResponseListAdmissionMePublic {
  const BaseResponseListAdmissionMePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListAdmissionMePublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListAdmissionMePublic;

  factory BaseResponseListAdmissionMePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListAdmissionMePublicFromJson(json);
}
