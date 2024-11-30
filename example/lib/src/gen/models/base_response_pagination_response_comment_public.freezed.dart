// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_pagination_response_comment_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponsePaginationResponseCommentPublic
    _$BaseResponsePaginationResponseCommentPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponsePaginationResponseCommentPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponsePaginationResponseCommentPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  PaginationResponseCommentPublic get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponsePaginationResponseCommentPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponsePaginationResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponsePaginationResponseCommentPublicCopyWith<
          BaseResponsePaginationResponseCommentPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponsePaginationResponseCommentPublicCopyWith<$Res> {
  factory $BaseResponsePaginationResponseCommentPublicCopyWith(
          BaseResponsePaginationResponseCommentPublic value,
          $Res Function(BaseResponsePaginationResponseCommentPublic) then) =
      _$BaseResponsePaginationResponseCommentPublicCopyWithImpl<$Res,
          BaseResponsePaginationResponseCommentPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaginationResponseCommentPublic data});

  $PaginationResponseCommentPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponsePaginationResponseCommentPublicCopyWithImpl<$Res,
        $Val extends BaseResponsePaginationResponseCommentPublic>
    implements $BaseResponsePaginationResponseCommentPublicCopyWith<$Res> {
  _$BaseResponsePaginationResponseCommentPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponsePaginationResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationResponseCommentPublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponsePaginationResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationResponseCommentPublicCopyWith<$Res> get data {
    return $PaginationResponseCommentPublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponsePaginationResponseCommentPublicImplCopyWith<$Res>
    implements $BaseResponsePaginationResponseCommentPublicCopyWith<$Res> {
  factory _$$BaseResponsePaginationResponseCommentPublicImplCopyWith(
          _$BaseResponsePaginationResponseCommentPublicImpl value,
          $Res Function(_$BaseResponsePaginationResponseCommentPublicImpl)
              then) =
      __$$BaseResponsePaginationResponseCommentPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') PaginationResponseCommentPublic data});

  @override
  $PaginationResponseCommentPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponsePaginationResponseCommentPublicImplCopyWithImpl<$Res>
    extends _$BaseResponsePaginationResponseCommentPublicCopyWithImpl<$Res,
        _$BaseResponsePaginationResponseCommentPublicImpl>
    implements
        _$$BaseResponsePaginationResponseCommentPublicImplCopyWith<$Res> {
  __$$BaseResponsePaginationResponseCommentPublicImplCopyWithImpl(
      _$BaseResponsePaginationResponseCommentPublicImpl _value,
      $Res Function(_$BaseResponsePaginationResponseCommentPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponsePaginationResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponsePaginationResponseCommentPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaginationResponseCommentPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponsePaginationResponseCommentPublicImpl
    extends _BaseResponsePaginationResponseCommentPublic {
  const _$BaseResponsePaginationResponseCommentPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponsePaginationResponseCommentPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponsePaginationResponseCommentPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final PaginationResponseCommentPublic data;

  @override
  String toString() {
    return 'BaseResponsePaginationResponseCommentPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponsePaginationResponseCommentPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponsePaginationResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponsePaginationResponseCommentPublicImplCopyWith<
          _$BaseResponsePaginationResponseCommentPublicImpl>
      get copyWith =>
          __$$BaseResponsePaginationResponseCommentPublicImplCopyWithImpl<
                  _$BaseResponsePaginationResponseCommentPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponsePaginationResponseCommentPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponsePaginationResponseCommentPublic
    extends BaseResponsePaginationResponseCommentPublic {
  const factory _BaseResponsePaginationResponseCommentPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final PaginationResponseCommentPublic data}) =
      _$BaseResponsePaginationResponseCommentPublicImpl;
  const _BaseResponsePaginationResponseCommentPublic._() : super._();

  factory _BaseResponsePaginationResponseCommentPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponsePaginationResponseCommentPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  PaginationResponseCommentPublic get data;

  /// Create a copy of BaseResponsePaginationResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponsePaginationResponseCommentPublicImplCopyWith<
          _$BaseResponsePaginationResponseCommentPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
