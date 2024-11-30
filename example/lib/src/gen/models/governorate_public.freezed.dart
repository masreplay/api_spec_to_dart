// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'governorate_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GovernoratePublic _$GovernoratePublicFromJson(Map<String, dynamic> json) {
  return _GovernoratePublic.fromJson(json);
}

/// @nodoc
mixin _$GovernoratePublic {
  /// Country Id
  @JsonKey(name: 'country_id')
  int get countryId => throw _privateConstructorUsedError;

  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this GovernoratePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GovernoratePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GovernoratePublicCopyWith<GovernoratePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GovernoratePublicCopyWith<$Res> {
  factory $GovernoratePublicCopyWith(
          GovernoratePublic value, $Res Function(GovernoratePublic) then) =
      _$GovernoratePublicCopyWithImpl<$Res, GovernoratePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$GovernoratePublicCopyWithImpl<$Res, $Val extends GovernoratePublic>
    implements $GovernoratePublicCopyWith<$Res> {
  _$GovernoratePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GovernoratePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$GovernoratePublicImplCopyWith<$Res>
    implements $GovernoratePublicCopyWith<$Res> {
  factory _$$GovernoratePublicImplCopyWith(_$GovernoratePublicImpl value,
          $Res Function(_$GovernoratePublicImpl) then) =
      __$$GovernoratePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'country_id') int countryId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$GovernoratePublicImplCopyWithImpl<$Res>
    extends _$GovernoratePublicCopyWithImpl<$Res, _$GovernoratePublicImpl>
    implements _$$GovernoratePublicImplCopyWith<$Res> {
  __$$GovernoratePublicImplCopyWithImpl(_$GovernoratePublicImpl _value,
      $Res Function(_$GovernoratePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of GovernoratePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$GovernoratePublicImpl(
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$GovernoratePublicImpl extends _GovernoratePublic {
  const _$GovernoratePublicImpl(
      {@JsonKey(name: 'country_id') required this.countryId,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$GovernoratePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$GovernoratePublicImplFromJson(json);

  /// Country Id
  @override
  @JsonKey(name: 'country_id')
  final int countryId;

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Name
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'GovernoratePublic(countryId: $countryId, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernoratePublicImpl &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, countryId, id, name);

  /// Create a copy of GovernoratePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GovernoratePublicImplCopyWith<_$GovernoratePublicImpl> get copyWith =>
      __$$GovernoratePublicImplCopyWithImpl<_$GovernoratePublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GovernoratePublicImplToJson(
      this,
    );
  }
}

abstract class _GovernoratePublic extends GovernoratePublic {
  const factory _GovernoratePublic(
          {@JsonKey(name: 'country_id') required final int countryId,
          @JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$GovernoratePublicImpl;
  const _GovernoratePublic._() : super._();

  factory _GovernoratePublic.fromJson(Map<String, dynamic> json) =
      _$GovernoratePublicImpl.fromJson;

  /// Country Id
  @override
  @JsonKey(name: 'country_id')
  int get countryId;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of GovernoratePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GovernoratePublicImplCopyWith<_$GovernoratePublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
