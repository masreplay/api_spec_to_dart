// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'majors_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MajorsPublic _$MajorsPublicFromJson(Map<String, dynamic> json) {
  return _MajorsPublic.fromJson(json);
}

/// @nodoc
mixin _$MajorsPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'education_type_id')
  int get educationTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this MajorsPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MajorsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MajorsPublicCopyWith<MajorsPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorsPublicCopyWith<$Res> {
  factory $MajorsPublicCopyWith(
          MajorsPublic value, $Res Function(MajorsPublic) then) =
      _$MajorsPublicCopyWithImpl<$Res, MajorsPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'education_type_id') int educationTypeId,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$MajorsPublicCopyWithImpl<$Res, $Val extends MajorsPublic>
    implements $MajorsPublicCopyWith<$Res> {
  _$MajorsPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MajorsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? educationTypeId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      educationTypeId: null == educationTypeId
          ? _value.educationTypeId
          : educationTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MajorsPublicImplCopyWith<$Res>
    implements $MajorsPublicCopyWith<$Res> {
  factory _$$MajorsPublicImplCopyWith(
          _$MajorsPublicImpl value, $Res Function(_$MajorsPublicImpl) then) =
      __$$MajorsPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'education_type_id') int educationTypeId,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$MajorsPublicImplCopyWithImpl<$Res>
    extends _$MajorsPublicCopyWithImpl<$Res, _$MajorsPublicImpl>
    implements _$$MajorsPublicImplCopyWith<$Res> {
  __$$MajorsPublicImplCopyWithImpl(
      _$MajorsPublicImpl _value, $Res Function(_$MajorsPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of MajorsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? educationTypeId = null,
    Object? name = null,
  }) {
    return _then(_$MajorsPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      educationTypeId: null == educationTypeId
          ? _value.educationTypeId
          : educationTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MajorsPublicImpl implements _MajorsPublic {
  const _$MajorsPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'education_type_id') required this.educationTypeId,
      @JsonKey(name: 'name') required this.name});

  factory _$MajorsPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$MajorsPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'education_type_id')
  final int educationTypeId;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'MajorsPublic(id: $id, educationTypeId: $educationTypeId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MajorsPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.educationTypeId, educationTypeId) ||
                other.educationTypeId == educationTypeId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, educationTypeId, name);

  /// Create a copy of MajorsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MajorsPublicImplCopyWith<_$MajorsPublicImpl> get copyWith =>
      __$$MajorsPublicImplCopyWithImpl<_$MajorsPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MajorsPublicImplToJson(
      this,
    );
  }
}

abstract class _MajorsPublic implements MajorsPublic {
  const factory _MajorsPublic(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'education_type_id') required final int educationTypeId,
      @JsonKey(name: 'name') required final String name}) = _$MajorsPublicImpl;

  factory _MajorsPublic.fromJson(Map<String, dynamic> json) =
      _$MajorsPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'education_type_id')
  int get educationTypeId;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of MajorsPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MajorsPublicImplCopyWith<_$MajorsPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
