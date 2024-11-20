import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_nationalisms_public.freezed.dart';
part 'base_response_list_nationalisms_public.g.dart';

@freezed
class BaseResponseListNationalismsPublic
    with _$BaseResponseListNationalismsPublic {
  const factory BaseResponseListNationalismsPublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListNationalismsPublic;

  factory BaseResponseListNationalismsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListNationalismsPublicFromJson(json);
}
