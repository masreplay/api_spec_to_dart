// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_employee_family_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionEmployeeFamilyPublic
    _$BaseResponseUnionEmployeeFamilyPublicFromJson(Map<String, dynamic> json) {
  return _BaseResponseUnionEmployeeFamilyPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionEmployeeFamilyPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  EmployeeFamilyPublic? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionEmployeeFamilyPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionEmployeeFamilyPublicCopyWith<
          BaseResponseUnionEmployeeFamilyPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionEmployeeFamilyPublicCopyWith<$Res> {
  factory $BaseResponseUnionEmployeeFamilyPublicCopyWith(
          BaseResponseUnionEmployeeFamilyPublic value,
          $Res Function(BaseResponseUnionEmployeeFamilyPublic) then) =
      _$BaseResponseUnionEmployeeFamilyPublicCopyWithImpl<$Res,
          BaseResponseUnionEmployeeFamilyPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EmployeeFamilyPublic? data});

  $EmployeeFamilyPublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionEmployeeFamilyPublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionEmployeeFamilyPublic>
    implements $BaseResponseUnionEmployeeFamilyPublicCopyWith<$Res> {
  _$BaseResponseUnionEmployeeFamilyPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublic
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

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublic
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
abstract class _$$BaseResponseUnionEmployeeFamilyPublicImplCopyWith<$Res>
    implements $BaseResponseUnionEmployeeFamilyPublicCopyWith<$Res> {
  factory _$$BaseResponseUnionEmployeeFamilyPublicImplCopyWith(
          _$BaseResponseUnionEmployeeFamilyPublicImpl value,
          $Res Function(_$BaseResponseUnionEmployeeFamilyPublicImpl) then) =
      __$$BaseResponseUnionEmployeeFamilyPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EmployeeFamilyPublic? data});

  @override
  $EmployeeFamilyPublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionEmployeeFamilyPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionEmployeeFamilyPublicCopyWithImpl<$Res,
        _$BaseResponseUnionEmployeeFamilyPublicImpl>
    implements _$$BaseResponseUnionEmployeeFamilyPublicImplCopyWith<$Res> {
  __$$BaseResponseUnionEmployeeFamilyPublicImplCopyWithImpl(
      _$BaseResponseUnionEmployeeFamilyPublicImpl _value,
      $Res Function(_$BaseResponseUnionEmployeeFamilyPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionEmployeeFamilyPublicImpl(
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
class _$BaseResponseUnionEmployeeFamilyPublicImpl
    extends _BaseResponseUnionEmployeeFamilyPublic {
  const _$BaseResponseUnionEmployeeFamilyPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionEmployeeFamilyPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionEmployeeFamilyPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final EmployeeFamilyPublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionEmployeeFamilyPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionEmployeeFamilyPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionEmployeeFamilyPublicImplCopyWith<
          _$BaseResponseUnionEmployeeFamilyPublicImpl>
      get copyWith => __$$BaseResponseUnionEmployeeFamilyPublicImplCopyWithImpl<
          _$BaseResponseUnionEmployeeFamilyPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionEmployeeFamilyPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionEmployeeFamilyPublic
    extends BaseResponseUnionEmployeeFamilyPublic {
  const factory _BaseResponseUnionEmployeeFamilyPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final EmployeeFamilyPublic? data}) =
      _$BaseResponseUnionEmployeeFamilyPublicImpl;
  const _BaseResponseUnionEmployeeFamilyPublic._() : super._();

  factory _BaseResponseUnionEmployeeFamilyPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionEmployeeFamilyPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  EmployeeFamilyPublic? get data;

  /// Create a copy of BaseResponseUnionEmployeeFamilyPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionEmployeeFamilyPublicImplCopyWith<
          _$BaseResponseUnionEmployeeFamilyPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
