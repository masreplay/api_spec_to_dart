library aba_routing_model.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'aba_routing_model.freezed.dart';
part 'aba_routing_model.g.dart'; // ABARoutingModel

@freezed
abstract class ABARoutingModel with _$ABARoutingModel {
  const ABARoutingModel._();

  const factory ABARoutingModel() = _ABARoutingModel;

  factory ABARoutingModel.fromJson(Map<String, dynamic> json) =>
      _$ABARoutingModelFromJson(json);
}
