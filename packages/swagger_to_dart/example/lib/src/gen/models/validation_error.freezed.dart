// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValidationError {
  /// loc
  @JsonKey(name: ValidationError.locKey)
  List<dynamic> get loc;

  /// msg
  @JsonKey(name: ValidationError.msgKey)
  String get msg;

  /// typeAA
  @JsonKey(name: ValidationError.typeAAKey)
  String get typeAA;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ValidationErrorCopyWith<ValidationError> get copyWith =>
      _$ValidationErrorCopyWithImpl<ValidationError>(
        this as ValidationError,
        _$identity,
      );

  /// Serializes this ValidationError to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ValidationError &&
            const DeepCollectionEquality().equals(other.loc, loc) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.typeAA, typeAA) || other.typeAA == typeAA));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(loc),
    msg,
    typeAA,
  );

  @override
  String toString() {
    return 'ValidationError(loc: $loc, msg: $msg, typeAA: $typeAA)';
  }
}

/// @nodoc
abstract mixin class $ValidationErrorCopyWith<$Res> {
  factory $ValidationErrorCopyWith(
    ValidationError value,
    $Res Function(ValidationError) _then,
  ) = _$ValidationErrorCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: ValidationError.locKey) List<dynamic> loc,
    @JsonKey(name: ValidationError.msgKey) String msg,
    @JsonKey(name: ValidationError.typeAAKey) String typeAA,
  });
}

/// @nodoc
class _$ValidationErrorCopyWithImpl<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  _$ValidationErrorCopyWithImpl(this._self, this._then);

  final ValidationError _self;
  final $Res Function(ValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? loc = null, Object? msg = null, Object? typeAA = null}) {
    return _then(
      _self.copyWith(
        loc:
            null == loc
                ? _self.loc
                : loc // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        msg:
            null == msg
                ? _self.msg
                : msg // ignore: cast_nullable_to_non_nullable
                    as String,
        typeAA:
            null == typeAA
                ? _self.typeAA
                : typeAA // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _ValidationError extends ValidationError {
  const _ValidationError({
    @JsonKey(name: ValidationError.locKey) required final List<dynamic> loc,
    @JsonKey(name: ValidationError.msgKey) required this.msg,
    @JsonKey(name: ValidationError.typeAAKey) required this.typeAA,
  }) : _loc = loc,
       super._();
  factory _ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  /// loc
  final List<dynamic> _loc;

  /// loc
  @override
  @JsonKey(name: ValidationError.locKey)
  List<dynamic> get loc {
    if (_loc is EqualUnmodifiableListView) return _loc;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loc);
  }

  /// msg
  @override
  @JsonKey(name: ValidationError.msgKey)
  final String msg;

  /// typeAA
  @override
  @JsonKey(name: ValidationError.typeAAKey)
  final String typeAA;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValidationErrorCopyWith<_ValidationError> get copyWith =>
      __$ValidationErrorCopyWithImpl<_ValidationError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ValidationErrorToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValidationError &&
            const DeepCollectionEquality().equals(other._loc, _loc) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.typeAA, typeAA) || other.typeAA == typeAA));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_loc),
    msg,
    typeAA,
  );

  @override
  String toString() {
    return 'ValidationError(loc: $loc, msg: $msg, typeAA: $typeAA)';
  }
}

/// @nodoc
abstract mixin class _$ValidationErrorCopyWith<$Res>
    implements $ValidationErrorCopyWith<$Res> {
  factory _$ValidationErrorCopyWith(
    _ValidationError value,
    $Res Function(_ValidationError) _then,
  ) = __$ValidationErrorCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: ValidationError.locKey) List<dynamic> loc,
    @JsonKey(name: ValidationError.msgKey) String msg,
    @JsonKey(name: ValidationError.typeAAKey) String typeAA,
  });
}

/// @nodoc
class __$ValidationErrorCopyWithImpl<$Res>
    implements _$ValidationErrorCopyWith<$Res> {
  __$ValidationErrorCopyWithImpl(this._self, this._then);

  final _ValidationError _self;
  final $Res Function(_ValidationError) _then;

  /// Create a copy of ValidationError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? loc = null, Object? msg = null, Object? typeAA = null}) {
    return _then(
      _ValidationError(
        loc:
            null == loc
                ? _self._loc
                : loc // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        msg:
            null == msg
                ? _self.msg
                : msg // ignore: cast_nullable_to_non_nullable
                    as String,
        typeAA:
            null == typeAA
                ? _self.typeAA
                : typeAA // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}
