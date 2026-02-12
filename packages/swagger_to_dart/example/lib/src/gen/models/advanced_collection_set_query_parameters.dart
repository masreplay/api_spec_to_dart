/// AdvancedCollectionSetQueryParameters
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "items": {
///                 "type": "integer"
///             },
///             "default": [
///                 1,
///                 2,
///                 3
///             ],
///             "title": "Items"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library advanced_collection_set_query_parameters;

import 'exports.dart';
part 'advanced_collection_set_query_parameters.freezed.dart';
part 'advanced_collection_set_query_parameters.g.dart'; // AdvancedCollectionSetQueryParameters

@freezed
abstract class AdvancedCollectionSetQueryParameters
    with _$AdvancedCollectionSetQueryParameters {
  const AdvancedCollectionSetQueryParameters._();

  @jsonSerializable
  const factory AdvancedCollectionSetQueryParameters({
    /// items
    @Default(const [1, 2, 3])
    @JsonKey(name: AdvancedCollectionSetQueryParameters.itemsKey_)
    List<int> items,
  }) = _AdvancedCollectionSetQueryParameters;

  factory AdvancedCollectionSetQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCollectionSetQueryParametersFromJson(json);

  static const String itemsKey_ = r'items';
}
