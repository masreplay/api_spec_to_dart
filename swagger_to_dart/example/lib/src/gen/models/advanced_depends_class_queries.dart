import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'advanced_depends_class_queries.freezed.dart';
part 'advanced_depends_class_queries.g.dart';

/// advancedDependsClassQueries
@freezed
abstract class AdvancedDependsClassQueries with _$AdvancedDependsClassQueries {
  const AdvancedDependsClassQueries._();

  static const String dbNameKey = 'db_name';

  @JsonSerializable(converters: convertors)
  const factory AdvancedDependsClassQueries({
    /// db_name
    @Default('default')
    @JsonKey(name: AdvancedDependsClassQueries.dbNameKey)
    String dbName,
  }) = _AdvancedDependsClassQueries;

  factory AdvancedDependsClassQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedDependsClassQueriesFromJson(json);
}
