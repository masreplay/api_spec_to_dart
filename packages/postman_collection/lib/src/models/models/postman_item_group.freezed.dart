// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_item_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanItemGroup {
  /// name
  @JsonKey(name: PostmanItemGroup.nameKey_)
  String? get name;

  /// description
  @JsonKey(name: PostmanItemGroup.descriptionKey_)
  PostmanDescription? get description;

  /// variable
  @JsonKey(name: PostmanItemGroup.variableKey_)
  PostmanVariableList? get variable;

  /// item
  @JsonKey(name: PostmanItemGroup.itemKey_)
  List<PostmanItems> get item;

  /// event
  @JsonKey(name: PostmanItemGroup.eventKey_)
  PostmanEventList? get event;

  /// auth
  @JsonKey(name: PostmanItemGroup.authKey_)
  PostmanAuth? get auth;

  /// protocolProfileBehavior
  @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
  PostmanProtocolProfileBehavior? get protocolProfileBehavior;

  /// Create a copy of PostmanItemGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanItemGroupCopyWith<PostmanItemGroup> get copyWith =>
      _$PostmanItemGroupCopyWithImpl<PostmanItemGroup>(
        this as PostmanItemGroup,
        _$identity,
      );

  /// Serializes this PostmanItemGroup to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanItemGroup;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanItemGroup &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            const DeepCollectionEquality().equals(
              other.variable,
              _this.variable,
            ) &&
            const DeepCollectionEquality().equals(other.item, _this.item) &&
            const DeepCollectionEquality().equals(other.event, _this.event) &&
            (identical(other.auth, _this.auth) || other.auth == _this.auth) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _this.protocolProfileBehavior,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanItemGroup;
    return Object.hash(
      runtimeType,
      _this.name,
      _this.description,
      const DeepCollectionEquality().hash(_this.variable),
      const DeepCollectionEquality().hash(_this.item),
      const DeepCollectionEquality().hash(_this.event),
      _this.auth,
      const DeepCollectionEquality().hash(_this.protocolProfileBehavior),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanItemGroup;
    return 'PostmanItemGroup(name: ${_this.name}, description: ${_this.description}, variable: ${_this.variable}, item: ${_this.item}, event: ${_this.event}, auth: ${_this.auth}, protocolProfileBehavior: ${_this.protocolProfileBehavior})';
  }
}

/// @nodoc
abstract mixin class $PostmanItemGroupCopyWith<$Res> {
  factory $PostmanItemGroupCopyWith(
    PostmanItemGroup value,
    $Res Function(PostmanItemGroup) _then,
  ) = _$PostmanItemGroupCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanItemGroup.nameKey_) String? name,
    @JsonKey(name: PostmanItemGroup.descriptionKey_)
    PostmanDescription? description,
    @JsonKey(name: PostmanItemGroup.variableKey_) PostmanVariableList? variable,
    @JsonKey(name: PostmanItemGroup.itemKey_) List<PostmanItems> item,
    @JsonKey(name: PostmanItemGroup.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanItemGroup.authKey_) PostmanAuth? auth,
    @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  });

  $PostmanAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class _$PostmanItemGroupCopyWithImpl<$Res>
    implements $PostmanItemGroupCopyWith<$Res> {
  _$PostmanItemGroupCopyWithImpl(this._self, this._then);

  final PostmanItemGroup _self;
  final $Res Function(PostmanItemGroup) _then;

  /// Create a copy of PostmanItemGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? variable = freezed,
    Object? item = null,
    Object? event = freezed,
    Object? auth = freezed,
    Object? protocolProfileBehavior = freezed,
  }) {
    return _then(
      PostmanItemGroup(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        variable: freezed == variable
            ? _self.variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as PostmanVariableList?,
        item: null == item
            ? _self.item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanItems>,
        event: freezed == event
            ? _self.event
            : event // ignore: cast_nullable_to_non_nullable
                  as PostmanEventList?,
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

  /// Create a copy of PostmanItemGroup
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

/// Adds pattern-matching-related methods to [PostmanItemGroup].
extension PostmanItemGroupPatterns on PostmanItemGroup {
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
    TResult Function(_PostmanItemGroup value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanItemGroup() when $default != null:
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
    TResult Function(_PostmanItemGroup value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItemGroup():
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
    TResult? Function(_PostmanItemGroup value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItemGroup() when $default != null:
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
      @JsonKey(name: PostmanItemGroup.nameKey_) String? name,
      @JsonKey(name: PostmanItemGroup.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanItemGroup.variableKey_)
      PostmanVariableList? variable,
      @JsonKey(name: PostmanItemGroup.itemKey_) List<PostmanItems> item,
      @JsonKey(name: PostmanItemGroup.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanItemGroup.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanItemGroup() when $default != null:
        return $default(
          _that.name,
          _that.description,
          _that.variable,
          _that.item,
          _that.event,
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
      @JsonKey(name: PostmanItemGroup.nameKey_) String? name,
      @JsonKey(name: PostmanItemGroup.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanItemGroup.variableKey_)
      PostmanVariableList? variable,
      @JsonKey(name: PostmanItemGroup.itemKey_) List<PostmanItems> item,
      @JsonKey(name: PostmanItemGroup.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanItemGroup.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItemGroup():
        return $default(
          _that.name,
          _that.description,
          _that.variable,
          _that.item,
          _that.event,
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
      @JsonKey(name: PostmanItemGroup.nameKey_) String? name,
      @JsonKey(name: PostmanItemGroup.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanItemGroup.variableKey_)
      PostmanVariableList? variable,
      @JsonKey(name: PostmanItemGroup.itemKey_) List<PostmanItems> item,
      @JsonKey(name: PostmanItemGroup.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanItemGroup.authKey_) PostmanAuth? auth,
      @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItemGroup() when $default != null:
        return $default(
          _that.name,
          _that.description,
          _that.variable,
          _that.item,
          _that.event,
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
class _PostmanItemGroup extends PostmanItemGroup {
  const _PostmanItemGroup({
    @JsonKey(name: PostmanItemGroup.nameKey_) this.name,
    @JsonKey(name: PostmanItemGroup.descriptionKey_) this.description,
    @JsonKey(name: PostmanItemGroup.variableKey_) PostmanVariableList? variable,
    @JsonKey(name: PostmanItemGroup.itemKey_) required List<PostmanItems> item,
    @JsonKey(name: PostmanItemGroup.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanItemGroup.authKey_) this.auth,
    @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  }) : _variable = variable,
       _item = item,
       _event = event,
       _protocolProfileBehavior = protocolProfileBehavior,
       super._();
  factory _PostmanItemGroup.fromJson(Map<String, dynamic> json) =>
      _$PostmanItemGroupFromJson(json);

  /// name
  @override
  @JsonKey(name: PostmanItemGroup.nameKey_)
  final String? name;

  /// description
  @override
  @JsonKey(name: PostmanItemGroup.descriptionKey_)
  final PostmanDescription? description;

  /// variable
  final PostmanVariableList? _variable;

  /// variable
  @override
  @JsonKey(name: PostmanItemGroup.variableKey_)
  PostmanVariableList? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// item
  final List<PostmanItems> _item;

  /// item
  @override
  @JsonKey(name: PostmanItemGroup.itemKey_)
  List<PostmanItems> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  /// event
  final PostmanEventList? _event;

  /// event
  @override
  @JsonKey(name: PostmanItemGroup.eventKey_)
  PostmanEventList? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// auth
  @override
  @JsonKey(name: PostmanItemGroup.authKey_)
  final PostmanAuth? auth;

  /// protocolProfileBehavior
  final PostmanProtocolProfileBehavior? _protocolProfileBehavior;

  /// protocolProfileBehavior
  @override
  @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
  PostmanProtocolProfileBehavior? get protocolProfileBehavior {
    final value = _protocolProfileBehavior;
    if (value == null) return null;
    if (_protocolProfileBehavior is EqualUnmodifiableMapView)
      return _protocolProfileBehavior;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PostmanItemGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanItemGroupCopyWith<_PostmanItemGroup> get copyWith =>
      __$PostmanItemGroupCopyWithImpl<_PostmanItemGroup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanItemGroupToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanItemGroup &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.variable, _variable) &&
            const DeepCollectionEquality().equals(other.item, _item) &&
            const DeepCollectionEquality().equals(other.event, _event) &&
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
      name,
      description,
      const DeepCollectionEquality().hash(_variable),
      const DeepCollectionEquality().hash(_item),
      const DeepCollectionEquality().hash(_event),
      auth,
      const DeepCollectionEquality().hash(_protocolProfileBehavior),
    );
  }

  @override
  String toString() {
    return 'PostmanItemGroup(name: $name, description: $description, variable: $variable, item: $item, event: $event, auth: $auth, protocolProfileBehavior: $protocolProfileBehavior)';
  }
}

/// @nodoc
abstract mixin class _$PostmanItemGroupCopyWith<$Res>
    implements $PostmanItemGroupCopyWith<$Res> {
  factory _$PostmanItemGroupCopyWith(
    _PostmanItemGroup value,
    $Res Function(_PostmanItemGroup) _then,
  ) = __$PostmanItemGroupCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanItemGroup.nameKey_) String? name,
    @JsonKey(name: PostmanItemGroup.descriptionKey_)
    PostmanDescription? description,
    @JsonKey(name: PostmanItemGroup.variableKey_) PostmanVariableList? variable,
    @JsonKey(name: PostmanItemGroup.itemKey_) List<PostmanItems> item,
    @JsonKey(name: PostmanItemGroup.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanItemGroup.authKey_) PostmanAuth? auth,
    @JsonKey(name: PostmanItemGroup.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  });

  @override
  $PostmanAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$PostmanItemGroupCopyWithImpl<$Res>
    implements _$PostmanItemGroupCopyWith<$Res> {
  __$PostmanItemGroupCopyWithImpl(this._self, this._then);

  final _PostmanItemGroup _self;
  final $Res Function(_PostmanItemGroup) _then;

  /// Create a copy of PostmanItemGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? variable = freezed,
    Object? item = null,
    Object? event = freezed,
    Object? auth = freezed,
    Object? protocolProfileBehavior = freezed,
  }) {
    return _then(
      _PostmanItemGroup(
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        variable: freezed == variable
            ? _self._variable
            : variable // ignore: cast_nullable_to_non_nullable
                  as PostmanVariableList?,
        item: null == item
            ? _self._item
            : item // ignore: cast_nullable_to_non_nullable
                  as List<PostmanItems>,
        event: freezed == event
            ? _self._event
            : event // ignore: cast_nullable_to_non_nullable
                  as PostmanEventList?,
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

  /// Create a copy of PostmanItemGroup
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
