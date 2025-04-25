import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'time_zone_model.freezed.dart';
part 'time_zone_model.g.dart';

/// TimeZoneModel
@freezed
abstract class TimeZoneModel with _$TimeZoneModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory TimeZoneModel({required String timezone}) = _TimeZoneModel;

  factory TimeZoneModel.fromJson(Map<String, dynamic> json) =>
      _$TimeZoneModelFromJson(json);
}
