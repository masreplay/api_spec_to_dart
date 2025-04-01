import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'users_read_users_queries.freezed.dart';
part 'users_read_users_queries.g.dart';

/// usersReadUsersQueries

@freezed
abstract class UsersReadUsersQueries with _$UsersReadUsersQueries {
  @JsonSerializable(converters: convertors)
  const factory UsersReadUsersQueries({
    /// skip
    @Default(0) @JsonKey(name: UsersReadUsersQueries.skipKey) int skip,

    /// limit
    @Default(100) @JsonKey(name: UsersReadUsersQueries.limitKey) int limit,
  }) = _UsersReadUsersQueries;

  factory UsersReadUsersQueries.fromJson(Map<String, dynamic> json) =>
      _$UsersReadUsersQueriesFromJson(json);
  const UsersReadUsersQueries._();

  static const String skipKey = 'skip';
  static const String limitKey = 'limit';
}
