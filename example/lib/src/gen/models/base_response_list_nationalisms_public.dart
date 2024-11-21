import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_nationalisms_public.freezed.dart';
part 'base_response_list_nationalisms_public.g.dart';

@freezed
class BaseResponseListNationalismsPublic
    with _$BaseResponseListNationalismsPublic {
  const BaseResponseListNationalismsPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListNationalismsPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<NationalismsPublic> data,
  }) = _BaseResponseListNationalismsPublic;

  factory BaseResponseListNationalismsPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListNationalismsPublicFromJson(json);
}
