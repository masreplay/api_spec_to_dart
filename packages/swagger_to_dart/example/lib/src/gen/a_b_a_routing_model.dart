library a_b_a_routing_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'a_b_a_routing_model.freezed.dart';
part 'a_b_a_routing_model.g.dart'; // ABARoutingModel

@freezed
abstract class ABARoutingModel with _$ABARoutingModel {
  const ABARoutingModel._();

  const factory ABARoutingModel(
    /// routingNumber
    @JsonKey(name: routingNumberKey) String routingNumber,
  ) = _ABARoutingModel;

  factory ABARoutingModel.fromJson(Map<String, dynamic> json) =>
      _$ABARoutingModelFromJson(json);

  static const String routingNumberKey = "routingNumber";
}
