// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 's3_path_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$S3PathModel {
  /// s3Path
  @JsonKey(name: S3PathModel.s3PathKey)
  String get s3Path;

  /// Create a copy of S3PathModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $S3PathModelCopyWith<S3PathModel> get copyWith =>
      _$S3PathModelCopyWithImpl<S3PathModel>(this as S3PathModel, _$identity);

  /// Serializes this S3PathModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is S3PathModel &&
            (identical(other.s3Path, s3Path) || other.s3Path == s3Path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, s3Path);

  @override
  String toString() {
    return 'S3PathModel(s3Path: $s3Path)';
  }
}

/// @nodoc
abstract mixin class $S3PathModelCopyWith<$Res> {
  factory $S3PathModelCopyWith(
          S3PathModel value, $Res Function(S3PathModel) _then) =
      _$S3PathModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: S3PathModel.s3PathKey) String s3Path});
}

/// @nodoc
class _$S3PathModelCopyWithImpl<$Res> implements $S3PathModelCopyWith<$Res> {
  _$S3PathModelCopyWithImpl(this._self, this._then);

  final S3PathModel _self;
  final $Res Function(S3PathModel) _then;

  /// Create a copy of S3PathModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? s3Path = null,
  }) {
    return _then(_self.copyWith(
      s3Path: null == s3Path
          ? _self.s3Path
          : s3Path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [S3PathModel].
extension S3PathModelPatterns on S3PathModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_S3PathModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _S3PathModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_S3PathModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PathModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_S3PathModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PathModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: S3PathModel.s3PathKey) String s3Path)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _S3PathModel() when $default != null:
        return $default(_that.s3Path);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: S3PathModel.s3PathKey) String s3Path)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PathModel():
        return $default(_that.s3Path);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: S3PathModel.s3PathKey) String s3Path)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _S3PathModel() when $default != null:
        return $default(_that.s3Path);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _S3PathModel extends S3PathModel {
  const _S3PathModel(
      {@JsonKey(name: S3PathModel.s3PathKey) required this.s3Path})
      : super._();
  factory _S3PathModel.fromJson(Map<String, dynamic> json) =>
      _$S3PathModelFromJson(json);

  /// s3Path
  @override
  @JsonKey(name: S3PathModel.s3PathKey)
  final String s3Path;

  /// Create a copy of S3PathModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$S3PathModelCopyWith<_S3PathModel> get copyWith =>
      __$S3PathModelCopyWithImpl<_S3PathModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$S3PathModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _S3PathModel &&
            (identical(other.s3Path, s3Path) || other.s3Path == s3Path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, s3Path);

  @override
  String toString() {
    return 'S3PathModel(s3Path: $s3Path)';
  }
}

/// @nodoc
abstract mixin class _$S3PathModelCopyWith<$Res>
    implements $S3PathModelCopyWith<$Res> {
  factory _$S3PathModelCopyWith(
          _S3PathModel value, $Res Function(_S3PathModel) _then) =
      __$S3PathModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: S3PathModel.s3PathKey) String s3Path});
}

/// @nodoc
class __$S3PathModelCopyWithImpl<$Res> implements _$S3PathModelCopyWith<$Res> {
  __$S3PathModelCopyWithImpl(this._self, this._then);

  final _S3PathModel _self;
  final $Res Function(_S3PathModel) _then;

  /// Create a copy of S3PathModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? s3Path = null,
  }) {
    return _then(_S3PathModel(
      s3Path: null == s3Path
          ? _self.s3Path
          : s3Path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
