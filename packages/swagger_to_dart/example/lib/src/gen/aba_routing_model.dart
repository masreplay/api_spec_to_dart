// ABARoutingModel
// {
//     "properties": {
//         "routing_number": {
//             "type": "string",
//             "maxLength": 9,
//             "minLength": 9,
//             "title": "Routing Number"
//         }
//     },
//     "type": "object",
//     "required": [
//         "routing_number"
//     ],
//     "title": "ABARoutingModel"
// }

library;

import 'exports.dart';
part 'aba_routing_model.freezed.dart';
part 'aba_routing_model.g.dart'; // ABARoutingModel

@freezed
abstract class ABARoutingModel with _$ABARoutingModel {
  const ABARoutingModel._();

  const factory ABARoutingModel({
    /// routingNumber
    @JsonKey(name: ABARoutingModel.routingNumberKey)
    required String routingNumber,
  }) = _ABARoutingModel;

  factory ABARoutingModel.fromJson(Map<String, dynamic> json) =>
      _$ABARoutingModelFromJson(json);

  static const String routingNumberKey = "routingNumber";
}
