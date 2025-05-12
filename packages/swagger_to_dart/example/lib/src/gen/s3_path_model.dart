library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 's3_path_model.freezed.dart';
part 's3_path_model.g.dart'; // S3PathModel

@freezed
abstract class S3PathModel with _$S3PathModel {
  const S3PathModel._();

  const factory S3PathModel({
    /// s3Path
    @JsonKey(name: s3PathKey) String s3Path,
  }) = _S3PathModel;

  factory S3PathModel.fromJson(Map<String, dynamic> json) =>
      _$S3PathModelFromJson(json);

  static const String s3PathKey = "s3Path";
}
