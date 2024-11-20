// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryPublic _$CountryPublicFromJson(Map<String, dynamic> json) {
  return _CountryPublic.fromJson(json);
}

/// @nodoc
mixin _$CountryPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this CountryPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryPublicCopyWith<CountryPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryPublicCopyWith<$Res> {
  factory $CountryPublicCopyWith(
          CountryPublic value, $Res Function(CountryPublic) then) =
      _$CountryPublicCopyWithImpl<$Res, CountryPublic>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$CountryPublicCopyWithImpl<$Res, $Val extends CountryPublic>
    implements $CountryPublicCopyWith<$Res> {
  _$CountryPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryPublic
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
abstract class _$$CountryPublicImplCopyWith<$Res>
    implements $CountryPublicCopyWith<$Res> {
  factory _$$CountryPublicImplCopyWith(
          _$CountryPublicImpl value, $Res Function(_$CountryPublicImpl) then) =
      __$$CountryPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$CountryPublicImplCopyWithImpl<$Res>
    extends _$CountryPublicCopyWithImpl<$Res, _$CountryPublicImpl>
    implements _$$CountryPublicImplCopyWith<$Res> {
  __$$CountryPublicImplCopyWithImpl(
      _$CountryPublicImpl _value, $Res Function(_$CountryPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CountryPublicImpl(
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
class _$CountryPublicImpl extends _CountryPublic {
  const _$CountryPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$CountryPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'CountryPublic(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of CountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryPublicImplCopyWith<_$CountryPublicImpl> get copyWith =>
      __$$CountryPublicImplCopyWithImpl<_$CountryPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryPublicImplToJson(
      this,
    );
  }
}

abstract class _CountryPublic extends CountryPublic {
  const factory _CountryPublic(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name}) = _$CountryPublicImpl;
  const _CountryPublic._() : super._();

  factory _CountryPublic.fromJson(Map<String, dynamic> json) =
      _$CountryPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of CountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryPublicImplCopyWith<_$CountryPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
