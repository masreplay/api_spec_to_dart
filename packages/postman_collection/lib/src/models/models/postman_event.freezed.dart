// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanEvent {
  /// id
  @JsonKey(name: PostmanEvent.idKey_)
  String? get id;

  /// listen
  @JsonKey(name: PostmanEvent.listenKey_)
  String get listen;

  /// script
  @JsonKey(name: PostmanEvent.scriptKey_)
  PostmanScript? get script;

  /// disabled
  @JsonKey(name: PostmanEvent.disabledKey_)
  bool get disabled;

  /// Create a copy of PostmanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanEventCopyWith<PostmanEvent> get copyWith =>
      _$PostmanEventCopyWithImpl<PostmanEvent>(
        this as PostmanEvent,
        _$identity,
      );

  /// Serializes this PostmanEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanEvent;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanEvent &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.listen, _this.listen) ||
                other.listen == _this.listen) &&
            (identical(other.script, _this.script) ||
                other.script == _this.script) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanEvent;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.listen,
      _this.script,
      _this.disabled,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanEvent;
    return 'PostmanEvent(id: ${_this.id}, listen: ${_this.listen}, script: ${_this.script}, disabled: ${_this.disabled})';
  }
}

/// @nodoc
abstract mixin class $PostmanEventCopyWith<$Res> {
  factory $PostmanEventCopyWith(
    PostmanEvent value,
    $Res Function(PostmanEvent) _then,
  ) = _$PostmanEventCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanEvent.idKey_) String? id,
    @JsonKey(name: PostmanEvent.listenKey_) String listen,
    @JsonKey(name: PostmanEvent.scriptKey_) PostmanScript? script,
    @JsonKey(name: PostmanEvent.disabledKey_) bool disabled,
  });

  $PostmanScriptCopyWith<$Res>? get script;
}

/// @nodoc
class _$PostmanEventCopyWithImpl<$Res> implements $PostmanEventCopyWith<$Res> {
  _$PostmanEventCopyWithImpl(this._self, this._then);

  final PostmanEvent _self;
  final $Res Function(PostmanEvent) _then;

  /// Create a copy of PostmanEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listen = null,
    Object? script = freezed,
    Object? disabled = null,
  }) {
    return _then(
      PostmanEvent(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        listen: null == listen
            ? _self.listen
            : listen // ignore: cast_nullable_to_non_nullable
                  as String,
        script: freezed == script
            ? _self.script
            : script // ignore: cast_nullable_to_non_nullable
                  as PostmanScript?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of PostmanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanScriptCopyWith<$Res>? get script {
    if (_self.script == null) {
      return null;
    }

    return $PostmanScriptCopyWith<$Res>(_self.script!, (value) {
      return _then(_self.copyWith(script: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanEvent].
extension PostmanEventPatterns on PostmanEvent {
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
    TResult Function(_PostmanEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanEvent() when $default != null:
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
    TResult Function(_PostmanEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanEvent():
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
    TResult? Function(_PostmanEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanEvent() when $default != null:
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
      @JsonKey(name: PostmanEvent.idKey_) String? id,
      @JsonKey(name: PostmanEvent.listenKey_) String listen,
      @JsonKey(name: PostmanEvent.scriptKey_) PostmanScript? script,
      @JsonKey(name: PostmanEvent.disabledKey_) bool disabled,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanEvent() when $default != null:
        return $default(_that.id, _that.listen, _that.script, _that.disabled);
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
      @JsonKey(name: PostmanEvent.idKey_) String? id,
      @JsonKey(name: PostmanEvent.listenKey_) String listen,
      @JsonKey(name: PostmanEvent.scriptKey_) PostmanScript? script,
      @JsonKey(name: PostmanEvent.disabledKey_) bool disabled,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanEvent():
        return $default(_that.id, _that.listen, _that.script, _that.disabled);
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
      @JsonKey(name: PostmanEvent.idKey_) String? id,
      @JsonKey(name: PostmanEvent.listenKey_) String listen,
      @JsonKey(name: PostmanEvent.scriptKey_) PostmanScript? script,
      @JsonKey(name: PostmanEvent.disabledKey_) bool disabled,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanEvent() when $default != null:
        return $default(_that.id, _that.listen, _that.script, _that.disabled);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanEvent extends PostmanEvent {
  const _PostmanEvent({
    @JsonKey(name: PostmanEvent.idKey_) this.id,
    @JsonKey(name: PostmanEvent.listenKey_) required this.listen,
    @JsonKey(name: PostmanEvent.scriptKey_) this.script,
    @JsonKey(name: PostmanEvent.disabledKey_) this.disabled = false,
  }) : super._();
  factory _PostmanEvent.fromJson(Map<String, dynamic> json) =>
      _$PostmanEventFromJson(json);

  /// id
  @override
  @JsonKey(name: PostmanEvent.idKey_)
  final String? id;

  /// listen
  @override
  @JsonKey(name: PostmanEvent.listenKey_)
  final String listen;

  /// script
  @override
  @JsonKey(name: PostmanEvent.scriptKey_)
  final PostmanScript? script;

  /// disabled
  @override
  @JsonKey(name: PostmanEvent.disabledKey_)
  final bool disabled;

  /// Create a copy of PostmanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanEventCopyWith<_PostmanEvent> get copyWith =>
      __$PostmanEventCopyWithImpl<_PostmanEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanEventToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listen, listen) || other.listen == listen) &&
            (identical(other.script, script) || other.script == script) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, id, listen, script, disabled);
  }

  @override
  String toString() {
    return 'PostmanEvent(id: $id, listen: $listen, script: $script, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$PostmanEventCopyWith<$Res>
    implements $PostmanEventCopyWith<$Res> {
  factory _$PostmanEventCopyWith(
    _PostmanEvent value,
    $Res Function(_PostmanEvent) _then,
  ) = __$PostmanEventCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanEvent.idKey_) String? id,
    @JsonKey(name: PostmanEvent.listenKey_) String listen,
    @JsonKey(name: PostmanEvent.scriptKey_) PostmanScript? script,
    @JsonKey(name: PostmanEvent.disabledKey_) bool disabled,
  });

  @override
  $PostmanScriptCopyWith<$Res>? get script;
}

/// @nodoc
class __$PostmanEventCopyWithImpl<$Res>
    implements _$PostmanEventCopyWith<$Res> {
  __$PostmanEventCopyWithImpl(this._self, this._then);

  final _PostmanEvent _self;
  final $Res Function(_PostmanEvent) _then;

  /// Create a copy of PostmanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? listen = null,
    Object? script = freezed,
    Object? disabled = null,
  }) {
    return _then(
      _PostmanEvent(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        listen: null == listen
            ? _self.listen
            : listen // ignore: cast_nullable_to_non_nullable
                  as String,
        script: freezed == script
            ? _self.script
            : script // ignore: cast_nullable_to_non_nullable
                  as PostmanScript?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of PostmanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanScriptCopyWith<$Res>? get script {
    if (_self.script == null) {
      return null;
    }

    return $PostmanScriptCopyWith<$Res>(_self.script!, (value) {
      return _then(_self.copyWith(script: value));
    });
  }
}
