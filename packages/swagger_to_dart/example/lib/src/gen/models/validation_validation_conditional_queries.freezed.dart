// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_validation_conditional_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationValidationConditionalQueries {
  /// User Id, User ID
  @JsonKey(name: ValidationValidationConditionalQueries.userIdKey)
  int? get userId;

  /// Username, Username
  @JsonKey(name: ValidationValidationConditionalQueries.usernameKey)
  String? get username;

  /// Create a copy of ValidationValidationConditionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationValidationConditionalQueriesCopyWith<
          ValidationValidationConditionalQueries>
      get copyWith => _$ValidationValidationConditionalQueriesCopyWithImpl<
              ValidationValidationConditionalQueries>(
          this as ValidationValidationConditionalQueries, _$identity);

  /// Serializes this ValidationValidationConditionalQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationValidationConditionalQueries &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username);

  @override
  String toString() {
    return 'ValidationValidationConditionalQueries(userId: $userId, username: $username)';
  }
}

/// @nodoc
abstract mixin class $ValidationValidationConditionalQueriesCopyWith<$Res> {
  factory $ValidationValidationConditionalQueriesCopyWith(
          ValidationValidationConditionalQueries value,
          $Res Function(ValidationValidationConditionalQueries) _then) =
      _$ValidationValidationConditionalQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ValidationValidationConditionalQueries.userIdKey)
      int? userId,
      @JsonKey(name: ValidationValidationConditionalQueries.usernameKey)
      String? username});
}

/// @nodoc
class _$ValidationValidationConditionalQueriesCopyWithImpl<$Res>
    implements $ValidationValidationConditionalQueriesCopyWith<$Res> {
  _$ValidationValidationConditionalQueriesCopyWithImpl(this._self, this._then);

  final ValidationValidationConditionalQueries _self;
  final $Res Function(ValidationValidationConditionalQueries) _then;

  /// Create a copy of ValidationValidationConditionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
  }) {
    return _then(_self.copyWith(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _ValidationValidationConditionalQueries
    extends ValidationValidationConditionalQueries {
  const _ValidationValidationConditionalQueries(
      {@JsonKey(name: ValidationValidationConditionalQueries.userIdKey)
      required this.userId,
      @JsonKey(name: ValidationValidationConditionalQueries.usernameKey)
      required this.username})
      : super._();
  factory _ValidationValidationConditionalQueries.fromJson(
          Map<String, dynamic> json) =>
      _$ValidationValidationConditionalQueriesFromJson(json);

  /// User Id, User ID
  @override
  @JsonKey(name: ValidationValidationConditionalQueries.userIdKey)
  final int? userId;

  /// Username, Username
  @override
  @JsonKey(name: ValidationValidationConditionalQueries.usernameKey)
  final String? username;

  /// Create a copy of ValidationValidationConditionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationValidationConditionalQueriesCopyWith<
          _ValidationValidationConditionalQueries>
      get copyWith => __$ValidationValidationConditionalQueriesCopyWithImpl<
          _ValidationValidationConditionalQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationValidationConditionalQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationValidationConditionalQueries &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username);

  @override
  String toString() {
    return 'ValidationValidationConditionalQueries(userId: $userId, username: $username)';
  }
}

/// @nodoc
abstract mixin class _$ValidationValidationConditionalQueriesCopyWith<$Res>
    implements $ValidationValidationConditionalQueriesCopyWith<$Res> {
  factory _$ValidationValidationConditionalQueriesCopyWith(
          _ValidationValidationConditionalQueries value,
          $Res Function(_ValidationValidationConditionalQueries) _then) =
      __$ValidationValidationConditionalQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ValidationValidationConditionalQueries.userIdKey)
      int? userId,
      @JsonKey(name: ValidationValidationConditionalQueries.usernameKey)
      String? username});
}

/// @nodoc
class __$ValidationValidationConditionalQueriesCopyWithImpl<$Res>
    implements _$ValidationValidationConditionalQueriesCopyWith<$Res> {
  __$ValidationValidationConditionalQueriesCopyWithImpl(this._self, this._then);

  final _ValidationValidationConditionalQueries _self;
  final $Res Function(_ValidationValidationConditionalQueries) _then;

  /// Create a copy of ValidationValidationConditionalQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
  }) {
    return _then(_ValidationValidationConditionalQueries(
      userId: freezed == userId
          ? _self.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
