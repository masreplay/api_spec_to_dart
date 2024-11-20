import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_file_public_none_type.freezed.dart';
part 'base_response_union_file_public_none_type.g.dart';

@freezed
class BaseResponseUnionFilePublicNoneType
    with _$BaseResponseUnionFilePublicNoneType {
  const BaseResponseUnionFilePublicNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionFilePublicNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required FilePublic? data,
  }) = _BaseResponseUnionFilePublicNoneType;

  factory BaseResponseUnionFilePublicNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionFilePublicNoneTypeFromJson(json);
}
