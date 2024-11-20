// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'religion_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReligionPublic _$ReligionPublicFromJson(Map<String, dynamic> json) {
  return _ReligionPublic.fromJson(json);
}

/// @nodoc
mixin _$ReligionPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ReligionPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReligionPublicCopyWith<ReligionPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReligionPublicCopyWith<$Res> {
  factory $ReligionPublicCopyWith(
          ReligionPublic value, $Res Function(ReligionPublic) then) =
      _$ReligionPublicCopyWithImpl<$Res, ReligionPublic>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$ReligionPublicCopyWithImpl<$Res, $Val extends ReligionPublic>
    implements $ReligionPublicCopyWith<$Res> {
  _$ReligionPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReligionPublicImplCopyWith<$Res>
    implements $ReligionPublicCopyWith<$Res> {
  factory _$$ReligionPublicImplCopyWith(_$ReligionPublicImpl value,
          $Res Function(_$ReligionPublicImpl) then) =
      __$$ReligionPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$ReligionPublicImplCopyWithImpl<$Res>
    extends _$ReligionPublicCopyWithImpl<$Res, _$ReligionPublicImpl>
    implements _$$ReligionPublicImplCopyWith<$Res> {
  __$$ReligionPublicImplCopyWithImpl(
      _$ReligionPublicImpl _value, $Res Function(_$ReligionPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$ReligionPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$ReligionPublicImpl extends _ReligionPublic {
  const _$ReligionPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$ReligionPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReligionPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'ReligionPublic(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReligionPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReligionPublicImplCopyWith<_$ReligionPublicImpl> get copyWith =>
      __$$ReligionPublicImplCopyWithImpl<_$ReligionPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReligionPublicImplToJson(
      this,
    );
  }
}

abstract class _ReligionPublic extends ReligionPublic {
  const factory _ReligionPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$ReligionPublicImpl;
  const _ReligionPublic._() : super._();

  factory _ReligionPublic.fromJson(Map<String, dynamic> json) =
      _$ReligionPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of ReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReligionPublicImplCopyWith<_$ReligionPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
