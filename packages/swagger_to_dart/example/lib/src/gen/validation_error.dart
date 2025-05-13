// ValidationError
// {
//     "properties": {
//         "loc": {
//             "type": "array",
//             "items": {
//                 "anyOf": [
//                     {
//                         "type": "string"
//                     },
//                     {
//                         "type": "integer"
//                     }
//                 ]
//             },
//             "title": "Location"
//         },
//         "msg": {
//             "type": "string",
//             "title": "Message"
//         },
//         "type": {
//             "type": "string",
//             "title": "Error Type"
//         }
//     },
//     "type": "object",
//     "required": [
//         "loc",
//         "msg",
//         "type"
//     ],
//     "title": "ValidationError"
// }

library;

import 'exports.dart';
part 'validation_error.freezed.dart';
part 'validation_error.g.dart'; // ValidationError

@freezed
abstract class ValidationError with _$ValidationError {
  const ValidationError._();

  const factory ValidationError({
    /// loc
    @JsonKey(name: ValidationError.locKey) required List<dynamic> loc,

    /// msg
    @JsonKey(name: ValidationError.msgKey) required String msg,

    /// type
    @JsonKey(name: ValidationError.typeKey) required String type,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  static const String locKey = "loc";

  static const String msgKey = "msg";

  static const String typeKey = "type";
}
