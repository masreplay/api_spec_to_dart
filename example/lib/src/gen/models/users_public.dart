import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'users_public.freezed.dart';
part 'users_public.g.dart';

/// UsersPublic
@freezed
abstract class UsersPublic with _$UsersPublic {
  @JsonSerializable(converters: convertors)
  const factory UsersPublic({
    /// data
    @JsonKey(name: UsersPublic.dataKey) required List<UserPublic> data,

    /// count
    @JsonKey(name: UsersPublic.countKey) required int count,
  }) = _UsersPublic;

  factory UsersPublic.fromJson(Map<String, dynamic> json) =>
      _$UsersPublicFromJson(json);
  const UsersPublic._();

  static const String dataKey = 'data';
  static const String countKey = 'count';
}
