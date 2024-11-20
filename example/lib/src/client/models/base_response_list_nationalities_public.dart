import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_nationalities_public.freezed.dart';
part 'base_response_list_nationalities_public.g.dart';

@freezed
class BaseResponseListNationalitiesPublic
    with _$BaseResponseListNationalitiesPublic {
  const factory BaseResponseListNationalitiesPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListNationalitiesPublic;

  factory BaseResponseListNationalitiesPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListNationalitiesPublicFromJson(json);
}
