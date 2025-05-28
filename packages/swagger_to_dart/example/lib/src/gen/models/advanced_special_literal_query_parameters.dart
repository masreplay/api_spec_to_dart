/// AdvancedSpecialLiteralQueryParameters
/// {
///     "properties": {
///         "mode": {
///             "enum": [
///                 "light",
///                 "dark",
///                 "system"
///             ],
///             "type": "string",
///             "default": "system",
///             "title": "Mode"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'advanced_special_literal_query_parameters.freezed.dart';
part 'advanced_special_literal_query_parameters.g.dart'; // AdvancedSpecialLiteralQueryParameters

@freezed
abstract class AdvancedSpecialLiteralQueryParameters
    with _$AdvancedSpecialLiteralQueryParameters {
  const AdvancedSpecialLiteralQueryParameters._();

  @jsonSerializable
  const factory AdvancedSpecialLiteralQueryParameters({
    /// mode
    @Default(Mode.system)
    @JsonKey(name: AdvancedSpecialLiteralQueryParameters.modeKey)
    Mode mode,
  }) = _AdvancedSpecialLiteralQueryParameters;

  factory AdvancedSpecialLiteralQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedSpecialLiteralQueryParametersFromJson(json);

  static const String modeKey = r'mode';
}
