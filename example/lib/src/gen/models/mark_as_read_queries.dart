import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'mark_as_read_queries.freezed.dart';
part 'mark_as_read_queries.g.dart';

@freezed
class MarkAsReadQueries with _$MarkAsReadQueries {
  const MarkAsReadQueries._();

  @JsonSerializable(converters: convertors)
  const factory MarkAsReadQueries({
    /// Id
    @JsonKey(name: 'id') required int id,
  }) = _MarkAsReadQueries;

  factory MarkAsReadQueries.fromJson(Map<String, dynamic> json) =>
      _$MarkAsReadQueriesFromJson(json);
}
