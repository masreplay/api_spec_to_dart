/// AdvancedDependsClassQueryParameters
/// {
///     "properties": {
///         "db_name": {
///             "type": "string",
///             "default": "default",
///             "title": "Db Name"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library advanced_depends_class_query_parameters;

import 'exports.dart';
part 'advanced_depends_class_query_parameters.freezed.dart';
part 'advanced_depends_class_query_parameters.g.dart'; // AdvancedDependsClassQueryParameters

@freezed
abstract class AdvancedDependsClassQueryParameters
    with _$AdvancedDependsClassQueryParameters {
  const AdvancedDependsClassQueryParameters._();

  @jsonSerializable
  const factory AdvancedDependsClassQueryParameters({
    /// dbName
    @Default('default')
    @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey_)
    String dbName,
  }) = _AdvancedDependsClassQueryParameters;

  factory AdvancedDependsClassQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedDependsClassQueryParametersFromJson(json);

  static const String dbNameKey_ = r'db_name';
}
