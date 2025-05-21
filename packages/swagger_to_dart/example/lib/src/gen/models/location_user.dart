library;

import 'exports.dart';
part 'location_user.freezed.dart';
part 'location_user.g.dart'; // LocationUser

@freezed
sealed class LocationUser with _$LocationUser {
  const LocationUser._();

  @jsonSerializable
  @FreezedUnionValue("user")
  const factory LocationUser.user(User value) = LocationUserUser;

  @jsonSerializable
  @FreezedUnionValue("location")
  const factory LocationUser.location(Location value) = LocationUserLocation;

  factory LocationUser.fromJson(Map<String, dynamic> json) =>
      _$LocationUserFromJson(json);
}
