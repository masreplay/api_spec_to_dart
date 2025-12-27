/// S3PathModel
/// {
///     "properties": {
///         "s3_path": {
///             "type": "string",
///             "pattern": "^s3://([^/]+)/(.*?([^/]+)/?)$",
///             "title": "S3 Path"
///         }
///     },
///     "type": "object",
///     "required": [
///         "s3_path"
///     ],
///     "title": "S3PathModel"
/// }
library s3_path_model;

import 'exports.dart';
part 's3_path_model.freezed.dart';
part 's3_path_model.g.dart'; // S3PathModel

@freezed
abstract class S3PathModel with _$S3PathModel {
  const S3PathModel._();

  @jsonSerializable
  const factory S3PathModel({
    /// s3Path
    @JsonKey(name: S3PathModel.s3PathKey_) required String s3Path,
  }) = _S3PathModel;

  factory S3PathModel.fromJson(Map<String, dynamic> json) =>
      _$S3PathModelFromJson(json);

  static const String s3PathKey_ = r's3_path';
}
