import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_union_list_weekly_schedule_response_none_type.freezed.dart';
part 'base_response_union_list_weekly_schedule_response_none_type.g.dart';

@freezed
class BaseResponseUnionListWeeklyScheduleResponseNoneType
    with _$BaseResponseUnionListWeeklyScheduleResponseNoneType {
  const BaseResponseUnionListWeeklyScheduleResponseNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionListWeeklyScheduleResponseNoneType({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List? data,
  }) = _BaseResponseUnionListWeeklyScheduleResponseNoneType;

  factory BaseResponseUnionListWeeklyScheduleResponseNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionListWeeklyScheduleResponseNoneTypeFromJson(json);
}
