import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'set_password_queries.freezed.dart';
part 'set_password_queries.g.dart';

///setPasswordQueries

@freezed
class SetPasswordQueries with _$SetPasswordQueries {
  const SetPasswordQueries._();

  @JsonSerializable(converters: convertors)
  const factory SetPasswordQueries({
    /// Password 1
    @JsonKey(name: 'password1') required String password1,

    /// Method
    @Default('sms') @JsonKey(name: 'method') required String method,

    /// Input
    @JsonKey(name: 'input') required String input,
  }) = _SetPasswordQueries;

  factory SetPasswordQueries.fromJson(Map<String, dynamic> json) =>
      _$SetPasswordQueriesFromJson(json);
}
