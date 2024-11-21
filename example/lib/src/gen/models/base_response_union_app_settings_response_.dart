import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_app_settings_response_.freezed.dart';
part 'base_response_union_app_settings_response_.g.dart';

///BaseResponse_Union_AppSettingsResponse__NoneType__

@freezed
class BaseResponseUnionAppSettingsResponse
    with _$BaseResponseUnionAppSettingsResponse {
  const BaseResponseUnionAppSettingsResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionAppSettingsResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required AppSettingsResponse? data,
  }) = _BaseResponseUnionAppSettingsResponse;

  factory BaseResponseUnionAppSettingsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionAppSettingsResponseFromJson(
        json,
      );
}
