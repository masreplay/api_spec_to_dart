/// AdvancedCollectionTupleQueryParameters
/// {
///     "properties": {
///         "items": {
///             "type": "array",
///             "title": "Items"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'advanced_collection_tuple_query_parameters.freezed.dart';
part 'advanced_collection_tuple_query_parameters.g.dart'; // AdvancedCollectionTupleQueryParameters

@freezed
abstract class AdvancedCollectionTupleQueryParameters
    with _$AdvancedCollectionTupleQueryParameters {
  const AdvancedCollectionTupleQueryParameters._();

  @jsonSerializable
  const factory AdvancedCollectionTupleQueryParameters({
    /// items
    @JsonKey(name: AdvancedCollectionTupleQueryParameters.itemsKey)
    required List<dynamic> items,
  }) = _AdvancedCollectionTupleQueryParameters;

  factory AdvancedCollectionTupleQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCollectionTupleQueryParametersFromJson(json);

  static const String itemsKey = r'items';
}
