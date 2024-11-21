// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_specialization_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListSpecializationPublic
    _$BaseResponseListSpecializationPublicFromJson(Map<String, dynamic> json) {
  return _BaseResponseListSpecializationPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListSpecializationPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<SpecializationPublic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListSpecializationPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListSpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListSpecializationPublicCopyWith<
          BaseResponseListSpecializationPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListSpecializationPublicCopyWith<$Res> {
  factory $BaseResponseListSpecializationPublicCopyWith(
          BaseResponseListSpecializationPublic value,
          $Res Function(BaseResponseListSpecializationPublic) then) =
      _$BaseResponseListSpecializationPublicCopyWithImpl<$Res,
          BaseResponseListSpecializationPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SpecializationPublic> data});
}

/// @nodoc
class _$BaseResponseListSpecializationPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListSpecializationPublic>
    implements $BaseResponseListSpecializationPublicCopyWith<$Res> {
  _$BaseResponseListSpecializationPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListSpecializationPublic
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
              as List<SpecializationPublic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListSpecializationPublicImplCopyWith<$Res>
    implements $BaseResponseListSpecializationPublicCopyWith<$Res> {
  factory _$$BaseResponseListSpecializationPublicImplCopyWith(
          _$BaseResponseListSpecializationPublicImpl value,
          $Res Function(_$BaseResponseListSpecializationPublicImpl) then) =
      __$$BaseResponseListSpecializationPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<SpecializationPublic> data});
}

/// @nodoc
class __$$BaseResponseListSpecializationPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListSpecializationPublicCopyWithImpl<$Res,
        _$BaseResponseListSpecializationPublicImpl>
    implements _$$BaseResponseListSpecializationPublicImplCopyWith<$Res> {
  __$$BaseResponseListSpecializationPublicImplCopyWithImpl(
      _$BaseResponseListSpecializationPublicImpl _value,
      $Res Function(_$BaseResponseListSpecializationPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListSpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListSpecializationPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpecializationPublic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListSpecializationPublicImpl
    extends _BaseResponseListSpecializationPublic {
  const _$BaseResponseListSpecializationPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<SpecializationPublic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListSpecializationPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListSpecializationPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<SpecializationPublic> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<SpecializationPublic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListSpecializationPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListSpecializationPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListSpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListSpecializationPublicImplCopyWith<
          _$BaseResponseListSpecializationPublicImpl>
      get copyWith => __$$BaseResponseListSpecializationPublicImplCopyWithImpl<
          _$BaseResponseListSpecializationPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListSpecializationPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListSpecializationPublic
    extends BaseResponseListSpecializationPublic {
  const factory _BaseResponseListSpecializationPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<SpecializationPublic> data}) =
      _$BaseResponseListSpecializationPublicImpl;
  const _BaseResponseListSpecializationPublic._() : super._();

  factory _BaseResponseListSpecializationPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseListSpecializationPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<SpecializationPublic> get data;

  /// Create a copy of BaseResponseListSpecializationPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListSpecializationPublicImplCopyWith<
          _$BaseResponseListSpecializationPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
