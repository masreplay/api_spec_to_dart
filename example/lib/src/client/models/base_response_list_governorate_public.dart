import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_governorate_public.freezed.dart';
part 'base_response_list_governorate_public.g.dart';

@freezed
class BaseResponseListGovernoratePublic
    with _$BaseResponseListGovernoratePublic {
  const BaseResponseListGovernoratePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListGovernoratePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListGovernoratePublic;

  factory BaseResponseListGovernoratePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListGovernoratePublicFromJson(json);
}
