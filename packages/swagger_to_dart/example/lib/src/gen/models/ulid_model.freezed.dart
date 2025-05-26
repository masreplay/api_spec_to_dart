// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ulid_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UlidModel {
  /// ulid
  @JsonKey(name: UlidModel.ulidKey)
  dynamic get ulid;

  /// Create a copy of UlidModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UlidModelCopyWith<UlidModel> get copyWith =>
      _$UlidModelCopyWithImpl<UlidModel>(this as UlidModel, _$identity);

  /// Serializes this UlidModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UlidModel &&
            const DeepCollectionEquality().equals(other.ulid, ulid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ulid));

  @override
  String toString() {
    return 'UlidModel(ulid: $ulid)';
  }
}

/// @nodoc
abstract mixin class $UlidModelCopyWith<$Res> {
  factory $UlidModelCopyWith(UlidModel value, $Res Function(UlidModel) _then) =
      _$UlidModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: UlidModel.ulidKey) dynamic ulid});
}

/// @nodoc
class _$UlidModelCopyWithImpl<$Res> implements $UlidModelCopyWith<$Res> {
  _$UlidModelCopyWithImpl(this._self, this._then);

  final UlidModel _self;
  final $Res Function(UlidModel) _then;

  /// Create a copy of UlidModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ulid = freezed}) {
    return _then(
      _self.copyWith(
        ulid:
            freezed == ulid
                ? _self.ulid
                : ulid // ignore: cast_nullable_to_non_nullable
                    as dynamic,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _UlidModel extends UlidModel {
  const _UlidModel({@JsonKey(name: UlidModel.ulidKey) required this.ulid})
    : super._();
  factory _UlidModel.fromJson(Map<String, dynamic> json) =>
      _$UlidModelFromJson(json);

  /// ulid
  @override
  @JsonKey(name: UlidModel.ulidKey)
  final dynamic ulid;

  /// Create a copy of UlidModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UlidModelCopyWith<_UlidModel> get copyWith =>
      __$UlidModelCopyWithImpl<_UlidModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UlidModelToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UlidModel &&
            const DeepCollectionEquality().equals(other.ulid, ulid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ulid));

  @override
  String toString() {
    return 'UlidModel(ulid: $ulid)';
  }
}

/// @nodoc
abstract mixin class _$UlidModelCopyWith<$Res>
    implements $UlidModelCopyWith<$Res> {
  factory _$UlidModelCopyWith(
    _UlidModel value,
    $Res Function(_UlidModel) _then,
  ) = __$UlidModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: UlidModel.ulidKey) dynamic ulid});
}

/// @nodoc
class __$UlidModelCopyWithImpl<$Res> implements _$UlidModelCopyWith<$Res> {
  __$UlidModelCopyWithImpl(this._self, this._then);

  final _UlidModel _self;
  final $Res Function(_UlidModel) _then;

  /// Create a copy of UlidModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? ulid = freezed}) {
    return _then(
      _UlidModel(
        ulid:
            freezed == ulid
                ? _self.ulid
                : ulid // ignore: cast_nullable_to_non_nullable
                    as dynamic,
      ),
    );
  }
}
