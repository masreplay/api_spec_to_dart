// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_pagination_response_student_fees_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionPaginationResponseStudentFeesPublic
    _$BaseResponseUnionPaginationResponseStudentFeesPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionPaginationResponseStudentFeesPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionPaginationResponseStudentFeesPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PaginationResponseStudentFeesPublic? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionPaginationResponseStudentFeesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionPaginationResponseStudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionPaginationResponseStudentFeesPublicCopyWith<
          BaseResponseUnionPaginationResponseStudentFeesPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionPaginationResponseStudentFeesPublicCopyWith<
    $Res> {
  factory $BaseResponseUnionPaginationResponseStudentFeesPublicCopyWith(
          BaseResponseUnionPaginationResponseStudentFeesPublic value,
          $Res Function(BaseResponseUnionPaginationResponseStudentFeesPublic)
              then) =
      _$BaseResponseUnionPaginationResponseStudentFeesPublicCopyWithImpl<$Res,
          BaseResponseUnionPaginationResponseStudentFeesPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaginationResponseStudentFeesPublic? data});

  $PaginationResponseStudentFeesPublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionPaginationResponseStudentFeesPublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionPaginationResponseStudentFeesPublic>
    implements
        $BaseResponseUnionPaginationResponseStudentFeesPublicCopyWith<$Res> {
  _$BaseResponseUnionPaginationResponseStudentFeesPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionPaginationResponseStudentFeesPublic
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
              as PaginationResponseStudentFeesPublic?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionPaginationResponseStudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationResponseStudentFeesPublicCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PaginationResponseStudentFeesPublicCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWith<
        $Res>
    implements
        $BaseResponseUnionPaginationResponseStudentFeesPublicCopyWith<$Res> {
  factory _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWith(
          _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl value,
          $Res Function(
                  _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl)
              then) =
      __$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaginationResponseStudentFeesPublic? data});

  @override
  $PaginationResponseStudentFeesPublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWithImpl<
        $Res>
    extends _$BaseResponseUnionPaginationResponseStudentFeesPublicCopyWithImpl<
        $Res, _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl>
    implements
        _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWith<
            $Res> {
  __$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWithImpl(
      _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl _value,
      $Res Function(_$BaseResponseUnionPaginationResponseStudentFeesPublicImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionPaginationResponseStudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionPaginationResponseStudentFeesPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationResponseStudentFeesPublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl
    extends _BaseResponseUnionPaginationResponseStudentFeesPublic {
  const _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final PaginationResponseStudentFeesPublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionPaginationResponseStudentFeesPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionPaginationResponseStudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWith<
          _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl>
      get copyWith =>
          __$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWithImpl<
                  _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionPaginationResponseStudentFeesPublic
    extends BaseResponseUnionPaginationResponseStudentFeesPublic {
  const factory _BaseResponseUnionPaginationResponseStudentFeesPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final PaginationResponseStudentFeesPublic? data}) =
      _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl;
  const _BaseResponseUnionPaginationResponseStudentFeesPublic._() : super._();

  factory _BaseResponseUnionPaginationResponseStudentFeesPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  PaginationResponseStudentFeesPublic? get data;

  /// Create a copy of BaseResponseUnionPaginationResponseStudentFeesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplCopyWith<
          _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
