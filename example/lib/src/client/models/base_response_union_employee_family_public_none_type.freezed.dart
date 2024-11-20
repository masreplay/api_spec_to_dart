// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_employee_family_public_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionEmployeeFamilyPublicNoneType
    _$BaseResponseUnionEmployeeFamilyPublicNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionEmployeeFamilyPublicNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionEmployeeFamilyPublicNoneType {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  EmployeeFamilyPublic? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionEmployeeFamilyPublicNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWith<
          BaseResponseUnionEmployeeFamilyPublicNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWith<$Res> {
  factory $BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWith(
          BaseResponseUnionEmployeeFamilyPublicNoneType value,
          $Res Function(BaseResponseUnionEmployeeFamilyPublicNoneType) then) =
      _$BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionEmployeeFamilyPublicNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EmployeeFamilyPublic? data});

  $EmployeeFamilyPublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionEmployeeFamilyPublicNoneType>
    implements $BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EmployeeFamilyPublic?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeFamilyPublicCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $EmployeeFamilyPublicCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWith<
        $Res>
    implements $BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWith(
          _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl value,
          $Res Function(_$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl)
              then) =
      __$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EmployeeFamilyPublic? data});

  @override
  $EmployeeFamilyPublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionEmployeeFamilyPublicNoneTypeCopyWithImpl<$Res,
        _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl>
    implements
        _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWith<$Res> {
  __$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EmployeeFamilyPublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl
    extends _BaseResponseUnionEmployeeFamilyPublicNoneType {
  const _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final EmployeeFamilyPublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionEmployeeFamilyPublicNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionEmployeeFamilyPublicNoneType
    extends BaseResponseUnionEmployeeFamilyPublicNoneType {
  const factory _BaseResponseUnionEmployeeFamilyPublicNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final EmployeeFamilyPublic? data}) =
      _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl;
  const _BaseResponseUnionEmployeeFamilyPublicNoneType._() : super._();

  factory _BaseResponseUnionEmployeeFamilyPublicNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  EmployeeFamilyPublic? get data;

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublicNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplCopyWith<
          _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
