import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "aba_routing_model.freezed.dart";
part "aba_routing_model.g.dart";

/// ABARoutingModel
@freezed
abstract class ABARoutingModel with _$ABARoutingModel {
  const ABARoutingModel._();

  static const String routingNumberKey = "routing_number";

  @JsonSerializable(converters: convertors)
  const factory ABARoutingModel({
    /// routing_number
    @JsonKey(name: ABARoutingModel.routingNumberKey)
    required String routingNumber,
  }) = _ABARoutingModel;

  factory ABARoutingModel.fromJson(Map<String, dynamic> json) =>
      _$ABARoutingModelFromJson(json);
}
