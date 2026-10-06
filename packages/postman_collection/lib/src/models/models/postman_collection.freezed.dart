// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanCollection {
  /// info
  @JsonKey(name: PostmanCollection.infoKey_)
  PostmanInfo get info;

  /// item
  @JsonKey(name: PostmanCollection.itemKey_)
  List<PostmanItems> get item;

  /// event
  @JsonKey(name: PostmanCollection.eventKey_)
  PostmanEventList? get event;

  /// variable
  @JsonKey(name: PostmanCollection.variableKey_)
  PostmanVariableList? get variable;

  /// auth
  @JsonKey(name: PostmanCollection.authKey_)
  PostmanAuth? get auth;

  /// protocolProfileBehavior
  @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
  PostmanProtocolProfileBehavior? get protocolProfileBehavior;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanCollectionCopyWith<PostmanCollection> get copyWith =>
      _$PostmanCollectionCopyWithImpl<PostmanCollection>(
        this as PostmanCollection,
        _$identity,
      );

  /// Serializes this PostmanCollection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanCollection;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanCollection &&
            (identical(other.info, _this.info) || other.info == _this.info) &&
            const DeepCollectionEquality().equals(other.item, _this.item) &&
            const DeepCollectionEquality().equals(other.event, _this.event) &&
            const DeepCollectionEquality().equals(
              other.variable,
              _this.variable,
            ) &&
            (identical(other.auth, _this.auth) || other.auth == _this.auth) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _this.protocolProfileBehavior,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanCollection;
    return Object.hash(
      runtimeType,
      _this.info,
      const DeepCollectionEquality().hash(_this.item),
      const DeepCollectionEquality().hash(_this.event),
      const DeepCollectionEquality().hash(_this.variable),
      _this.auth,
      const DeepCollectionEquality().hash(_this.protocolProfileBehavior),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanCollection;
    return 'PostmanCollection(info: ${_this.info}, item: ${_this.item}, event: ${_this.event}, variable: ${_this.variable}, auth: ${_this.auth}, protocolProfileBehavior: ${_this.protocolProfileBehavior})';
  }
}

/// @nodoc
abstract mixin class $PostmanCollectionCopyWith<$Res> {
  factory $PostmanCollectionCopyWith(
    PostmanCollection value,
    $Res Function(PostmanCollection) _then,
  ) = _$PostmanCollectionCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanCollection.infoKey_) PostmanInfo info,
    @JsonKey(name: PostmanCollection.itemKey_) List<PostmanItems> item,
    @JsonKey(name: PostmanCollection.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanCollection.variableKey_)
    PostmanVariableList? variable,
    @JsonKey(name: PostmanCollection.authKey_) PostmanAuth? auth,
    @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  });

  $PostmanInfoCopyWith<$Res> get info;
  $PostmanAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class _$PostmanCollectionCopyWithImpl<$Res>
    implements $PostmanCollectionCopyWith<$Res> {
  _$PostmanCollectionCopyWithImpl(this._self, this._then);

  final PostmanCollection _self;
  final $Res Function(PostmanCollection) _then;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? item = null,
    Object? event = freezed,
    Object? variable = freezed,
    Object? auth = freezed,
    Object? protocolProfileBehavior = freezed,
  }) {
    return _then(
      PostmanCollection(
        info: null == info
            ? _self.info
            : info // ignore: cast_nullable_to_non_nullable
                  as PostmanInfo,
        item: null == item
            ? _self.item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanItems>,
        event: freezed == event
            ? _self.event
            : event // ignore: cast_nullable_to_non_nullable
                  as PostmanEventList?,
        variable: freezed == variable
            ? _self.variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as PostmanVariableList?,
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanAuth?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self.protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as PostmanProtocolProfileBehavior?,
      ),
    );
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanInfoCopyWith<$Res> get info {
    return $PostmanInfoCopyWith<$Res>(_self.info, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanCollection].
extension PostmanCollectionPatterns on PostmanCollection {
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
    TResult Function(_PostmanCollection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
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
    TResult Function(_PostmanCollection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection():
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
    TResult? Function(_PostmanCollection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
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
      @JsonKey(name: PostmanCollection.infoKey_) PostmanInfo info,
      @JsonKey(name: PostmanCollection.itemKey_) List<PostmanItems> item,
      @JsonKey(name: PostmanCollection.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanCollection.variableKey_)
      PostmanVariableList? variable,
      @JsonKey(name: PostmanCollection.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
        return $default(
          _that.info,
          _that.item,
          _that.event,
          _that.variable,
          _that.auth,
          _that.protocolProfileBehavior,
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
      @JsonKey(name: PostmanCollection.infoKey_) PostmanInfo info,
      @JsonKey(name: PostmanCollection.itemKey_) List<PostmanItems> item,
      @JsonKey(name: PostmanCollection.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanCollection.variableKey_)
      PostmanVariableList? variable,
      @JsonKey(name: PostmanCollection.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection():
        return $default(
          _that.info,
          _that.item,
          _that.event,
          _that.variable,
          _that.auth,
          _that.protocolProfileBehavior,
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
      @JsonKey(name: PostmanCollection.infoKey_) PostmanInfo info,
      @JsonKey(name: PostmanCollection.itemKey_) List<PostmanItems> item,
      @JsonKey(name: PostmanCollection.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanCollection.variableKey_)
      PostmanVariableList? variable,
      @JsonKey(name: PostmanCollection.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanCollection() when $default != null:
        return $default(
          _that.info,
          _that.item,
          _that.event,
          _that.variable,
          _that.auth,
          _that.protocolProfileBehavior,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanCollection extends PostmanCollection {
  const _PostmanCollection({
    @JsonKey(name: PostmanCollection.infoKey_) required this.info,
    @JsonKey(name: PostmanCollection.itemKey_) required List<PostmanItems> item,
    @JsonKey(name: PostmanCollection.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanCollection.variableKey_)
    PostmanVariableList? variable,
    @JsonKey(name: PostmanCollection.authKey_) this.auth,
    @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  }) : _item = item,
       _event = event,
       _variable = variable,
       _protocolProfileBehavior = protocolProfileBehavior,
       super._();
  factory _PostmanCollection.fromJson(Map<String, dynamic> json) =>
      _$PostmanCollectionFromJson(json);

  /// info
  @override
  @JsonKey(name: PostmanCollection.infoKey_)
  final PostmanInfo info;

  /// item
  final List<PostmanItems> _item;

  /// item
  @override
  @JsonKey(name: PostmanCollection.itemKey_)
  List<PostmanItems> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  /// event
  final PostmanEventList? _event;

  /// event
  @override
  @JsonKey(name: PostmanCollection.eventKey_)
  PostmanEventList? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// variable
  final PostmanVariableList? _variable;

  /// variable
  @override
  @JsonKey(name: PostmanCollection.variableKey_)
  PostmanVariableList? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// auth
  @override
  @JsonKey(name: PostmanCollection.authKey_)
  final PostmanAuth? auth;

  /// protocolProfileBehavior
  final PostmanProtocolProfileBehavior? _protocolProfileBehavior;

  /// protocolProfileBehavior
  @override
  @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
  PostmanProtocolProfileBehavior? get protocolProfileBehavior {
    final value = _protocolProfileBehavior;
    if (value == null) return null;
    if (_protocolProfileBehavior is EqualUnmodifiableMapView)
      return _protocolProfileBehavior;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanCollectionCopyWith<_PostmanCollection> get copyWith =>
      __$PostmanCollectionCopyWithImpl<_PostmanCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanCollectionToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanCollection &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other.item, _item) &&
            const DeepCollectionEquality().equals(other.event, _event) &&
            const DeepCollectionEquality().equals(other.variable, _variable) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _protocolProfileBehavior,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      info,
      const DeepCollectionEquality().hash(_item),
      const DeepCollectionEquality().hash(_event),
      const DeepCollectionEquality().hash(_variable),
      auth,
      const DeepCollectionEquality().hash(_protocolProfileBehavior),
    );
  }

  @override
  String toString() {
    return 'PostmanCollection(info: $info, item: $item, event: $event, variable: $variable, auth: $auth, protocolProfileBehavior: $protocolProfileBehavior)';
  }
}

/// @nodoc
abstract mixin class _$PostmanCollectionCopyWith<$Res>
    implements $PostmanCollectionCopyWith<$Res> {
  factory _$PostmanCollectionCopyWith(
    _PostmanCollection value,
    $Res Function(_PostmanCollection) _then,
  ) = __$PostmanCollectionCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanCollection.infoKey_) PostmanInfo info,
    @JsonKey(name: PostmanCollection.itemKey_) List<PostmanItems> item,
    @JsonKey(name: PostmanCollection.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanCollection.variableKey_)
    PostmanVariableList? variable,
    @JsonKey(name: PostmanCollection.authKey_) PostmanAuth? auth,
    @JsonKey(name: PostmanCollection.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  });

  @override
  $PostmanInfoCopyWith<$Res> get info;
  @override
  $PostmanAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$PostmanCollectionCopyWithImpl<$Res>
    implements _$PostmanCollectionCopyWith<$Res> {
  __$PostmanCollectionCopyWithImpl(this._self, this._then);

  final _PostmanCollection _self;
  final $Res Function(_PostmanCollection) _then;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? info = null,
    Object? item = null,
    Object? event = freezed,
    Object? variable = freezed,
    Object? auth = freezed,
    Object? protocolProfileBehavior = freezed,
  }) {
    return _then(
      _PostmanCollection(
        info: null == info
            ? _self.info
            : info // ignore: cast_nullable_to_non_nullable
                  as PostmanInfo,
        item: null == item
            ? _self._item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanItems>,
        event: freezed == event
            ? _self._event
            : event // ignore: cast_nullable_to_non_nullable
                  as PostmanEventList?,
        variable: freezed == variable
            ? _self._variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as PostmanVariableList?,
        auth: freezed == auth
            ? _self.auth
            : auth // ignore: cast_nullable_to_non_nullable
                  as PostmanAuth?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self._protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as PostmanProtocolProfileBehavior?,
      ),
    );
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanInfoCopyWith<$Res> get info {
    return $PostmanInfoCopyWith<$Res>(_self.info, (value) {
      return _then(_self.copyWith(info: value));
    });
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanAuthCopyWith<$Res>? get auth {
    if (_self.auth == null) {
      return null;
    }

    return $PostmanAuthCopyWith<$Res>(_self.auth!, (value) {
      return _then(_self.copyWith(auth: value));
    });
  }
}
