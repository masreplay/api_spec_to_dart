import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'user.freezed.dart';
part 'user.g.dart';

/// User
@freezed
abstract class User with _$User {
  @JsonSerializable(converters: Convertors.convertors)
  const factory User({
    required String username,
    required String email,
    required String? fullName,
    required int id,
    required bool isActive,
    required String createdAt,
    required Location? location,
    required List<String> tags,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
