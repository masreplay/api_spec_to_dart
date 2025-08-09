// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_files_form_basic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyFilesFormBasic {
  /// username
  @JsonKey(name: BodyFilesFormBasic.usernameKey)
  String get username;

  /// password
  @JsonKey(name: BodyFilesFormBasic.passwordKey)
  String get password;

  /// remember
  @JsonKey(name: BodyFilesFormBasic.rememberKey)
  bool get remember;

  /// Create a copy of BodyFilesFormBasic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyFilesFormBasicCopyWith<BodyFilesFormBasic> get copyWith =>
      _$BodyFilesFormBasicCopyWithImpl<BodyFilesFormBasic>(
          this as BodyFilesFormBasic, _$identity);

  /// Serializes this BodyFilesFormBasic to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyFilesFormBasic &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.remember, remember) ||
                other.remember == remember));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, remember);

  @override
  String toString() {
    return 'BodyFilesFormBasic(username: $username, password: $password, remember: $remember)';
  }
}

/// @nodoc
abstract mixin class $BodyFilesFormBasicCopyWith<$Res> {
  factory $BodyFilesFormBasicCopyWith(
          BodyFilesFormBasic value, $Res Function(BodyFilesFormBasic) _then) =
      _$BodyFilesFormBasicCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BodyFilesFormBasic.usernameKey) String username,
      @JsonKey(name: BodyFilesFormBasic.passwordKey) String password,
      @JsonKey(name: BodyFilesFormBasic.rememberKey) bool remember});
}

/// @nodoc
class _$BodyFilesFormBasicCopyWithImpl<$Res>
    implements $BodyFilesFormBasicCopyWith<$Res> {
  _$BodyFilesFormBasicCopyWithImpl(this._self, this._then);

  final BodyFilesFormBasic _self;
  final $Res Function(BodyFilesFormBasic) _then;

  /// Create a copy of BodyFilesFormBasic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? remember = null,
  }) {
    return _then(_self.copyWith(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      remember: null == remember
          ? _self.remember
          : remember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [BodyFilesFormBasic].
extension BodyFilesFormBasicPatterns on BodyFilesFormBasic {
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
    TResult Function(_BodyFilesFormBasic value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyFilesFormBasic() when $default != null:
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
    TResult Function(_BodyFilesFormBasic value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyFilesFormBasic():
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
    TResult? Function(_BodyFilesFormBasic value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyFilesFormBasic() when $default != null:
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
            @JsonKey(name: BodyFilesFormBasic.usernameKey) String username,
            @JsonKey(name: BodyFilesFormBasic.passwordKey) String password,
            @JsonKey(name: BodyFilesFormBasic.rememberKey) bool remember)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyFilesFormBasic() when $default != null:
        return $default(_that.username, _that.password, _that.remember);
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
            @JsonKey(name: BodyFilesFormBasic.usernameKey) String username,
            @JsonKey(name: BodyFilesFormBasic.passwordKey) String password,
            @JsonKey(name: BodyFilesFormBasic.rememberKey) bool remember)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyFilesFormBasic():
        return $default(_that.username, _that.password, _that.remember);
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
            @JsonKey(name: BodyFilesFormBasic.usernameKey) String username,
            @JsonKey(name: BodyFilesFormBasic.passwordKey) String password,
            @JsonKey(name: BodyFilesFormBasic.rememberKey) bool remember)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyFilesFormBasic() when $default != null:
        return $default(_that.username, _that.password, _that.remember);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _BodyFilesFormBasic extends BodyFilesFormBasic {
  const _BodyFilesFormBasic(
      {@JsonKey(name: BodyFilesFormBasic.usernameKey) required this.username,
      @JsonKey(name: BodyFilesFormBasic.passwordKey) required this.password,
      @JsonKey(name: BodyFilesFormBasic.rememberKey) this.remember = false})
      : super._();
  factory _BodyFilesFormBasic.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFormBasicFromJson(json);

  /// username
  @override
  @JsonKey(name: BodyFilesFormBasic.usernameKey)
  final String username;

  /// password
  @override
  @JsonKey(name: BodyFilesFormBasic.passwordKey)
  final String password;

  /// remember
  @override
  @JsonKey(name: BodyFilesFormBasic.rememberKey)
  final bool remember;

  /// Create a copy of BodyFilesFormBasic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyFilesFormBasicCopyWith<_BodyFilesFormBasic> get copyWith =>
      __$BodyFilesFormBasicCopyWithImpl<_BodyFilesFormBasic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyFilesFormBasicToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyFilesFormBasic &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.remember, remember) ||
                other.remember == remember));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password, remember);

  @override
  String toString() {
    return 'BodyFilesFormBasic(username: $username, password: $password, remember: $remember)';
  }
}

/// @nodoc
abstract mixin class _$BodyFilesFormBasicCopyWith<$Res>
    implements $BodyFilesFormBasicCopyWith<$Res> {
  factory _$BodyFilesFormBasicCopyWith(
          _BodyFilesFormBasic value, $Res Function(_BodyFilesFormBasic) _then) =
      __$BodyFilesFormBasicCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BodyFilesFormBasic.usernameKey) String username,
      @JsonKey(name: BodyFilesFormBasic.passwordKey) String password,
      @JsonKey(name: BodyFilesFormBasic.rememberKey) bool remember});
}

/// @nodoc
class __$BodyFilesFormBasicCopyWithImpl<$Res>
    implements _$BodyFilesFormBasicCopyWith<$Res> {
  __$BodyFilesFormBasicCopyWithImpl(this._self, this._then);

  final _BodyFilesFormBasic _self;
  final $Res Function(_BodyFilesFormBasic) _then;

  /// Create a copy of BodyFilesFormBasic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? remember = null,
  }) {
    return _then(_BodyFilesFormBasic(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      remember: null == remember
          ? _self.remember
          : remember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}
