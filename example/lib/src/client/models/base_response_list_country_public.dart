import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_country_public.freezed.dart';
part 'base_response_list_country_public.g.dart';

@freezed
class BaseResponseListCountryPublic with _$BaseResponseListCountryPublic {
  const BaseResponseListCountryPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCountryPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListCountryPublic;

  factory BaseResponseListCountryPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListCountryPublicFromJson(json);
}
