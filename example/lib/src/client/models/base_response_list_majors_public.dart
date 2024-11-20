import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_majors_public.freezed.dart';
part 'base_response_list_majors_public.g.dart';

@freezed
class BaseResponseListMajorsPublic with _$BaseResponseListMajorsPublic {
  const factory BaseResponseListMajorsPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListMajorsPublic;

  factory BaseResponseListMajorsPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListMajorsPublicFromJson(json);
}
