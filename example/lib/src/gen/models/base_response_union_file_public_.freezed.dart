// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_file_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionFilePublic _$BaseResponseUnionFilePublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseUnionFilePublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionFilePublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  FilePublic? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionFilePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionFilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionFilePublicCopyWith<BaseResponseUnionFilePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionFilePublicCopyWith<$Res> {
  factory $BaseResponseUnionFilePublicCopyWith(
          BaseResponseUnionFilePublic value,
          $Res Function(BaseResponseUnionFilePublic) then) =
      _$BaseResponseUnionFilePublicCopyWithImpl<$Res,
          BaseResponseUnionFilePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') FilePublic? data});

  $FilePublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionFilePublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionFilePublic>
    implements $BaseResponseUnionFilePublicCopyWith<$Res> {
  _$BaseResponseUnionFilePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionFilePublic
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
              as FilePublic?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionFilePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FilePublicCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FilePublicCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionFilePublicImplCopyWith<$Res>
    implements $BaseResponseUnionFilePublicCopyWith<$Res> {
  factory _$$BaseResponseUnionFilePublicImplCopyWith(
          _$BaseResponseUnionFilePublicImpl value,
          $Res Function(_$BaseResponseUnionFilePublicImpl) then) =
      __$$BaseResponseUnionFilePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') FilePublic? data});

  @override
  $FilePublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionFilePublicImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionFilePublicCopyWithImpl<$Res,
        _$BaseResponseUnionFilePublicImpl>
    implements _$$BaseResponseUnionFilePublicImplCopyWith<$Res> {
  __$$BaseResponseUnionFilePublicImplCopyWithImpl(
      _$BaseResponseUnionFilePublicImpl _value,
      $Res Function(_$BaseResponseUnionFilePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionFilePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionFilePublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FilePublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionFilePublicImpl extends _BaseResponseUnionFilePublic {
  const _$BaseResponseUnionFilePublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionFilePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionFilePublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final FilePublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionFilePublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionFilePublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionFilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionFilePublicImplCopyWith<_$BaseResponseUnionFilePublicImpl>
      get copyWith => __$$BaseResponseUnionFilePublicImplCopyWithImpl<
          _$BaseResponseUnionFilePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionFilePublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionFilePublic
    extends BaseResponseUnionFilePublic {
  const factory _BaseResponseUnionFilePublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final FilePublic? data}) =
      _$BaseResponseUnionFilePublicImpl;
  const _BaseResponseUnionFilePublic._() : super._();

  factory _BaseResponseUnionFilePublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseUnionFilePublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  FilePublic? get data;

  /// Create a copy of BaseResponseUnionFilePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionFilePublicImplCopyWith<_$BaseResponseUnionFilePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
