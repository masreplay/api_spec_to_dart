/// ProblemDetails
/// {
///     "properties": {
///         "type": {
///             "type": "string",
///             "nullable": true
///         },
///         "title": {
///             "type": "string",
///             "nullable": true
///         },
///         "status": {
///             "type": "integer",
///             "format": "int32",
///             "nullable": true
///         },
///         "detail": {
///             "type": "string",
///             "nullable": true
///         },
///         "instance": {
///             "type": "string",
///             "nullable": true
///         }
///     },
///     "type": "object"
/// }
library problem_details;

import 'exports.dart';
part 'problem_details.freezed.dart';
part 'problem_details.g.dart'; // ProblemDetails

@freezed
abstract class ProblemDetails with _$ProblemDetails {
  const ProblemDetails._();

  @jsonSerializable
  const factory ProblemDetails({
    /// type
    @JsonKey(name: ProblemDetails.typeKey_) String? type,

    /// title
    @JsonKey(name: ProblemDetails.titleKey_) String? title,

    /// status
    @JsonKey(name: ProblemDetails.statusKey_) int? status,

    /// detail
    @JsonKey(name: ProblemDetails.detailKey_) String? detail,

    /// instance
    @JsonKey(name: ProblemDetails.instanceKey_) String? instance,
  }) = _ProblemDetails;

  factory ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  static const String typeKey_ = r'type';

  static const String titleKey_ = r'title';

  static const String statusKey_ = r'status';

  static const String detailKey_ = r'detail';

  static const String instanceKey_ = r'instance';
}
