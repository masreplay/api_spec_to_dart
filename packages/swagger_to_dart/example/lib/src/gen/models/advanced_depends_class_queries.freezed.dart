// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_depends_class_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedDependsClassQueries {
  /// db_name
  @JsonKey(name: AdvancedDependsClassQueries.dbNameKey)
  String get dbName;

  /// Create a copy of AdvancedDependsClassQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedDependsClassQueriesCopyWith<AdvancedDependsClassQueries>
      get copyWith => _$AdvancedDependsClassQueriesCopyWithImpl<
              AdvancedDependsClassQueries>(
          this as AdvancedDependsClassQueries, _$identity);

  /// Serializes this AdvancedDependsClassQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedDependsClassQueries &&
            (identical(other.dbName, dbName) || other.dbName == dbName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dbName);

  @override
  String toString() {
    return 'AdvancedDependsClassQueries(dbName: $dbName)';
  }
}

/// @nodoc
abstract mixin class $AdvancedDependsClassQueriesCopyWith<$Res> {
  factory $AdvancedDependsClassQueriesCopyWith(
          AdvancedDependsClassQueries value,
          $Res Function(AdvancedDependsClassQueries) _then) =
      _$AdvancedDependsClassQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsClassQueries.dbNameKey) String dbName});
}

/// @nodoc
class _$AdvancedDependsClassQueriesCopyWithImpl<$Res>
    implements $AdvancedDependsClassQueriesCopyWith<$Res> {
  _$AdvancedDependsClassQueriesCopyWithImpl(this._self, this._then);

  final AdvancedDependsClassQueries _self;
  final $Res Function(AdvancedDependsClassQueries) _then;

  /// Create a copy of AdvancedDependsClassQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dbName = null,
  }) {
    return _then(_self.copyWith(
      dbName: null == dbName
          ? _self.dbName
          : dbName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _AdvancedDependsClassQueries extends AdvancedDependsClassQueries {
  const _AdvancedDependsClassQueries(
      {@JsonKey(name: AdvancedDependsClassQueries.dbNameKey)
      this.dbName = 'default'})
      : super._();
  factory _AdvancedDependsClassQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedDependsClassQueriesFromJson(json);

  /// db_name
  @override
  @JsonKey(name: AdvancedDependsClassQueries.dbNameKey)
  final String dbName;

  /// Create a copy of AdvancedDependsClassQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedDependsClassQueriesCopyWith<_AdvancedDependsClassQueries>
      get copyWith => __$AdvancedDependsClassQueriesCopyWithImpl<
          _AdvancedDependsClassQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedDependsClassQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedDependsClassQueries &&
            (identical(other.dbName, dbName) || other.dbName == dbName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dbName);

  @override
  String toString() {
    return 'AdvancedDependsClassQueries(dbName: $dbName)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedDependsClassQueriesCopyWith<$Res>
    implements $AdvancedDependsClassQueriesCopyWith<$Res> {
  factory _$AdvancedDependsClassQueriesCopyWith(
          _AdvancedDependsClassQueries value,
          $Res Function(_AdvancedDependsClassQueries) _then) =
      __$AdvancedDependsClassQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsClassQueries.dbNameKey) String dbName});
}

/// @nodoc
class __$AdvancedDependsClassQueriesCopyWithImpl<$Res>
    implements _$AdvancedDependsClassQueriesCopyWith<$Res> {
  __$AdvancedDependsClassQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedDependsClassQueries _self;
  final $Res Function(_AdvancedDependsClassQueries) _then;

  /// Create a copy of AdvancedDependsClassQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dbName = null,
  }) {
    return _then(_AdvancedDependsClassQueries(
      dbName: null == dbName
          ? _self.dbName
          : dbName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
