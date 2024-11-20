import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_summary_response_none_type.freezed.dart';
part 'base_response_union_summary_response_none_type.g.dart';

@freezed
class BaseResponseUnionSummaryResponseNoneType
    with _$BaseResponseUnionSummaryResponseNoneType {
  const BaseResponseUnionSummaryResponseNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionSummaryResponseNoneType({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required SummaryResponse? data,
  }) = _BaseResponseUnionSummaryResponseNoneType;

  factory BaseResponseUnionSummaryResponseNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionSummaryResponseNoneTypeFromJson(json);
}
