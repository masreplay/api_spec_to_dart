// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fees_types_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeesTypesPublic _$FeesTypesPublicFromJson(Map<String, dynamic> json) {
  return _FeesTypesPublic.fromJson(json);
}

/// @nodoc
mixin _$FeesTypesPublic {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this FeesTypesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeesTypesPublicCopyWith<FeesTypesPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeesTypesPublicCopyWith<$Res> {
  factory $FeesTypesPublicCopyWith(
          FeesTypesPublic value, $Res Function(FeesTypesPublic) then) =
      _$FeesTypesPublicCopyWithImpl<$Res, FeesTypesPublic>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$FeesTypesPublicCopyWithImpl<$Res, $Val extends FeesTypesPublic>
    implements $FeesTypesPublicCopyWith<$Res> {
  _$FeesTypesPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeesTypesPublic
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
abstract class _$$FeesTypesPublicImplCopyWith<$Res>
    implements $FeesTypesPublicCopyWith<$Res> {
  factory _$$FeesTypesPublicImplCopyWith(_$FeesTypesPublicImpl value,
          $Res Function(_$FeesTypesPublicImpl) then) =
      __$$FeesTypesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$FeesTypesPublicImplCopyWithImpl<$Res>
    extends _$FeesTypesPublicCopyWithImpl<$Res, _$FeesTypesPublicImpl>
    implements _$$FeesTypesPublicImplCopyWith<$Res> {
  __$$FeesTypesPublicImplCopyWithImpl(
      _$FeesTypesPublicImpl _value, $Res Function(_$FeesTypesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FeesTypesPublicImpl(
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
class _$FeesTypesPublicImpl extends _FeesTypesPublic {
  const _$FeesTypesPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$FeesTypesPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeesTypesPublicImplFromJson(json);

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
    return 'FeesTypesPublic(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeesTypesPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of FeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeesTypesPublicImplCopyWith<_$FeesTypesPublicImpl> get copyWith =>
      __$$FeesTypesPublicImplCopyWithImpl<_$FeesTypesPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeesTypesPublicImplToJson(
      this,
    );
  }
}

abstract class _FeesTypesPublic extends FeesTypesPublic {
  const factory _FeesTypesPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$FeesTypesPublicImpl;
  const _FeesTypesPublic._() : super._();

  factory _FeesTypesPublic.fromJson(Map<String, dynamic> json) =
      _$FeesTypesPublicImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of FeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeesTypesPublicImplCopyWith<_$FeesTypesPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
