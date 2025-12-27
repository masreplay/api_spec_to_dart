/// AdvancedSpecialEnumQueryParameters
/// {
///     "properties": {
///         "level": {
///             "$ref": "#/components/schemas/UserLevel",
///             "default": "basic"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library advanced_special_enum_query_parameters;

import 'exports.dart';
part 'advanced_special_enum_query_parameters.freezed.dart';
part 'advanced_special_enum_query_parameters.g.dart'; // AdvancedSpecialEnumQueryParameters

@freezed
abstract class AdvancedSpecialEnumQueryParameters
    with _$AdvancedSpecialEnumQueryParameters {
  const AdvancedSpecialEnumQueryParameters._();

  @jsonSerializable
  const factory AdvancedSpecialEnumQueryParameters({
    /// level
    @Default(UserLevel.basic)
    @JsonKey(name: AdvancedSpecialEnumQueryParameters.levelKey_)
    UserLevel level,
  }) = _AdvancedSpecialEnumQueryParameters;

  factory AdvancedSpecialEnumQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedSpecialEnumQueryParametersFromJson(json);

  static const String levelKey_ = r'level';
}
