// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_order_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListOrderPublic _$BaseResponseListOrderPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListOrderPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListOrderPublic {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListOrderPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListOrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListOrderPublicCopyWith<BaseResponseListOrderPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListOrderPublicCopyWith<$Res> {
  factory $BaseResponseListOrderPublicCopyWith(
          BaseResponseListOrderPublic value,
          $Res Function(BaseResponseListOrderPublic) then) =
      _$BaseResponseListOrderPublicCopyWithImpl<$Res,
          BaseResponseListOrderPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListOrderPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListOrderPublic>
    implements $BaseResponseListOrderPublicCopyWith<$Res> {
  _$BaseResponseListOrderPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListOrderPublic
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
abstract class _$$BaseResponseListOrderPublicImplCopyWith<$Res>
    implements $BaseResponseListOrderPublicCopyWith<$Res> {
  factory _$$BaseResponseListOrderPublicImplCopyWith(
          _$BaseResponseListOrderPublicImpl value,
          $Res Function(_$BaseResponseListOrderPublicImpl) then) =
      __$$BaseResponseListOrderPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListOrderPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListOrderPublicCopyWithImpl<$Res,
        _$BaseResponseListOrderPublicImpl>
    implements _$$BaseResponseListOrderPublicImplCopyWith<$Res> {
  __$$BaseResponseListOrderPublicImplCopyWithImpl(
      _$BaseResponseListOrderPublicImpl _value,
      $Res Function(_$BaseResponseListOrderPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListOrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListOrderPublicImpl(
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
class _$BaseResponseListOrderPublicImpl
    implements _BaseResponseListOrderPublic {
  const _$BaseResponseListOrderPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data;

  factory _$BaseResponseListOrderPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListOrderPublicImplFromJson(json);

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
    return 'BaseResponseListOrderPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListOrderPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListOrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListOrderPublicImplCopyWith<_$BaseResponseListOrderPublicImpl>
      get copyWith => __$$BaseResponseListOrderPublicImplCopyWithImpl<
          _$BaseResponseListOrderPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListOrderPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListOrderPublic
    implements BaseResponseListOrderPublic {
  const factory _BaseResponseListOrderPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListOrderPublicImpl;

  factory _BaseResponseListOrderPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListOrderPublicImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListOrderPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListOrderPublicImplCopyWith<_$BaseResponseListOrderPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
