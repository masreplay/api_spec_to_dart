// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_fees_types_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListFeesTypesPublic _$BaseResponseListFeesTypesPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListFeesTypesPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListFeesTypesPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListFeesTypesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListFeesTypesPublicCopyWith<BaseResponseListFeesTypesPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListFeesTypesPublicCopyWith<$Res> {
  factory $BaseResponseListFeesTypesPublicCopyWith(
          BaseResponseListFeesTypesPublic value,
          $Res Function(BaseResponseListFeesTypesPublic) then) =
      _$BaseResponseListFeesTypesPublicCopyWithImpl<$Res,
          BaseResponseListFeesTypesPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListFeesTypesPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListFeesTypesPublic>
    implements $BaseResponseListFeesTypesPublicCopyWith<$Res> {
  _$BaseResponseListFeesTypesPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListFeesTypesPublic
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
abstract class _$$BaseResponseListFeesTypesPublicImplCopyWith<$Res>
    implements $BaseResponseListFeesTypesPublicCopyWith<$Res> {
  factory _$$BaseResponseListFeesTypesPublicImplCopyWith(
          _$BaseResponseListFeesTypesPublicImpl value,
          $Res Function(_$BaseResponseListFeesTypesPublicImpl) then) =
      __$$BaseResponseListFeesTypesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListFeesTypesPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListFeesTypesPublicCopyWithImpl<$Res,
        _$BaseResponseListFeesTypesPublicImpl>
    implements _$$BaseResponseListFeesTypesPublicImplCopyWith<$Res> {
  __$$BaseResponseListFeesTypesPublicImplCopyWithImpl(
      _$BaseResponseListFeesTypesPublicImpl _value,
      $Res Function(_$BaseResponseListFeesTypesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListFeesTypesPublicImpl(
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
class _$BaseResponseListFeesTypesPublicImpl
    extends _BaseResponseListFeesTypesPublic {
  const _$BaseResponseListFeesTypesPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListFeesTypesPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListFeesTypesPublicImplFromJson(json);

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
    return 'BaseResponseListFeesTypesPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListFeesTypesPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListFeesTypesPublicImplCopyWith<
          _$BaseResponseListFeesTypesPublicImpl>
      get copyWith => __$$BaseResponseListFeesTypesPublicImplCopyWithImpl<
          _$BaseResponseListFeesTypesPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListFeesTypesPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListFeesTypesPublic
    extends BaseResponseListFeesTypesPublic {
  const factory _BaseResponseListFeesTypesPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListFeesTypesPublicImpl;
  const _BaseResponseListFeesTypesPublic._() : super._();

  factory _BaseResponseListFeesTypesPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListFeesTypesPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListFeesTypesPublicImplCopyWith<
          _$BaseResponseListFeesTypesPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
