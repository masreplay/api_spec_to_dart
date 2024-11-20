// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) {
  return _ValidationError.fromJson(json);
}

/// @nodoc
mixin _$ValidationError {
  @JsonKey(name: 'loc')
  List<dynamic> get loc => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg')
  String get msg => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Serializes this ValidationError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
          ValidationError value, $Res Function(ValidationError) then) =
      _$ValidationErrorCopyWithImpl<$Res, ValidationError>;
  @useResult
  $Res call(
      {@JsonKey(name: 'loc') List<dynamic> loc,
      @JsonKey(name: 'msg') String msg,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res, $Val extends ValidationError>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loc = null,
    Object? msg = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      loc: null == loc
          ? _value.loc
          : loc // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationErrorImplCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory _$$ValidationErrorImplCopyWith(_$ValidationErrorImpl value,
          $Res Function(_$ValidationErrorImpl) then) =
      __$$ValidationErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'loc') List<dynamic> loc,
      @JsonKey(name: 'msg') String msg,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$ValidationErrorImplCopyWithImpl<$Res>
    extends _$ValidationErrorCopyWithImpl<$Res, _$ValidationErrorImpl>
    implements _$$ValidationErrorImplCopyWith<$Res> {
  __$$ValidationErrorImplCopyWithImpl(
      _$ValidationErrorImpl _value, $Res Function(_$ValidationErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loc = null,
    Object? msg = null,
    Object? type = null,
  }) {
    return _then(_$ValidationErrorImpl(
      loc: null == loc
          ? _value._loc
          : loc // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$ValidationErrorImpl extends _ValidationError {
  const _$ValidationErrorImpl(
      {@JsonKey(name: 'loc') required final List<dynamic> loc,
      @JsonKey(name: 'msg') required this.msg,
      @JsonKey(name: 'type') required this.type})
      : _loc = loc,
        super._();

  factory _$ValidationErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidationErrorImplFromJson(json);

  final List<dynamic> _loc;
  @override
  @JsonKey(name: 'loc')
  List<dynamic> get loc {
    if (_loc is EqualUnmodifiableListView) return _loc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loc);
  }

  @override
  @JsonKey(name: 'msg')
  final String msg;
  @override
  @JsonKey(name: 'type')
  final String type;

  @override
  String toString() {
    return 'ValidationError(loc: $loc, msg: $msg, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationErrorImpl &&
            const DeepCollectionEquality().equals(other._loc, _loc) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_loc), msg, type);

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      __$$ValidationErrorImplCopyWithImpl<_$ValidationErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidationErrorImplToJson(
      this,
    );
  }
}

abstract class _ValidationError extends ValidationError {
  const factory _ValidationError(
          {@JsonKey(name: 'loc') required final List<dynamic> loc,
          @JsonKey(name: 'msg') required final String msg,
          @JsonKey(name: 'type') required final String type}) =
      _$ValidationErrorImpl;
  const _ValidationError._() : super._();

  factory _ValidationError.fromJson(Map<String, dynamic> json) =
      _$ValidationErrorImpl.fromJson;

  @override
  @JsonKey(name: 'loc')
  List<dynamic> get loc;
  @override
  @JsonKey(name: 'msg')
  String get msg;
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationErrorImplCopyWith<_$ValidationErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
