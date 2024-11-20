// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_method_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationMethodPublic _$VerificationMethodPublicFromJson(
    Map<String, dynamic> json) {
  return _VerificationMethodPublic.fromJson(json);
}

/// @nodoc
mixin _$VerificationMethodPublic {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this VerificationMethodPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationMethodPublicCopyWith<VerificationMethodPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationMethodPublicCopyWith<$Res> {
  factory $VerificationMethodPublicCopyWith(VerificationMethodPublic value,
          $Res Function(VerificationMethodPublic) then) =
      _$VerificationMethodPublicCopyWithImpl<$Res, VerificationMethodPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name, @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$VerificationMethodPublicCopyWithImpl<$Res,
        $Val extends VerificationMethodPublic>
    implements $VerificationMethodPublicCopyWith<$Res> {
  _$VerificationMethodPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationMethodPublicImplCopyWith<$Res>
    implements $VerificationMethodPublicCopyWith<$Res> {
  factory _$$VerificationMethodPublicImplCopyWith(
          _$VerificationMethodPublicImpl value,
          $Res Function(_$VerificationMethodPublicImpl) then) =
      __$$VerificationMethodPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name, @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$VerificationMethodPublicImplCopyWithImpl<$Res>
    extends _$VerificationMethodPublicCopyWithImpl<$Res,
        _$VerificationMethodPublicImpl>
    implements _$$VerificationMethodPublicImplCopyWith<$Res> {
  __$$VerificationMethodPublicImplCopyWithImpl(
      _$VerificationMethodPublicImpl _value,
      $Res Function(_$VerificationMethodPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
  }) {
    return _then(_$VerificationMethodPublicImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationMethodPublicImpl implements _VerificationMethodPublic {
  const _$VerificationMethodPublicImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'type') required this.type});

  factory _$VerificationMethodPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationMethodPublicImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'VerificationMethodPublic(name: $name, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationMethodPublicImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  /// Create a copy of VerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationMethodPublicImplCopyWith<_$VerificationMethodPublicImpl>
      get copyWith => __$$VerificationMethodPublicImplCopyWithImpl<
          _$VerificationMethodPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationMethodPublicImplToJson(
      this,
    );
  }
}

abstract class _VerificationMethodPublic implements VerificationMethodPublic {
  const factory _VerificationMethodPublic(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'type') required final String type}) =
      _$VerificationMethodPublicImpl;

  factory _VerificationMethodPublic.fromJson(Map<String, dynamic> json) =
      _$VerificationMethodPublicImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of VerificationMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationMethodPublicImplCopyWith<_$VerificationMethodPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
