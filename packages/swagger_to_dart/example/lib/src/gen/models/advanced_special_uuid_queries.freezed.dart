// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_special_uuid_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedSpecialUuidQueries {
  /// id
  @JsonKey(name: AdvancedSpecialUuidQueries.idKey)
  String get id;

  /// Create a copy of AdvancedSpecialUuidQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedSpecialUuidQueriesCopyWith<AdvancedSpecialUuidQueries>
      get copyWith =>
          _$AdvancedSpecialUuidQueriesCopyWithImpl<AdvancedSpecialUuidQueries>(
              this as AdvancedSpecialUuidQueries, _$identity);

  /// Serializes this AdvancedSpecialUuidQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedSpecialUuidQueries &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'AdvancedSpecialUuidQueries(id: $id)';
  }
}

/// @nodoc
abstract mixin class $AdvancedSpecialUuidQueriesCopyWith<$Res> {
  factory $AdvancedSpecialUuidQueriesCopyWith(AdvancedSpecialUuidQueries value,
          $Res Function(AdvancedSpecialUuidQueries) _then) =
      _$AdvancedSpecialUuidQueriesCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: AdvancedSpecialUuidQueries.idKey) String id});
}

/// @nodoc
class _$AdvancedSpecialUuidQueriesCopyWithImpl<$Res>
    implements $AdvancedSpecialUuidQueriesCopyWith<$Res> {
  _$AdvancedSpecialUuidQueriesCopyWithImpl(this._self, this._then);

  final AdvancedSpecialUuidQueries _self;
  final $Res Function(AdvancedSpecialUuidQueries) _then;

  /// Create a copy of AdvancedSpecialUuidQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedSpecialUuidQueries extends AdvancedSpecialUuidQueries {
  const _AdvancedSpecialUuidQueries(
      {@JsonKey(name: AdvancedSpecialUuidQueries.idKey) required this.id})
      : super._();
  factory _AdvancedSpecialUuidQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSpecialUuidQueriesFromJson(json);

  /// id
  @override
  @JsonKey(name: AdvancedSpecialUuidQueries.idKey)
  final String id;

  /// Create a copy of AdvancedSpecialUuidQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedSpecialUuidQueriesCopyWith<_AdvancedSpecialUuidQueries>
      get copyWith => __$AdvancedSpecialUuidQueriesCopyWithImpl<
          _AdvancedSpecialUuidQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedSpecialUuidQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedSpecialUuidQueries &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'AdvancedSpecialUuidQueries(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedSpecialUuidQueriesCopyWith<$Res>
    implements $AdvancedSpecialUuidQueriesCopyWith<$Res> {
  factory _$AdvancedSpecialUuidQueriesCopyWith(
          _AdvancedSpecialUuidQueries value,
          $Res Function(_AdvancedSpecialUuidQueries) _then) =
      __$AdvancedSpecialUuidQueriesCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: AdvancedSpecialUuidQueries.idKey) String id});
}

/// @nodoc
class __$AdvancedSpecialUuidQueriesCopyWithImpl<$Res>
    implements _$AdvancedSpecialUuidQueriesCopyWith<$Res> {
  __$AdvancedSpecialUuidQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedSpecialUuidQueries _self;
  final $Res Function(_AdvancedSpecialUuidQueries) _then;

  /// Create a copy of AdvancedSpecialUuidQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_AdvancedSpecialUuidQueries(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
