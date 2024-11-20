import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_app_settings_response_none_type.freezed.dart';
part 'base_response_union_app_settings_response_none_type.g.dart';

@freezed
class BaseResponseUnionAppSettingsResponseNoneType
    with _$BaseResponseUnionAppSettingsResponseNoneType {
  const BaseResponseUnionAppSettingsResponseNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionAppSettingsResponseNoneType({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required AppSettingsResponse? data,
  }) = _BaseResponseUnionAppSettingsResponseNoneType;

  factory BaseResponseUnionAppSettingsResponseNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionAppSettingsResponseNoneTypeFromJson(json);
}
