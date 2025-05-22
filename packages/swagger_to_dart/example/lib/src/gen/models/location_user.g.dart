// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationUserUser _$LocationUserUserFromJson(Map<String, dynamic> json) =>
    LocationUserUser(
      User.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LocationUserUserToJson(LocationUserUser instance) =>
    <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

LocationUserLocation _$LocationUserLocationFromJson(
  Map<String, dynamic> json,
) => LocationUserLocation(
  Location.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$LocationUserLocationToJson(
  LocationUserLocation instance,
) => <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};
