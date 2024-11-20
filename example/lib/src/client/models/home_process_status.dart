import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_process_status.freezed.dart';
part 'home_process_status.g.dart';

@freezed
class HomeProcessStatus with _$HomeProcessStatus {
  const factory HomeProcessStatus() = _HomeProcessStatus;

  factory HomeProcessStatus.fromJson(Map<String, dynamic> json) =>
      _$HomeProcessStatusFromJson(json);
}
