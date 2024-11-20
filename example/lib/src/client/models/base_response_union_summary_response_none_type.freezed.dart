// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_summary_response_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionSummaryResponseNoneType
    _$BaseResponseUnionSummaryResponseNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionSummaryResponseNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionSummaryResponseNoneType {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  SummaryResponse? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionSummaryResponseNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionSummaryResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionSummaryResponseNoneTypeCopyWith<
          BaseResponseUnionSummaryResponseNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionSummaryResponseNoneTypeCopyWith<$Res> {
  factory $BaseResponseUnionSummaryResponseNoneTypeCopyWith(
          BaseResponseUnionSummaryResponseNoneType value,
          $Res Function(BaseResponseUnionSummaryResponseNoneType) then) =
      _$BaseResponseUnionSummaryResponseNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionSummaryResponseNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SummaryResponse? data});

  $SummaryResponseCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionSummaryResponseNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionSummaryResponseNoneType>
    implements $BaseResponseUnionSummaryResponseNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionSummaryResponseNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionSummaryResponseNoneType
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
              as SummaryResponse?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionSummaryResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SummaryResponseCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SummaryResponseCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWith<$Res>
    implements $BaseResponseUnionSummaryResponseNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWith(
          _$BaseResponseUnionSummaryResponseNoneTypeImpl value,
          $Res Function(_$BaseResponseUnionSummaryResponseNoneTypeImpl) then) =
      __$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') SummaryResponse? data});

  @override
  $SummaryResponseCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionSummaryResponseNoneTypeCopyWithImpl<$Res,
        _$BaseResponseUnionSummaryResponseNoneTypeImpl>
    implements _$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWith<$Res> {
  __$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionSummaryResponseNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionSummaryResponseNoneTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionSummaryResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionSummaryResponseNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SummaryResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionSummaryResponseNoneTypeImpl
    extends _BaseResponseUnionSummaryResponseNoneType {
  const _$BaseResponseUnionSummaryResponseNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionSummaryResponseNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionSummaryResponseNoneTypeImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final SummaryResponse? data;

  @override
  String toString() {
    return 'BaseResponseUnionSummaryResponseNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionSummaryResponseNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionSummaryResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionSummaryResponseNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWithImpl<
              _$BaseResponseUnionSummaryResponseNoneTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionSummaryResponseNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionSummaryResponseNoneType
    extends BaseResponseUnionSummaryResponseNoneType {
  const factory _BaseResponseUnionSummaryResponseNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final SummaryResponse? data}) =
      _$BaseResponseUnionSummaryResponseNoneTypeImpl;
  const _BaseResponseUnionSummaryResponseNoneType._() : super._();

  factory _BaseResponseUnionSummaryResponseNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionSummaryResponseNoneTypeImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  SummaryResponse? get data;

  /// Create a copy of BaseResponseUnionSummaryResponseNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionSummaryResponseNoneTypeImplCopyWith<
          _$BaseResponseUnionSummaryResponseNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
