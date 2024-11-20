import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_admission_me_public.freezed.dart';
part 'base_response_list_admission_me_public.g.dart';

@freezed
class BaseResponseListAdmissionMePublic
    with _$BaseResponseListAdmissionMePublic {
  const factory BaseResponseListAdmissionMePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListAdmissionMePublic;

  factory BaseResponseListAdmissionMePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListAdmissionMePublicFromJson(json);
}
