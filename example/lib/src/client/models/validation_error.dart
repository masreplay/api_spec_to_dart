import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'validation_error.freezed.dart';
part 'validation_error.g.dart';

@freezed
class ValidationError with _$ValidationError {
  const ValidationError._();

  @JsonSerializable(converters: convertors)
  const factory ValidationError({
    @JsonKey(name: 'loc') required List loc,
    @JsonKey(name: 'msg') required String msg,
    @JsonKey(name: 'type') required String type,
  }) = _ValidationError;

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);
}
