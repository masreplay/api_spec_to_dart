import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'advanced_special_enum_queries.freezed.dart';
part 'advanced_special_enum_queries.g.dart';

/// advancedSpecialEnumQueries
@freezed
abstract class AdvancedSpecialEnumQueries with _$AdvancedSpecialEnumQueries {
  const AdvancedSpecialEnumQueries._();

  static const String levelKey = 'level';

  @JsonSerializable(converters: convertors)
  const factory AdvancedSpecialEnumQueries({
    @Default(UserLevel.basic)
    @JsonKey(name: AdvancedSpecialEnumQueries.levelKey)
    UserLevel level,
  }) = _AdvancedSpecialEnumQueries;

  factory AdvancedSpecialEnumQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSpecialEnumQueriesFromJson(json);
}
