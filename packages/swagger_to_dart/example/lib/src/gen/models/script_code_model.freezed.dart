// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'script_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScriptCodeModel {
  /// scriptCode
  @JsonKey(name: ScriptCodeModel.scriptCodeKey)
  ScriptCode get scriptCode;

  /// Create a copy of ScriptCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ScriptCodeModelCopyWith<ScriptCodeModel> get copyWith =>
      _$ScriptCodeModelCopyWithImpl<ScriptCodeModel>(
          this as ScriptCodeModel, _$identity);

  /// Serializes this ScriptCodeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ScriptCodeModel &&
            (identical(other.scriptCode, scriptCode) ||
                other.scriptCode == scriptCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scriptCode);

  @override
  String toString() {
    return 'ScriptCodeModel(scriptCode: $scriptCode)';
  }
}

/// @nodoc
abstract mixin class $ScriptCodeModelCopyWith<$Res> {
  factory $ScriptCodeModelCopyWith(
          ScriptCodeModel value, $Res Function(ScriptCodeModel) _then) =
      _$ScriptCodeModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ScriptCodeModel.scriptCodeKey) ScriptCode scriptCode});
}

/// @nodoc
class _$ScriptCodeModelCopyWithImpl<$Res>
    implements $ScriptCodeModelCopyWith<$Res> {
  _$ScriptCodeModelCopyWithImpl(this._self, this._then);

  final ScriptCodeModel _self;
  final $Res Function(ScriptCodeModel) _then;

  /// Create a copy of ScriptCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scriptCode = null,
  }) {
    return _then(_self.copyWith(
      scriptCode: null == scriptCode
          ? _self.scriptCode
          : scriptCode // ignore: cast_nullable_to_non_nullable
              as ScriptCode,
    ));
  }
}

/// Adds pattern-matching-related methods to [ScriptCodeModel].
extension ScriptCodeModelPatterns on ScriptCodeModel {
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
    TResult Function(_ScriptCodeModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScriptCodeModel() when $default != null:
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
    TResult Function(_ScriptCodeModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScriptCodeModel():
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
    TResult? Function(_ScriptCodeModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScriptCodeModel() when $default != null:
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
    TResult Function(
            @JsonKey(name: ScriptCodeModel.scriptCodeKey)
            ScriptCode scriptCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ScriptCodeModel() when $default != null:
        return $default(_that.scriptCode);
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
    TResult Function(
            @JsonKey(name: ScriptCodeModel.scriptCodeKey) ScriptCode scriptCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScriptCodeModel():
        return $default(_that.scriptCode);
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
    TResult? Function(
            @JsonKey(name: ScriptCodeModel.scriptCodeKey)
            ScriptCode scriptCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ScriptCodeModel() when $default != null:
        return $default(_that.scriptCode);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ScriptCodeModel extends ScriptCodeModel {
  const _ScriptCodeModel(
      {@JsonKey(name: ScriptCodeModel.scriptCodeKey) required this.scriptCode})
      : super._();
  factory _ScriptCodeModel.fromJson(Map<String, dynamic> json) =>
      _$ScriptCodeModelFromJson(json);

  /// scriptCode
  @override
  @JsonKey(name: ScriptCodeModel.scriptCodeKey)
  final ScriptCode scriptCode;

  /// Create a copy of ScriptCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ScriptCodeModelCopyWith<_ScriptCodeModel> get copyWith =>
      __$ScriptCodeModelCopyWithImpl<_ScriptCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ScriptCodeModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScriptCodeModel &&
            (identical(other.scriptCode, scriptCode) ||
                other.scriptCode == scriptCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, scriptCode);

  @override
  String toString() {
    return 'ScriptCodeModel(scriptCode: $scriptCode)';
  }
}

/// @nodoc
abstract mixin class _$ScriptCodeModelCopyWith<$Res>
    implements $ScriptCodeModelCopyWith<$Res> {
  factory _$ScriptCodeModelCopyWith(
          _ScriptCodeModel value, $Res Function(_ScriptCodeModel) _then) =
      __$ScriptCodeModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ScriptCodeModel.scriptCodeKey) ScriptCode scriptCode});
}

/// @nodoc
class __$ScriptCodeModelCopyWithImpl<$Res>
    implements _$ScriptCodeModelCopyWith<$Res> {
  __$ScriptCodeModelCopyWithImpl(this._self, this._then);

  final _ScriptCodeModel _self;
  final $Res Function(_ScriptCodeModel) _then;

  /// Create a copy of ScriptCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? scriptCode = null,
  }) {
    return _then(_ScriptCodeModel(
      scriptCode: null == scriptCode
          ? _self.scriptCode
          : scriptCode // ignore: cast_nullable_to_non_nullable
              as ScriptCode,
    ));
  }
}
