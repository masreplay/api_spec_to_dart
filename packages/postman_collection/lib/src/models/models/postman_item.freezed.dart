// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanItem {
  /// id
  @JsonKey(name: PostmanItem.idKey_)
  String? get id;

  /// name
  @JsonKey(name: PostmanItem.nameKey_)
  String? get name;

  /// description
  @JsonKey(name: PostmanItem.descriptionKey_)
  PostmanDescription? get description;

  /// variable
  @JsonKey(name: PostmanItem.variableKey_)
  PostmanVariableList? get variable;

  /// event
  @JsonKey(name: PostmanItem.eventKey_)
  PostmanEventList? get event;

  /// request
  @JsonKey(name: PostmanItem.requestKey_)
  PostmanRequest get request;

  /// response
  @JsonKey(name: PostmanItem.responseKey_)
  List<PostmanResponse>? get response;

  /// protocolProfileBehavior
  @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
  PostmanProtocolProfileBehavior? get protocolProfileBehavior;

  /// Create a copy of PostmanItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanItemCopyWith<PostmanItem> get copyWith =>
      _$PostmanItemCopyWithImpl<PostmanItem>(this as PostmanItem, _$identity);

  /// Serializes this PostmanItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanItem;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanItem &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            const DeepCollectionEquality().equals(
              other.variable,
              _this.variable,
            ) &&
            const DeepCollectionEquality().equals(other.event, _this.event) &&
            (identical(other.request, _this.request) ||
                other.request == _this.request) &&
            const DeepCollectionEquality().equals(
              other.response,
              _this.response,
            ) &&
            const DeepCollectionEquality().equals(
              other.protocolProfileBehavior,
              _this.protocolProfileBehavior,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanItem;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.name,
      _this.description,
      const DeepCollectionEquality().hash(_this.variable),
      const DeepCollectionEquality().hash(_this.event),
      _this.request,
      const DeepCollectionEquality().hash(_this.response),
      const DeepCollectionEquality().hash(_this.protocolProfileBehavior),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanItem;
    return 'PostmanItem(id: ${_this.id}, name: ${_this.name}, description: ${_this.description}, variable: ${_this.variable}, event: ${_this.event}, request: ${_this.request}, response: ${_this.response}, protocolProfileBehavior: ${_this.protocolProfileBehavior})';
  }
}

/// @nodoc
abstract mixin class $PostmanItemCopyWith<$Res> {
  factory $PostmanItemCopyWith(
    PostmanItem value,
    $Res Function(PostmanItem) _then,
  ) = _$PostmanItemCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanItem.idKey_) String? id,
    @JsonKey(name: PostmanItem.nameKey_) String? name,
    @JsonKey(name: PostmanItem.descriptionKey_) PostmanDescription? description,
    @JsonKey(name: PostmanItem.variableKey_) PostmanVariableList? variable,
    @JsonKey(name: PostmanItem.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanItem.requestKey_) PostmanRequest request,
    @JsonKey(name: PostmanItem.responseKey_) List<PostmanResponse>? response,
    @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  });
}

/// @nodoc
class _$PostmanItemCopyWithImpl<$Res> implements $PostmanItemCopyWith<$Res> {
  _$PostmanItemCopyWithImpl(this._self, this._then);

  final PostmanItem _self;
  final $Res Function(PostmanItem) _then;

  /// Create a copy of PostmanItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? variable = freezed,
    Object? event = freezed,
    Object? request = null,
    Object? response = freezed,
    Object? protocolProfileBehavior = freezed,
  }) {
    return _then(
      PostmanItem(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        event: freezed == event
            ? _self.event
            : event // ignore: cast_nullable_to_non_nullable
                  as PostmanEventList?,
        request: null == request
            ? _self.request
            : request // ignore: cast_nullable_to_non_nullable
                  as PostmanRequest,
        response: freezed == response
            ? _self.response
            : response // ignore: cast_nullable_to_non_nullable
                  as List<PostmanResponse>?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self.protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as PostmanProtocolProfileBehavior?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanItem].
extension PostmanItemPatterns on PostmanItem {
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
    TResult Function(_PostmanItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanItem() when $default != null:
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
    TResult Function(_PostmanItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItem():
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
    TResult? Function(_PostmanItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItem() when $default != null:
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
      @JsonKey(name: PostmanItem.idKey_) String? id,
      @JsonKey(name: PostmanItem.nameKey_) String? name,
      @JsonKey(name: PostmanItem.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanItem.variableKey_) PostmanVariableList? variable,
      @JsonKey(name: PostmanItem.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanItem.requestKey_) PostmanRequest request,
      @JsonKey(name: PostmanItem.responseKey_) List<PostmanResponse>? response,
      @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanItem() when $default != null:
        return $default(
          _that.id,
          _that.name,
          _that.description,
          _that.variable,
          _that.event,
          _that.request,
          _that.response,
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
      @JsonKey(name: PostmanItem.idKey_) String? id,
      @JsonKey(name: PostmanItem.nameKey_) String? name,
      @JsonKey(name: PostmanItem.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanItem.variableKey_) PostmanVariableList? variable,
      @JsonKey(name: PostmanItem.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanItem.requestKey_) PostmanRequest request,
      @JsonKey(name: PostmanItem.responseKey_) List<PostmanResponse>? response,
      @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItem():
        return $default(
          _that.id,
          _that.name,
          _that.description,
          _that.variable,
          _that.event,
          _that.request,
          _that.response,
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
      @JsonKey(name: PostmanItem.idKey_) String? id,
      @JsonKey(name: PostmanItem.nameKey_) String? name,
      @JsonKey(name: PostmanItem.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanItem.variableKey_) PostmanVariableList? variable,
      @JsonKey(name: PostmanItem.eventKey_) PostmanEventList? event,
      @JsonKey(name: PostmanItem.requestKey_) PostmanRequest request,
      @JsonKey(name: PostmanItem.responseKey_) List<PostmanResponse>? response,
      @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
      PostmanProtocolProfileBehavior? protocolProfileBehavior,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanItem() when $default != null:
        return $default(
          _that.id,
          _that.name,
          _that.description,
          _that.variable,
          _that.event,
          _that.request,
          _that.response,
          _that.protocolProfileBehavior,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanItem extends PostmanItem {
  const _PostmanItem({
    @JsonKey(name: PostmanItem.idKey_) this.id,
    @JsonKey(name: PostmanItem.nameKey_) this.name,
    @JsonKey(name: PostmanItem.descriptionKey_) this.description,
    @JsonKey(name: PostmanItem.variableKey_) PostmanVariableList? variable,
    @JsonKey(name: PostmanItem.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanItem.requestKey_) required this.request,
    @JsonKey(name: PostmanItem.responseKey_) List<PostmanResponse>? response,
    @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  }) : _variable = variable,
       _event = event,
       _response = response,
       _protocolProfileBehavior = protocolProfileBehavior,
       super._();
  factory _PostmanItem.fromJson(Map<String, dynamic> json) =>
      _$PostmanItemFromJson(json);

  /// id
  @override
  @JsonKey(name: PostmanItem.idKey_)
  final String? id;

  /// name
  @override
  @JsonKey(name: PostmanItem.nameKey_)
  final String? name;

  /// description
  @override
  @JsonKey(name: PostmanItem.descriptionKey_)
  final PostmanDescription? description;

  /// variable
  final PostmanVariableList? _variable;

  /// variable
  @override
  @JsonKey(name: PostmanItem.variableKey_)
  PostmanVariableList? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// event
  final PostmanEventList? _event;

  /// event
  @override
  @JsonKey(name: PostmanItem.eventKey_)
  PostmanEventList? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// request
  @override
  @JsonKey(name: PostmanItem.requestKey_)
  final PostmanRequest request;

  /// response
  final List<PostmanResponse>? _response;

  /// response
  @override
  @JsonKey(name: PostmanItem.responseKey_)
  List<PostmanResponse>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// protocolProfileBehavior
  final PostmanProtocolProfileBehavior? _protocolProfileBehavior;

  /// protocolProfileBehavior
  @override
  @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
  PostmanProtocolProfileBehavior? get protocolProfileBehavior {
    final value = _protocolProfileBehavior;
    if (value == null) return null;
    if (_protocolProfileBehavior is EqualUnmodifiableMapView)
      return _protocolProfileBehavior;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PostmanItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanItemCopyWith<_PostmanItem> get copyWith =>
      __$PostmanItemCopyWithImpl<_PostmanItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanItemToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.variable, _variable) &&
            const DeepCollectionEquality().equals(other.event, _event) &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other.response, _response) &&
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
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_variable),
      const DeepCollectionEquality().hash(_event),
      request,
      const DeepCollectionEquality().hash(_response),
      const DeepCollectionEquality().hash(_protocolProfileBehavior),
    );
  }

  @override
  String toString() {
    return 'PostmanItem(id: $id, name: $name, description: $description, variable: $variable, event: $event, request: $request, response: $response, protocolProfileBehavior: $protocolProfileBehavior)';
  }
}

/// @nodoc
abstract mixin class _$PostmanItemCopyWith<$Res>
    implements $PostmanItemCopyWith<$Res> {
  factory _$PostmanItemCopyWith(
    _PostmanItem value,
    $Res Function(_PostmanItem) _then,
  ) = __$PostmanItemCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanItem.idKey_) String? id,
    @JsonKey(name: PostmanItem.nameKey_) String? name,
    @JsonKey(name: PostmanItem.descriptionKey_) PostmanDescription? description,
    @JsonKey(name: PostmanItem.variableKey_) PostmanVariableList? variable,
    @JsonKey(name: PostmanItem.eventKey_) PostmanEventList? event,
    @JsonKey(name: PostmanItem.requestKey_) PostmanRequest request,
    @JsonKey(name: PostmanItem.responseKey_) List<PostmanResponse>? response,
    @JsonKey(name: PostmanItem.protocolProfileBehaviorKey_)
    PostmanProtocolProfileBehavior? protocolProfileBehavior,
  });
}

/// @nodoc
class __$PostmanItemCopyWithImpl<$Res> implements _$PostmanItemCopyWith<$Res> {
  __$PostmanItemCopyWithImpl(this._self, this._then);

  final _PostmanItem _self;
  final $Res Function(_PostmanItem) _then;

  /// Create a copy of PostmanItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? variable = freezed,
    Object? event = freezed,
    Object? request = null,
    Object? response = freezed,
    Object? protocolProfileBehavior = freezed,
  }) {
    return _then(
      _PostmanItem(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        event: freezed == event
            ? _self._event
            : event // ignore: cast_nullable_to_non_nullable
                  as PostmanEventList?,
        request: null == request
            ? _self.request
            : request // ignore: cast_nullable_to_non_nullable
                  as PostmanRequest,
        response: freezed == response
            ? _self._response
            : response // ignore: cast_nullable_to_non_nullable
                  as List<PostmanResponse>?,
        protocolProfileBehavior: freezed == protocolProfileBehavior
            ? _self._protocolProfileBehavior
            : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
                  as PostmanProtocolProfileBehavior?,
      ),
    );
  }
}
