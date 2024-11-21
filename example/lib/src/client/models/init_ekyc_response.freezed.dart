// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'init_ekyc_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitEkycResponse _$InitEkycResponseFromJson(Map<String, dynamic> json) {
  return _InitEkycResponse.fromJson(json);
}

/// @nodoc
mixin _$InitEkycResponse {
  /// Id
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  EkycStatusEnum get status => throw _privateConstructorUsedError;

  /// Serializes this InitEkycResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitEkycResponseCopyWith<InitEkycResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitEkycResponseCopyWith<$Res> {
  factory $InitEkycResponseCopyWith(
          InitEkycResponse value, $Res Function(InitEkycResponse) then) =
      _$InitEkycResponseCopyWithImpl<$Res, InitEkycResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'status') EkycStatusEnum status});

  $EkycStatusEnumCopyWith<$Res> get status;
}

/// @nodoc
class _$InitEkycResponseCopyWithImpl<$Res, $Val extends InitEkycResponse>
    implements $InitEkycResponseCopyWith<$Res> {
  _$InitEkycResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EkycStatusEnum,
    ) as $Val);
  }

  /// Create a copy of InitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EkycStatusEnumCopyWith<$Res> get status {
    return $EkycStatusEnumCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitEkycResponseImplCopyWith<$Res>
    implements $InitEkycResponseCopyWith<$Res> {
  factory _$$InitEkycResponseImplCopyWith(_$InitEkycResponseImpl value,
          $Res Function(_$InitEkycResponseImpl) then) =
      __$$InitEkycResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'status') EkycStatusEnum status});

  @override
  $EkycStatusEnumCopyWith<$Res> get status;
}

/// @nodoc
class __$$InitEkycResponseImplCopyWithImpl<$Res>
    extends _$InitEkycResponseCopyWithImpl<$Res, _$InitEkycResponseImpl>
    implements _$$InitEkycResponseImplCopyWith<$Res> {
  __$$InitEkycResponseImplCopyWithImpl(_$InitEkycResponseImpl _value,
      $Res Function(_$InitEkycResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$InitEkycResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EkycStatusEnum,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$InitEkycResponseImpl extends _InitEkycResponse {
  const _$InitEkycResponseImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'status') required this.status})
      : super._();

  factory _$InitEkycResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitEkycResponseImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'status')
  final EkycStatusEnum status;

  @override
  String toString() {
    return 'InitEkycResponse(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitEkycResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  /// Create a copy of InitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitEkycResponseImplCopyWith<_$InitEkycResponseImpl> get copyWith =>
      __$$InitEkycResponseImplCopyWithImpl<_$InitEkycResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitEkycResponseImplToJson(
      this,
    );
  }
}

abstract class _InitEkycResponse extends InitEkycResponse {
  const factory _InitEkycResponse(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'status') required final EkycStatusEnum status}) =
      _$InitEkycResponseImpl;
  const _InitEkycResponse._() : super._();

  factory _InitEkycResponse.fromJson(Map<String, dynamic> json) =
      _$InitEkycResponseImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'status')
  EkycStatusEnum get status;

  /// Create a copy of InitEkycResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitEkycResponseImplCopyWith<_$InitEkycResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
