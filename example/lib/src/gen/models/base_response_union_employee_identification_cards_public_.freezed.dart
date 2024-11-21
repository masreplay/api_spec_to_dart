// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_employee_identification_cards_public_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionEmployeeIdentificationCardsPublic
    _$BaseResponseUnionEmployeeIdentificationCardsPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionEmployeeIdentificationCardsPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionEmployeeIdentificationCardsPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  EmployeeIdentificationCardsPublic? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionEmployeeIdentificationCardsPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionEmployeeIdentificationCardsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionEmployeeIdentificationCardsPublicCopyWith<
          BaseResponseUnionEmployeeIdentificationCardsPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionEmployeeIdentificationCardsPublicCopyWith<
    $Res> {
  factory $BaseResponseUnionEmployeeIdentificationCardsPublicCopyWith(
          BaseResponseUnionEmployeeIdentificationCardsPublic value,
          $Res Function(BaseResponseUnionEmployeeIdentificationCardsPublic)
              then) =
      _$BaseResponseUnionEmployeeIdentificationCardsPublicCopyWithImpl<$Res,
          BaseResponseUnionEmployeeIdentificationCardsPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EmployeeIdentificationCardsPublic? data});

  $EmployeeIdentificationCardsPublicCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionEmployeeIdentificationCardsPublicCopyWithImpl<$Res,
        $Val extends BaseResponseUnionEmployeeIdentificationCardsPublic>
    implements
        $BaseResponseUnionEmployeeIdentificationCardsPublicCopyWith<$Res> {
  _$BaseResponseUnionEmployeeIdentificationCardsPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionEmployeeIdentificationCardsPublic
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
              as EmployeeIdentificationCardsPublic?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionEmployeeIdentificationCardsPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeeIdentificationCardsPublicCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $EmployeeIdentificationCardsPublicCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWith<
        $Res>
    implements
        $BaseResponseUnionEmployeeIdentificationCardsPublicCopyWith<$Res> {
  factory _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWith(
          _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl value,
          $Res Function(
                  _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl)
              then) =
      __$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') EmployeeIdentificationCardsPublic? data});

  @override
  $EmployeeIdentificationCardsPublicCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWithImpl<
        $Res>
    extends _$BaseResponseUnionEmployeeIdentificationCardsPublicCopyWithImpl<
        $Res, _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl>
    implements
        _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWith<
            $Res> {
  __$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWithImpl(
      _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl _value,
      $Res Function(_$BaseResponseUnionEmployeeIdentificationCardsPublicImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionEmployeeIdentificationCardsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionEmployeeIdentificationCardsPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EmployeeIdentificationCardsPublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl
    extends _BaseResponseUnionEmployeeIdentificationCardsPublic {
  const _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final EmployeeIdentificationCardsPublic? data;

  @override
  String toString() {
    return 'BaseResponseUnionEmployeeIdentificationCardsPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionEmployeeIdentificationCardsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWith<
          _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl>
      get copyWith =>
          __$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWithImpl<
                  _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionEmployeeIdentificationCardsPublic
    extends BaseResponseUnionEmployeeIdentificationCardsPublic {
  const factory _BaseResponseUnionEmployeeIdentificationCardsPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final EmployeeIdentificationCardsPublic? data}) =
      _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl;
  const _BaseResponseUnionEmployeeIdentificationCardsPublic._() : super._();

  factory _BaseResponseUnionEmployeeIdentificationCardsPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  EmployeeIdentificationCardsPublic? get data;

  /// Create a copy of BaseResponseUnionEmployeeIdentificationCardsPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplCopyWith<
          _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
