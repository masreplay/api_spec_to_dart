// S3PathModel
// {
//     "properties": {
//         "s3_path": {
//             "type": "string",
//             "pattern": "^s3://([^/]+)/(.*?([^/]+)/?)$",
//             "title": "S3 Path"
//         }
//     },
//     "type": "object",
//     "required": [
//         "s3_path"
//     ],
//     "title": "S3PathModel"
// }

library;

import 'exports.dart';
part 's3_path_model.freezed.dart';
part 's3_path_model.g.dart'; // S3PathModel

@freezed
abstract class S3PathModel with _$S3PathModel {
  const S3PathModel._();

  @generationJsonSerializable
  const factory S3PathModel({
    /// s3Path
    @JsonKey(name: S3PathModel.s3PathKey) required String s3Path,
  }) = _S3PathModel;

  factory S3PathModel.fromJson(Map<String, dynamic> json) =>
      _$S3PathModelFromJson(json);

  static const String s3PathKey = "s3Path";
}
