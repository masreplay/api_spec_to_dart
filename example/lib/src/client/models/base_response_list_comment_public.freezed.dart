// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_comment_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListCommentPublic _$BaseResponseListCommentPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListCommentPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListCommentPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListCommentPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListCommentPublicCopyWith<BaseResponseListCommentPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListCommentPublicCopyWith<$Res> {
  factory $BaseResponseListCommentPublicCopyWith(
          BaseResponseListCommentPublic value,
          $Res Function(BaseResponseListCommentPublic) then) =
      _$BaseResponseListCommentPublicCopyWithImpl<$Res,
          BaseResponseListCommentPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListCommentPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListCommentPublic>
    implements $BaseResponseListCommentPublicCopyWith<$Res> {
  _$BaseResponseListCommentPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListCommentPublic
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
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListCommentPublicImplCopyWith<$Res>
    implements $BaseResponseListCommentPublicCopyWith<$Res> {
  factory _$$BaseResponseListCommentPublicImplCopyWith(
          _$BaseResponseListCommentPublicImpl value,
          $Res Function(_$BaseResponseListCommentPublicImpl) then) =
      __$$BaseResponseListCommentPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListCommentPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListCommentPublicCopyWithImpl<$Res,
        _$BaseResponseListCommentPublicImpl>
    implements _$$BaseResponseListCommentPublicImplCopyWith<$Res> {
  __$$BaseResponseListCommentPublicImplCopyWithImpl(
      _$BaseResponseListCommentPublicImpl _value,
      $Res Function(_$BaseResponseListCommentPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListCommentPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListCommentPublicImpl
    extends _BaseResponseListCommentPublic {
  const _$BaseResponseListCommentPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListCommentPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListCommentPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<dynamic> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListCommentPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListCommentPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListCommentPublicImplCopyWith<
          _$BaseResponseListCommentPublicImpl>
      get copyWith => __$$BaseResponseListCommentPublicImplCopyWithImpl<
          _$BaseResponseListCommentPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListCommentPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListCommentPublic
    extends BaseResponseListCommentPublic {
  const factory _BaseResponseListCommentPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListCommentPublicImpl;
  const _BaseResponseListCommentPublic._() : super._();

  factory _BaseResponseListCommentPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListCommentPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListCommentPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListCommentPublicImplCopyWith<
          _$BaseResponseListCommentPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
