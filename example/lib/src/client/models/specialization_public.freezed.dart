// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecializationPublic _$SpecializationPublicFromJson(Map<String, dynamic> json) {
  return _SpecializationPublic.fromJson(json);
}

/// @nodoc
mixin _$SpecializationPublic {
  @JsonKey(name: 'major_id')
  int get majorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this SpecializationPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecializationPublicCopyWith<SpecializationPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationPublicCopyWith<$Res> {
  factory $SpecializationPublicCopyWith(SpecializationPublic value,
          $Res Function(SpecializationPublic) then) =
      _$SpecializationPublicCopyWithImpl<$Res, SpecializationPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'major_id') int majorId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$SpecializationPublicCopyWithImpl<$Res,
        $Val extends SpecializationPublic>
    implements $SpecializationPublicCopyWith<$Res> {
  _$SpecializationPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? majorId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      majorId: null == majorId
          ? _value.majorId
          : majorId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SpecializationPublicImplCopyWith<$Res>
    implements $SpecializationPublicCopyWith<$Res> {
  factory _$$SpecializationPublicImplCopyWith(_$SpecializationPublicImpl value,
          $Res Function(_$SpecializationPublicImpl) then) =
      __$$SpecializationPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'major_id') int majorId,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$SpecializationPublicImplCopyWithImpl<$Res>
    extends _$SpecializationPublicCopyWithImpl<$Res, _$SpecializationPublicImpl>
    implements _$$SpecializationPublicImplCopyWith<$Res> {
  __$$SpecializationPublicImplCopyWithImpl(_$SpecializationPublicImpl _value,
      $Res Function(_$SpecializationPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of SpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? majorId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$SpecializationPublicImpl(
      majorId: null == majorId
          ? _value.majorId
          : majorId // ignore: cast_nullable_to_non_nullable
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
class _$SpecializationPublicImpl extends _SpecializationPublic {
  const _$SpecializationPublicImpl(
      {@JsonKey(name: 'major_id') required this.majorId,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$SpecializationPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationPublicImplFromJson(json);

  @override
  @JsonKey(name: 'major_id')
  final int majorId;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'SpecializationPublic(majorId: $majorId, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationPublicImpl &&
            (identical(other.majorId, majorId) || other.majorId == majorId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, majorId, id, name);

  /// Create a copy of SpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationPublicImplCopyWith<_$SpecializationPublicImpl>
      get copyWith =>
          __$$SpecializationPublicImplCopyWithImpl<_$SpecializationPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationPublicImplToJson(
      this,
    );
  }
}

abstract class _SpecializationPublic extends SpecializationPublic {
  const factory _SpecializationPublic(
          {@JsonKey(name: 'major_id') required final int majorId,
          @JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$SpecializationPublicImpl;
  const _SpecializationPublic._() : super._();

  factory _SpecializationPublic.fromJson(Map<String, dynamic> json) =
      _$SpecializationPublicImpl.fromJson;

  @override
  @JsonKey(name: 'major_id')
  int get majorId;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of SpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationPublicImplCopyWith<_$SpecializationPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
