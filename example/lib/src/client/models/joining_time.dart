import 'package:freezed_annotation/freezed_annotation.dart';

part 'joining_time.freezed.dart';
part 'joining_time.g.dart';

@freezed
class JoiningTime with _$JoiningTime {
  const factory JoiningTime({
    @JsonKey(name: 'joining_time') required DateTime? joiningTime,
  }) = _JoiningTime;

  factory JoiningTime.fromJson(Map<String, dynamic> json) =>
      _$JoiningTimeFromJson(json);
}
