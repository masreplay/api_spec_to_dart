// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanScript {
  /// id
  @JsonKey(name: PostmanScript.idKey_)
  String? get id;

  /// type
  @JsonKey(name: PostmanScript.typeKey_)
  String? get type;

  /// exec
  @JsonKey(name: PostmanScript.execKey_)
  PostmanScriptExec? get exec;

  /// src
  @JsonKey(name: PostmanScript.srcKey_)
  PostmanUrl? get src;

  /// name
  @JsonKey(name: PostmanScript.nameKey_)
  String? get name;

  /// Create a copy of PostmanScript
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanScriptCopyWith<PostmanScript> get copyWith =>
      _$PostmanScriptCopyWithImpl<PostmanScript>(
        this as PostmanScript,
        _$identity,
      );

  /// Serializes this PostmanScript to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanScript;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanScript &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.exec, _this.exec) || other.exec == _this.exec) &&
            (identical(other.src, _this.src) || other.src == _this.src) &&
            (identical(other.name, _this.name) || other.name == _this.name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanScript;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.type,
      _this.exec,
      _this.src,
      _this.name,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanScript;
    return 'PostmanScript(id: ${_this.id}, type: ${_this.type}, exec: ${_this.exec}, src: ${_this.src}, name: ${_this.name})';
  }
}

/// @nodoc
abstract mixin class $PostmanScriptCopyWith<$Res> {
  factory $PostmanScriptCopyWith(
    PostmanScript value,
    $Res Function(PostmanScript) _then,
  ) = _$PostmanScriptCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanScript.idKey_) String? id,
    @JsonKey(name: PostmanScript.typeKey_) String? type,
    @JsonKey(name: PostmanScript.execKey_) PostmanScriptExec? exec,
    @JsonKey(name: PostmanScript.srcKey_) PostmanUrl? src,
    @JsonKey(name: PostmanScript.nameKey_) String? name,
  });
}

/// @nodoc
class _$PostmanScriptCopyWithImpl<$Res>
    implements $PostmanScriptCopyWith<$Res> {
  _$PostmanScriptCopyWithImpl(this._self, this._then);

  final PostmanScript _self;
  final $Res Function(PostmanScript) _then;

  /// Create a copy of PostmanScript
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? exec = freezed,
    Object? src = freezed,
    Object? name = freezed,
  }) {
    return _then(
      PostmanScript(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        exec: freezed == exec
            ? _self.exec
            : exec // ignore: cast_nullable_to_non_nullable
                  as PostmanScriptExec?,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as PostmanUrl?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanScript].
extension PostmanScriptPatterns on PostmanScript {
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
    TResult Function(_PostmanScript value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanScript() when $default != null:
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
    TResult Function(_PostmanScript value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanScript():
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
    TResult? Function(_PostmanScript value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanScript() when $default != null:
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
      @JsonKey(name: PostmanScript.idKey_) String? id,
      @JsonKey(name: PostmanScript.typeKey_) String? type,
      @JsonKey(name: PostmanScript.execKey_) PostmanScriptExec? exec,
      @JsonKey(name: PostmanScript.srcKey_) PostmanUrl? src,
      @JsonKey(name: PostmanScript.nameKey_) String? name,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanScript() when $default != null:
        return $default(
          _that.id,
          _that.type,
          _that.exec,
          _that.src,
          _that.name,
        );
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
      @JsonKey(name: PostmanScript.idKey_) String? id,
      @JsonKey(name: PostmanScript.typeKey_) String? type,
      @JsonKey(name: PostmanScript.execKey_) PostmanScriptExec? exec,
      @JsonKey(name: PostmanScript.srcKey_) PostmanUrl? src,
      @JsonKey(name: PostmanScript.nameKey_) String? name,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanScript():
        return $default(
          _that.id,
          _that.type,
          _that.exec,
          _that.src,
          _that.name,
        );
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
      @JsonKey(name: PostmanScript.idKey_) String? id,
      @JsonKey(name: PostmanScript.typeKey_) String? type,
      @JsonKey(name: PostmanScript.execKey_) PostmanScriptExec? exec,
      @JsonKey(name: PostmanScript.srcKey_) PostmanUrl? src,
      @JsonKey(name: PostmanScript.nameKey_) String? name,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanScript() when $default != null:
        return $default(
          _that.id,
          _that.type,
          _that.exec,
          _that.src,
          _that.name,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanScript extends PostmanScript {
  const _PostmanScript({
    @JsonKey(name: PostmanScript.idKey_) this.id,
    @JsonKey(name: PostmanScript.typeKey_) this.type,
    @JsonKey(name: PostmanScript.execKey_) this.exec,
    @JsonKey(name: PostmanScript.srcKey_) this.src,
    @JsonKey(name: PostmanScript.nameKey_) this.name,
  }) : super._();
  factory _PostmanScript.fromJson(Map<String, dynamic> json) =>
      _$PostmanScriptFromJson(json);

  /// id
  @override
  @JsonKey(name: PostmanScript.idKey_)
  final String? id;

  /// type
  @override
  @JsonKey(name: PostmanScript.typeKey_)
  final String? type;

  /// exec
  @override
  @JsonKey(name: PostmanScript.execKey_)
  final PostmanScriptExec? exec;

  /// src
  @override
  @JsonKey(name: PostmanScript.srcKey_)
  final PostmanUrl? src;

  /// name
  @override
  @JsonKey(name: PostmanScript.nameKey_)
  final String? name;

  /// Create a copy of PostmanScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanScriptCopyWith<_PostmanScript> get copyWith =>
      __$PostmanScriptCopyWithImpl<_PostmanScript>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanScriptToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanScript &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.exec, exec) || other.exec == exec) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, id, type, exec, src, name);
  }

  @override
  String toString() {
    return 'PostmanScript(id: $id, type: $type, exec: $exec, src: $src, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$PostmanScriptCopyWith<$Res>
    implements $PostmanScriptCopyWith<$Res> {
  factory _$PostmanScriptCopyWith(
    _PostmanScript value,
    $Res Function(_PostmanScript) _then,
  ) = __$PostmanScriptCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanScript.idKey_) String? id,
    @JsonKey(name: PostmanScript.typeKey_) String? type,
    @JsonKey(name: PostmanScript.execKey_) PostmanScriptExec? exec,
    @JsonKey(name: PostmanScript.srcKey_) PostmanUrl? src,
    @JsonKey(name: PostmanScript.nameKey_) String? name,
  });
}

/// @nodoc
class __$PostmanScriptCopyWithImpl<$Res>
    implements _$PostmanScriptCopyWith<$Res> {
  __$PostmanScriptCopyWithImpl(this._self, this._then);

  final _PostmanScript _self;
  final $Res Function(_PostmanScript) _then;

  /// Create a copy of PostmanScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? exec = freezed,
    Object? src = freezed,
    Object? name = freezed,
  }) {
    return _then(
      _PostmanScript(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        exec: freezed == exec
            ? _self.exec
            : exec // ignore: cast_nullable_to_non_nullable
                  as PostmanScriptExec?,
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as PostmanUrl?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
