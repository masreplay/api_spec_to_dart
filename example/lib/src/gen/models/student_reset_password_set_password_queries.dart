import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_reset_password_set_password_queries.freezed.dart';
part 'student_reset_password_set_password_queries.g.dart';

///studentResetPasswordSetPasswordQueries

@freezed
class StudentResetPasswordSetPasswordQueries
    with _$StudentResetPasswordSetPasswordQueries {
  const StudentResetPasswordSetPasswordQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentResetPasswordSetPasswordQueries({
    /// Password 1
    @JsonKey(name: 'password1') required String password1,

    /// Method
    @Default('sms') @JsonKey(name: 'method') String method,

    /// Input
    @JsonKey(name: 'input') required String input,
  }) = _StudentResetPasswordSetPasswordQueries;

  factory StudentResetPasswordSetPasswordQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentResetPasswordSetPasswordQueriesFromJson(
        json,
      );
}
