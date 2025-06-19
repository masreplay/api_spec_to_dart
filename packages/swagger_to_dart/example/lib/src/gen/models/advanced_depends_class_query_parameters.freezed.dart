// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_depends_class_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedDependsClassQueryParameters {
  /// dbName
  @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey)
  String get dbName;

  /// Create a copy of AdvancedDependsClassQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedDependsClassQueryParametersCopyWith<
          AdvancedDependsClassQueryParameters>
      get copyWith => _$AdvancedDependsClassQueryParametersCopyWithImpl<
              AdvancedDependsClassQueryParameters>(
          this as AdvancedDependsClassQueryParameters, _$identity);

  /// Serializes this AdvancedDependsClassQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedDependsClassQueryParameters &&
            (identical(other.dbName, dbName) || other.dbName == dbName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dbName);

  @override
  String toString() {
    return 'AdvancedDependsClassQueryParameters(dbName: $dbName)';
  }
}

/// @nodoc
abstract mixin class $AdvancedDependsClassQueryParametersCopyWith<$Res> {
  factory $AdvancedDependsClassQueryParametersCopyWith(
          AdvancedDependsClassQueryParameters value,
          $Res Function(AdvancedDependsClassQueryParameters) _then) =
      _$AdvancedDependsClassQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey)
      String dbName});
}

/// @nodoc
class _$AdvancedDependsClassQueryParametersCopyWithImpl<$Res>
    implements $AdvancedDependsClassQueryParametersCopyWith<$Res> {
  _$AdvancedDependsClassQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedDependsClassQueryParameters _self;
  final $Res Function(AdvancedDependsClassQueryParameters) _then;

  /// Create a copy of AdvancedDependsClassQueryParameters
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

@jsonSerializable
class _AdvancedDependsClassQueryParameters
    extends AdvancedDependsClassQueryParameters {
  const _AdvancedDependsClassQueryParameters(
      {@JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey)
      this.dbName = 'default'})
      : super._();
  factory _AdvancedDependsClassQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedDependsClassQueryParametersFromJson(json);

  /// dbName
  @override
  @JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey)
  final String dbName;

  /// Create a copy of AdvancedDependsClassQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedDependsClassQueryParametersCopyWith<
          _AdvancedDependsClassQueryParameters>
      get copyWith => __$AdvancedDependsClassQueryParametersCopyWithImpl<
          _AdvancedDependsClassQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedDependsClassQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedDependsClassQueryParameters &&
            (identical(other.dbName, dbName) || other.dbName == dbName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dbName);

  @override
  String toString() {
    return 'AdvancedDependsClassQueryParameters(dbName: $dbName)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedDependsClassQueryParametersCopyWith<$Res>
    implements $AdvancedDependsClassQueryParametersCopyWith<$Res> {
  factory _$AdvancedDependsClassQueryParametersCopyWith(
          _AdvancedDependsClassQueryParameters value,
          $Res Function(_AdvancedDependsClassQueryParameters) _then) =
      __$AdvancedDependsClassQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedDependsClassQueryParameters.dbNameKey)
      String dbName});
}

/// @nodoc
class __$AdvancedDependsClassQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedDependsClassQueryParametersCopyWith<$Res> {
  __$AdvancedDependsClassQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedDependsClassQueryParameters _self;
  final $Res Function(_AdvancedDependsClassQueryParameters) _then;

  /// Create a copy of AdvancedDependsClassQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dbName = null,
  }) {
    return _then(_AdvancedDependsClassQueryParameters(
      dbName: null == dbName
          ? _self.dbName
          : dbName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
