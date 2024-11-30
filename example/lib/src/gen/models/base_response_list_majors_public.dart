import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_majors_public.freezed.dart';
part 'base_response_list_majors_public.g.dart';

///BaseResponse_list_MajorsPublic__

@freezed
class BaseResponseListMajorsPublic with _$BaseResponseListMajorsPublic {
  const BaseResponseListMajorsPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListMajorsPublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<MajorsPublic> data,
  }) = _BaseResponseListMajorsPublic;

  factory BaseResponseListMajorsPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListMajorsPublicFromJson(
        json,
      );
}
