import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "s3_path_model.freezed.dart";
part "s3_path_model.g.dart";

/// S3PathModel
@freezed
abstract class S3PathModel with _$S3PathModel {
  const S3PathModel._();

  static const String s3PathKey = "s3_path";

  @JsonSerializable(converters: convertors)
  const factory S3PathModel({
    /// s3_path
    @JsonKey(name: S3PathModel.s3PathKey) required String s3Path,
  }) = _S3PathModel;

  factory S3PathModel.fromJson(Map<String, dynamic> json) =>
      _$S3PathModelFromJson(json);
}
