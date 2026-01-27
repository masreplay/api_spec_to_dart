/// UsersApiUsersGetQueryParameters
/// {
///     "properties": {
///         "active": {
///             "type": "boolean",
///             "nullable": true
///         },
///         "search": {
///             "type": "string",
///             "nullable": true
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library users_api_users_get_query_parameters;

import 'exports.dart';
part 'users_api_users_get_query_parameters.freezed.dart';
part 'users_api_users_get_query_parameters.g.dart'; // UsersApiUsersGetQueryParameters

@freezed
abstract class UsersApiUsersGetQueryParameters
    with _$UsersApiUsersGetQueryParameters {
  const UsersApiUsersGetQueryParameters._();

  @jsonSerializable
  const factory UsersApiUsersGetQueryParameters({
    /// active
    @JsonKey(name: UsersApiUsersGetQueryParameters.activeKey_) bool? active,

    /// search
    @JsonKey(name: UsersApiUsersGetQueryParameters.searchKey_) String? search,
  }) = _UsersApiUsersGetQueryParameters;

  factory UsersApiUsersGetQueryParameters.fromJson(Map<String, dynamic> json) =>
      _$UsersApiUsersGetQueryParametersFromJson(json);

  static const String activeKey_ = r'active';

  static const String searchKey_ = r'search';
}
