import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_file_public_.freezed.dart';
part 'base_response_union_file_public_.g.dart';

///BaseResponse_Union_FilePublic__NoneType__

@freezed
class BaseResponseUnionFilePublic with _$BaseResponseUnionFilePublic {
  const BaseResponseUnionFilePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionFilePublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required FilePublic? data,
  }) = _BaseResponseUnionFilePublic;

  factory BaseResponseUnionFilePublic.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseUnionFilePublicFromJson(json);
}
