import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_nationalisms_public.freezed.dart';
part 'base_response_list_nationalisms_public.g.dart';

@freezed
class BaseResponseListNationalismsPublic
    with _$BaseResponseListNationalismsPublic {
  const BaseResponseListNationalismsPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListNationalismsPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListNationalismsPublic;

  factory BaseResponseListNationalismsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListNationalismsPublicFromJson(json);
}
