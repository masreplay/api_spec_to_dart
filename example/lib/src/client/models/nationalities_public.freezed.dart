// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nationalities_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NationalitiesPublic _$NationalitiesPublicFromJson(Map<String, dynamic> json) {
  return _NationalitiesPublic.fromJson(json);
}

/// @nodoc
mixin _$NationalitiesPublic {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this NationalitiesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NationalitiesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NationalitiesPublicCopyWith<NationalitiesPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NationalitiesPublicCopyWith<$Res> {
  factory $NationalitiesPublicCopyWith(
          NationalitiesPublic value, $Res Function(NationalitiesPublic) then) =
      _$NationalitiesPublicCopyWithImpl<$Res, NationalitiesPublic>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$NationalitiesPublicCopyWithImpl<$Res, $Val extends NationalitiesPublic>
    implements $NationalitiesPublicCopyWith<$Res> {
  _$NationalitiesPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NationalitiesPublic
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
abstract class _$$NationalitiesPublicImplCopyWith<$Res>
    implements $NationalitiesPublicCopyWith<$Res> {
  factory _$$NationalitiesPublicImplCopyWith(_$NationalitiesPublicImpl value,
          $Res Function(_$NationalitiesPublicImpl) then) =
      __$$NationalitiesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$NationalitiesPublicImplCopyWithImpl<$Res>
    extends _$NationalitiesPublicCopyWithImpl<$Res, _$NationalitiesPublicImpl>
    implements _$$NationalitiesPublicImplCopyWith<$Res> {
  __$$NationalitiesPublicImplCopyWithImpl(_$NationalitiesPublicImpl _value,
      $Res Function(_$NationalitiesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of NationalitiesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$NationalitiesPublicImpl(
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
class _$NationalitiesPublicImpl extends _NationalitiesPublic {
  const _$NationalitiesPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$NationalitiesPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$NationalitiesPublicImplFromJson(json);

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
    return 'NationalitiesPublic(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NationalitiesPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of NationalitiesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NationalitiesPublicImplCopyWith<_$NationalitiesPublicImpl> get copyWith =>
      __$$NationalitiesPublicImplCopyWithImpl<_$NationalitiesPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NationalitiesPublicImplToJson(
      this,
    );
  }
}

abstract class _NationalitiesPublic extends NationalitiesPublic {
  const factory _NationalitiesPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$NationalitiesPublicImpl;
  const _NationalitiesPublic._() : super._();

  factory _NationalitiesPublic.fromJson(Map<String, dynamic> json) =
      _$NationalitiesPublicImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of NationalitiesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NationalitiesPublicImplCopyWith<_$NationalitiesPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
