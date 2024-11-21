import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'joining_time.freezed.dart';
part 'joining_time.g.dart';

///JoiningTime

@freezed
class JoiningTime with _$JoiningTime {
  const JoiningTime._();

  @JsonSerializable(converters: convertors)
  const factory JoiningTime({
    /// Joining Time
    @JsonKey(name: 'joining_time') required DateTime? joiningTime,
  }) = _JoiningTime;

  factory JoiningTime.fromJson(Map<String, dynamic> json) =>
      _$JoiningTimeFromJson(json);
}
