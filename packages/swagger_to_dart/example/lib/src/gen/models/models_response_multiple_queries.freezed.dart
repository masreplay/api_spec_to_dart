// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_response_multiple_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelsResponseMultipleQueries {
  /// is_user, Whether to return a user or location
  @JsonKey(name: ModelsResponseMultipleQueries.isUserKey)
  bool get isUser;

  /// Create a copy of ModelsResponseMultipleQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelsResponseMultipleQueriesCopyWith<ModelsResponseMultipleQueries>
      get copyWith => _$ModelsResponseMultipleQueriesCopyWithImpl<
              ModelsResponseMultipleQueries>(
          this as ModelsResponseMultipleQueries, _$identity);

  /// Serializes this ModelsResponseMultipleQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelsResponseMultipleQueries &&
            (identical(other.isUser, isUser) || other.isUser == isUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUser);

  @override
  String toString() {
    return 'ModelsResponseMultipleQueries(isUser: $isUser)';
  }
}

/// @nodoc
abstract mixin class $ModelsResponseMultipleQueriesCopyWith<$Res> {
  factory $ModelsResponseMultipleQueriesCopyWith(
          ModelsResponseMultipleQueries value,
          $Res Function(ModelsResponseMultipleQueries) _then) =
      _$ModelsResponseMultipleQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ModelsResponseMultipleQueries.isUserKey) bool isUser});
}

/// @nodoc
class _$ModelsResponseMultipleQueriesCopyWithImpl<$Res>
    implements $ModelsResponseMultipleQueriesCopyWith<$Res> {
  _$ModelsResponseMultipleQueriesCopyWithImpl(this._self, this._then);

  final ModelsResponseMultipleQueries _self;
  final $Res Function(ModelsResponseMultipleQueries) _then;

  /// Create a copy of ModelsResponseMultipleQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUser = null,
  }) {
    return _then(_self.copyWith(
      isUser: null == isUser
          ? _self.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _ModelsResponseMultipleQueries extends ModelsResponseMultipleQueries {
  const _ModelsResponseMultipleQueries(
      {@JsonKey(name: ModelsResponseMultipleQueries.isUserKey)
      this.isUser = true})
      : super._();
  factory _ModelsResponseMultipleQueries.fromJson(Map<String, dynamic> json) =>
      _$ModelsResponseMultipleQueriesFromJson(json);

  /// is_user, Whether to return a user or location
  @override
  @JsonKey(name: ModelsResponseMultipleQueries.isUserKey)
  final bool isUser;

  /// Create a copy of ModelsResponseMultipleQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelsResponseMultipleQueriesCopyWith<_ModelsResponseMultipleQueries>
      get copyWith => __$ModelsResponseMultipleQueriesCopyWithImpl<
          _ModelsResponseMultipleQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelsResponseMultipleQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelsResponseMultipleQueries &&
            (identical(other.isUser, isUser) || other.isUser == isUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUser);

  @override
  String toString() {
    return 'ModelsResponseMultipleQueries(isUser: $isUser)';
  }
}

/// @nodoc
abstract mixin class _$ModelsResponseMultipleQueriesCopyWith<$Res>
    implements $ModelsResponseMultipleQueriesCopyWith<$Res> {
  factory _$ModelsResponseMultipleQueriesCopyWith(
          _ModelsResponseMultipleQueries value,
          $Res Function(_ModelsResponseMultipleQueries) _then) =
      __$ModelsResponseMultipleQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ModelsResponseMultipleQueries.isUserKey) bool isUser});
}

/// @nodoc
class __$ModelsResponseMultipleQueriesCopyWithImpl<$Res>
    implements _$ModelsResponseMultipleQueriesCopyWith<$Res> {
  __$ModelsResponseMultipleQueriesCopyWithImpl(this._self, this._then);

  final _ModelsResponseMultipleQueries _self;
  final $Res Function(_ModelsResponseMultipleQueries) _then;

  /// Create a copy of ModelsResponseMultipleQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isUser = null,
  }) {
    return _then(_ModelsResponseMultipleQueries(
      isUser: null == isUser
          ? _self.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
