import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'validation_error.freezed.dart';
part 'validation_error.g.dart';

/// ValidationError
@freezed
abstract class ValidationError with _$ValidationError {
  @JsonSerializable(converters: convertors)
  const factory ValidationError({
    /// loc
    @JsonKey(name: ValidationError.locKey) required List<dynamic> loc,

    /// msg
    @JsonKey(name: ValidationError.msgKey) required String msg,

    /// type
    @JsonKey(name: ValidationError.type_Key) required String type_,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);
  const ValidationError._();

  static const String locKey = 'loc';
  static const String msgKey = 'msg';
  static const String type_Key = 'type';
}
