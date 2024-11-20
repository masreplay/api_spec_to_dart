import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'joining_time.freezed.dart';
part 'joining_time.g.dart';

@freezed
class JoiningTime with _$JoiningTime {
  const JoiningTime._();

  @JsonSerializable(converters: convertors)
  const factory JoiningTime({
    @JsonKey(name: 'joining_time')

    /// Joining Time
    required DateTime? joiningTime,
  }) = _JoiningTime;

  factory JoiningTime.fromJson(Map<String, dynamic> json) =>
      _$JoiningTimeFromJson(json);
}
