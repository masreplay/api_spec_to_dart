import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_summary_response_.freezed.dart';
part 'base_response_union_summary_response_.g.dart';

///BaseResponse_Union_SummaryResponse__NoneType__

@freezed
class BaseResponseUnionSummaryResponse with _$BaseResponseUnionSummaryResponse {
  const BaseResponseUnionSummaryResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionSummaryResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required SummaryResponse? data,
  }) = _BaseResponseUnionSummaryResponse;

  factory BaseResponseUnionSummaryResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionSummaryResponseFromJson(
        json,
      );
}
