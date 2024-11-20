// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_comment_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseCommentPublic _$BaseResponseCommentPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseCommentPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseCommentPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  CommentPublic get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseCommentPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseCommentPublicCopyWith<BaseResponseCommentPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseCommentPublicCopyWith<$Res> {
  factory $BaseResponseCommentPublicCopyWith(BaseResponseCommentPublic value,
          $Res Function(BaseResponseCommentPublic) then) =
      _$BaseResponseCommentPublicCopyWithImpl<$Res, BaseResponseCommentPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CommentPublic data});

  $CommentPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$BaseResponseCommentPublicCopyWithImpl<$Res,
        $Val extends BaseResponseCommentPublic>
    implements $BaseResponseCommentPublicCopyWith<$Res> {
  _$BaseResponseCommentPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseCommentPublic
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
              as CommentPublic,
    ) as $Val);
  }

  /// Create a copy of BaseResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentPublicCopyWith<$Res> get data {
    return $CommentPublicCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseCommentPublicImplCopyWith<$Res>
    implements $BaseResponseCommentPublicCopyWith<$Res> {
  factory _$$BaseResponseCommentPublicImplCopyWith(
          _$BaseResponseCommentPublicImpl value,
          $Res Function(_$BaseResponseCommentPublicImpl) then) =
      __$$BaseResponseCommentPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') CommentPublic data});

  @override
  $CommentPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$BaseResponseCommentPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseCommentPublicCopyWithImpl<$Res,
        _$BaseResponseCommentPublicImpl>
    implements _$$BaseResponseCommentPublicImplCopyWith<$Res> {
  __$$BaseResponseCommentPublicImplCopyWithImpl(
      _$BaseResponseCommentPublicImpl _value,
      $Res Function(_$BaseResponseCommentPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseCommentPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CommentPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseCommentPublicImpl extends _BaseResponseCommentPublic {
  const _$BaseResponseCommentPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseCommentPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseCommentPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final CommentPublic data;

  @override
  String toString() {
    return 'BaseResponseCommentPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseCommentPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseCommentPublicImplCopyWith<_$BaseResponseCommentPublicImpl>
      get copyWith => __$$BaseResponseCommentPublicImplCopyWithImpl<
          _$BaseResponseCommentPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseCommentPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseCommentPublic extends BaseResponseCommentPublic {
  const factory _BaseResponseCommentPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final CommentPublic data}) =
      _$BaseResponseCommentPublicImpl;
  const _BaseResponseCommentPublic._() : super._();

  factory _BaseResponseCommentPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseCommentPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  CommentPublic get data;

  /// Create a copy of BaseResponseCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseCommentPublicImplCopyWith<_$BaseResponseCommentPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
