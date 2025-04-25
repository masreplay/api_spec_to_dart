import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'user_base.freezed.dart';
part 'user_base.g.dart';

/// UserBase
@freezed
abstract class UserBase with _$UserBase {
  @JsonSerializable(converters: Convertors.convertors)
  const factory UserBase({
    required String username,
    required String email,
    required String? fullName,
  }) = _UserBase;

  factory UserBase.fromJson(Map<String, dynamic> json) =>
      _$UserBaseFromJson(json);
}
