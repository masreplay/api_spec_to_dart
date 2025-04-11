import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'advanced_special_uuid_queries.freezed.dart';
part 'advanced_special_uuid_queries.g.dart';

/// advancedSpecialUuidQueries
@freezed
abstract class AdvancedSpecialUuidQueries with _$AdvancedSpecialUuidQueries {
  const AdvancedSpecialUuidQueries._();

  static const String idKey = 'id';

  @JsonSerializable(converters: convertors)
  const factory AdvancedSpecialUuidQueries({
    /// id
    @JsonKey(name: AdvancedSpecialUuidQueries.idKey) required String id,
  }) = _AdvancedSpecialUuidQueries;

  factory AdvancedSpecialUuidQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSpecialUuidQueriesFromJson(json);
}
