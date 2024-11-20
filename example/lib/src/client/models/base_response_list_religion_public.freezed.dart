// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_religion_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListReligionPublic _$BaseResponseListReligionPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListReligionPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListReligionPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListReligionPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListReligionPublicCopyWith<BaseResponseListReligionPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListReligionPublicCopyWith<$Res> {
  factory $BaseResponseListReligionPublicCopyWith(
          BaseResponseListReligionPublic value,
          $Res Function(BaseResponseListReligionPublic) then) =
      _$BaseResponseListReligionPublicCopyWithImpl<$Res,
          BaseResponseListReligionPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$BaseResponseListReligionPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListReligionPublic>
    implements $BaseResponseListReligionPublicCopyWith<$Res> {
  _$BaseResponseListReligionPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListReligionPublic
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
abstract class _$$BaseResponseListReligionPublicImplCopyWith<$Res>
    implements $BaseResponseListReligionPublicCopyWith<$Res> {
  factory _$$BaseResponseListReligionPublicImplCopyWith(
          _$BaseResponseListReligionPublicImpl value,
          $Res Function(_$BaseResponseListReligionPublicImpl) then) =
      __$$BaseResponseListReligionPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$BaseResponseListReligionPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListReligionPublicCopyWithImpl<$Res,
        _$BaseResponseListReligionPublicImpl>
    implements _$$BaseResponseListReligionPublicImplCopyWith<$Res> {
  __$$BaseResponseListReligionPublicImplCopyWithImpl(
      _$BaseResponseListReligionPublicImpl _value,
      $Res Function(_$BaseResponseListReligionPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListReligionPublicImpl(
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
class _$BaseResponseListReligionPublicImpl
    extends _BaseResponseListReligionPublic {
  const _$BaseResponseListReligionPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListReligionPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListReligionPublicImplFromJson(json);

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
    return 'BaseResponseListReligionPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListReligionPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListReligionPublicImplCopyWith<
          _$BaseResponseListReligionPublicImpl>
      get copyWith => __$$BaseResponseListReligionPublicImplCopyWithImpl<
          _$BaseResponseListReligionPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListReligionPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListReligionPublic
    extends BaseResponseListReligionPublic {
  const factory _BaseResponseListReligionPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$BaseResponseListReligionPublicImpl;
  const _BaseResponseListReligionPublic._() : super._();

  factory _BaseResponseListReligionPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListReligionPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data;

  /// Create a copy of BaseResponseListReligionPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListReligionPublicImplCopyWith<
          _$BaseResponseListReligionPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
