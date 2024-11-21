import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_country_public.freezed.dart';
part 'base_response_list_country_public.g.dart';

///BaseResponse_list_CountryPublic__

@freezed
class BaseResponseListCountryPublic with _$BaseResponseListCountryPublic {
  const BaseResponseListCountryPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListCountryPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<CountryPublic> data,
  }) = _BaseResponseListCountryPublic;

  factory BaseResponseListCountryPublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseListCountryPublicFromJson(json);
}
