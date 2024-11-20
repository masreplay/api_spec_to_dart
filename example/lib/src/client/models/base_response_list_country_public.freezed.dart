// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_country_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListCountryPublic _$BaseResponseListCountryPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListCountryPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListCountryPublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListCountryPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListCountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListCountryPublicCopyWith<BaseResponseListCountryPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListCountryPublicCopyWith<$Res> {
  factory $BaseResponseListCountryPublicCopyWith(
          BaseResponseListCountryPublic value,
          $Res Function(BaseResponseListCountryPublic) then) =
      _$BaseResponseListCountryPublicCopyWithImpl<$Res,
          BaseResponseListCountryPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListCountryPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListCountryPublic>
    implements $BaseResponseListCountryPublicCopyWith<$Res> {
  _$BaseResponseListCountryPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListCountryPublic
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
abstract class _$$BaseResponseListCountryPublicImplCopyWith<$Res>
    implements $BaseResponseListCountryPublicCopyWith<$Res> {
  factory _$$BaseResponseListCountryPublicImplCopyWith(
          _$BaseResponseListCountryPublicImpl value,
          $Res Function(_$BaseResponseListCountryPublicImpl) then) =
      __$$BaseResponseListCountryPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListCountryPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListCountryPublicCopyWithImpl<$Res,
        _$BaseResponseListCountryPublicImpl>
    implements _$$BaseResponseListCountryPublicImplCopyWith<$Res> {
  __$$BaseResponseListCountryPublicImplCopyWithImpl(
      _$BaseResponseListCountryPublicImpl _value,
      $Res Function(_$BaseResponseListCountryPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListCountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListCountryPublicImpl(
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
@JsonSerializable()
class _$BaseResponseListCountryPublicImpl
    implements _BaseResponseListCountryPublic {
  const _$BaseResponseListCountryPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data;

  factory _$BaseResponseListCountryPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListCountryPublicImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<dynamic> _data;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListCountryPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListCountryPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListCountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListCountryPublicImplCopyWith<
          _$BaseResponseListCountryPublicImpl>
      get copyWith => __$$BaseResponseListCountryPublicImplCopyWithImpl<
          _$BaseResponseListCountryPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListCountryPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListCountryPublic
    implements BaseResponseListCountryPublic {
  const factory _BaseResponseListCountryPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListCountryPublicImpl;

  factory _BaseResponseListCountryPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListCountryPublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListCountryPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListCountryPublicImplCopyWith<
          _$BaseResponseListCountryPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
