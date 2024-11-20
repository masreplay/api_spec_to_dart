// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'information_bureaus_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InformationBureausPublic _$InformationBureausPublicFromJson(
    Map<String, dynamic> json) {
  return _InformationBureausPublic.fromJson(json);
}

/// @nodoc
mixin _$InformationBureausPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'governorate_id')
  int get governorateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this InformationBureausPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InformationBureausPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InformationBureausPublicCopyWith<InformationBureausPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InformationBureausPublicCopyWith<$Res> {
  factory $InformationBureausPublicCopyWith(InformationBureausPublic value,
          $Res Function(InformationBureausPublic) then) =
      _$InformationBureausPublicCopyWithImpl<$Res, InformationBureausPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'governorate_id') int governorateId,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$InformationBureausPublicCopyWithImpl<$Res,
        $Val extends InformationBureausPublic>
    implements $InformationBureausPublicCopyWith<$Res> {
  _$InformationBureausPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InformationBureausPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? governorateId = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InformationBureausPublicImplCopyWith<$Res>
    implements $InformationBureausPublicCopyWith<$Res> {
  factory _$$InformationBureausPublicImplCopyWith(
          _$InformationBureausPublicImpl value,
          $Res Function(_$InformationBureausPublicImpl) then) =
      __$$InformationBureausPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'governorate_id') int governorateId,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$InformationBureausPublicImplCopyWithImpl<$Res>
    extends _$InformationBureausPublicCopyWithImpl<$Res,
        _$InformationBureausPublicImpl>
    implements _$$InformationBureausPublicImplCopyWith<$Res> {
  __$$InformationBureausPublicImplCopyWithImpl(
      _$InformationBureausPublicImpl _value,
      $Res Function(_$InformationBureausPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of InformationBureausPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? governorateId = null,
    Object? name = null,
  }) {
    return _then(_$InformationBureausPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      governorateId: null == governorateId
          ? _value.governorateId
          : governorateId // ignore: cast_nullable_to_non_nullable
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
class _$InformationBureausPublicImpl extends _InformationBureausPublic {
  const _$InformationBureausPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'governorate_id') required this.governorateId,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$InformationBureausPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$InformationBureausPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'governorate_id')
  final int governorateId;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'InformationBureausPublic(id: $id, governorateId: $governorateId, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InformationBureausPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.governorateId, governorateId) ||
                other.governorateId == governorateId) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, governorateId, name);

  /// Create a copy of InformationBureausPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InformationBureausPublicImplCopyWith<_$InformationBureausPublicImpl>
      get copyWith => __$$InformationBureausPublicImplCopyWithImpl<
          _$InformationBureausPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InformationBureausPublicImplToJson(
      this,
    );
  }
}

abstract class _InformationBureausPublic extends InformationBureausPublic {
  const factory _InformationBureausPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'governorate_id') required final int governorateId,
          @JsonKey(name: 'name') required final String name}) =
      _$InformationBureausPublicImpl;
  const _InformationBureausPublic._() : super._();

  factory _InformationBureausPublic.fromJson(Map<String, dynamic> json) =
      _$InformationBureausPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'governorate_id')
  int get governorateId;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of InformationBureausPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InformationBureausPublicImplCopyWith<_$InformationBureausPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
