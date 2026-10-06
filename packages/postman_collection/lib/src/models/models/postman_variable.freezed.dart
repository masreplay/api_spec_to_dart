// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_variable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanVariable {
  /// id
  @JsonKey(name: PostmanVariable.idKey_)
  String? get id;

  /// key
  @JsonKey(name: PostmanVariable.keyKey_)
  String? get key;

  /// value
  @JsonKey(name: PostmanVariable.valueKey_)
  dynamic get value;

  /// type
  @JsonKey(name: PostmanVariable.typeKey_)
  PostmanVariableType? get type;

  /// name
  @JsonKey(name: PostmanVariable.nameKey_)
  String? get name;

  /// description
  @JsonKey(name: PostmanVariable.descriptionKey_)
  PostmanDescription? get description;

  /// system
  @JsonKey(name: PostmanVariable.systemKey_)
  bool get system;

  /// disabled
  @JsonKey(name: PostmanVariable.disabledKey_)
  bool get disabled;

  /// Create a copy of PostmanVariable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanVariableCopyWith<PostmanVariable> get copyWith =>
      _$PostmanVariableCopyWithImpl<PostmanVariable>(
        this as PostmanVariable,
        _$identity,
      );

  /// Serializes this PostmanVariable to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanVariable;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanVariable &&
            (identical(other.id, _this.id) || other.id == _this.id) &&
            (identical(other.key, _this.key) || other.key == _this.key) &&
            const DeepCollectionEquality().equals(other.value, _this.value) &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            (identical(other.name, _this.name) || other.name == _this.name) &&
            (identical(other.description, _this.description) ||
                other.description == _this.description) &&
            (identical(other.system, _this.system) ||
                other.system == _this.system) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanVariable;
    return Object.hash(
      runtimeType,
      _this.id,
      _this.key,
      const DeepCollectionEquality().hash(_this.value),
      _this.type,
      _this.name,
      _this.description,
      _this.system,
      _this.disabled,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanVariable;
    return 'PostmanVariable(id: ${_this.id}, key: ${_this.key}, value: ${_this.value}, type: ${_this.type}, name: ${_this.name}, description: ${_this.description}, system: ${_this.system}, disabled: ${_this.disabled})';
  }
}

/// @nodoc
abstract mixin class $PostmanVariableCopyWith<$Res> {
  factory $PostmanVariableCopyWith(
    PostmanVariable value,
    $Res Function(PostmanVariable) _then,
  ) = _$PostmanVariableCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanVariable.idKey_) String? id,
    @JsonKey(name: PostmanVariable.keyKey_) String? key,
    @JsonKey(name: PostmanVariable.valueKey_) dynamic value,
    @JsonKey(name: PostmanVariable.typeKey_) PostmanVariableType? type,
    @JsonKey(name: PostmanVariable.nameKey_) String? name,
    @JsonKey(name: PostmanVariable.descriptionKey_)
    PostmanDescription? description,
    @JsonKey(name: PostmanVariable.systemKey_) bool system,
    @JsonKey(name: PostmanVariable.disabledKey_) bool disabled,
  });
}

/// @nodoc
class _$PostmanVariableCopyWithImpl<$Res>
    implements $PostmanVariableCopyWith<$Res> {
  _$PostmanVariableCopyWithImpl(this._self, this._then);

  final PostmanVariable _self;
  final $Res Function(PostmanVariable) _then;

  /// Create a copy of PostmanVariable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? value = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? system = null,
    Object? disabled = null,
  }) {
    return _then(
      PostmanVariable(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanVariableType?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        system: null == system
            ? _self.system
            : system // ignore: cast_nullable_to_non_nullable
                  as bool,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanVariable].
extension PostmanVariablePatterns on PostmanVariable {
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
    TResult Function(_PostmanVariable value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanVariable() when $default != null:
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
    TResult Function(_PostmanVariable value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVariable():
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
    TResult? Function(_PostmanVariable value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVariable() when $default != null:
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
      @JsonKey(name: PostmanVariable.idKey_) String? id,
      @JsonKey(name: PostmanVariable.keyKey_) String? key,
      @JsonKey(name: PostmanVariable.valueKey_) dynamic value,
      @JsonKey(name: PostmanVariable.typeKey_) PostmanVariableType? type,
      @JsonKey(name: PostmanVariable.nameKey_) String? name,
      @JsonKey(name: PostmanVariable.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanVariable.systemKey_) bool system,
      @JsonKey(name: PostmanVariable.disabledKey_) bool disabled,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanVariable() when $default != null:
        return $default(
          _that.id,
          _that.key,
          _that.value,
          _that.type,
          _that.name,
          _that.description,
          _that.system,
          _that.disabled,
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
      @JsonKey(name: PostmanVariable.idKey_) String? id,
      @JsonKey(name: PostmanVariable.keyKey_) String? key,
      @JsonKey(name: PostmanVariable.valueKey_) dynamic value,
      @JsonKey(name: PostmanVariable.typeKey_) PostmanVariableType? type,
      @JsonKey(name: PostmanVariable.nameKey_) String? name,
      @JsonKey(name: PostmanVariable.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanVariable.systemKey_) bool system,
      @JsonKey(name: PostmanVariable.disabledKey_) bool disabled,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVariable():
        return $default(
          _that.id,
          _that.key,
          _that.value,
          _that.type,
          _that.name,
          _that.description,
          _that.system,
          _that.disabled,
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
      @JsonKey(name: PostmanVariable.idKey_) String? id,
      @JsonKey(name: PostmanVariable.keyKey_) String? key,
      @JsonKey(name: PostmanVariable.valueKey_) dynamic value,
      @JsonKey(name: PostmanVariable.typeKey_) PostmanVariableType? type,
      @JsonKey(name: PostmanVariable.nameKey_) String? name,
      @JsonKey(name: PostmanVariable.descriptionKey_)
      PostmanDescription? description,
      @JsonKey(name: PostmanVariable.systemKey_) bool system,
      @JsonKey(name: PostmanVariable.disabledKey_) bool disabled,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanVariable() when $default != null:
        return $default(
          _that.id,
          _that.key,
          _that.value,
          _that.type,
          _that.name,
          _that.description,
          _that.system,
          _that.disabled,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanVariable extends PostmanVariable {
  const _PostmanVariable({
    @JsonKey(name: PostmanVariable.idKey_) this.id,
    @JsonKey(name: PostmanVariable.keyKey_) this.key,
    @JsonKey(name: PostmanVariable.valueKey_) this.value,
    @JsonKey(name: PostmanVariable.typeKey_) this.type,
    @JsonKey(name: PostmanVariable.nameKey_) this.name,
    @JsonKey(name: PostmanVariable.descriptionKey_) this.description,
    @JsonKey(name: PostmanVariable.systemKey_) this.system = false,
    @JsonKey(name: PostmanVariable.disabledKey_) this.disabled = false,
  }) : super._();
  factory _PostmanVariable.fromJson(Map<String, dynamic> json) =>
      _$PostmanVariableFromJson(json);

  /// id
  @override
  @JsonKey(name: PostmanVariable.idKey_)
  final String? id;

  /// key
  @override
  @JsonKey(name: PostmanVariable.keyKey_)
  final String? key;

  /// value
  @override
  @JsonKey(name: PostmanVariable.valueKey_)
  final dynamic value;

  /// type
  @override
  @JsonKey(name: PostmanVariable.typeKey_)
  final PostmanVariableType? type;

  /// name
  @override
  @JsonKey(name: PostmanVariable.nameKey_)
  final String? name;

  /// description
  @override
  @JsonKey(name: PostmanVariable.descriptionKey_)
  final PostmanDescription? description;

  /// system
  @override
  @JsonKey(name: PostmanVariable.systemKey_)
  final bool system;

  /// disabled
  @override
  @JsonKey(name: PostmanVariable.disabledKey_)
  final bool disabled;

  /// Create a copy of PostmanVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanVariableCopyWith<_PostmanVariable> get copyWith =>
      __$PostmanVariableCopyWithImpl<_PostmanVariable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanVariableToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanVariable &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      id,
      key,
      const DeepCollectionEquality().hash(value),
      type,
      name,
      description,
      system,
      disabled,
    );
  }

  @override
  String toString() {
    return 'PostmanVariable(id: $id, key: $key, value: $value, type: $type, name: $name, description: $description, system: $system, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$PostmanVariableCopyWith<$Res>
    implements $PostmanVariableCopyWith<$Res> {
  factory _$PostmanVariableCopyWith(
    _PostmanVariable value,
    $Res Function(_PostmanVariable) _then,
  ) = __$PostmanVariableCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanVariable.idKey_) String? id,
    @JsonKey(name: PostmanVariable.keyKey_) String? key,
    @JsonKey(name: PostmanVariable.valueKey_) dynamic value,
    @JsonKey(name: PostmanVariable.typeKey_) PostmanVariableType? type,
    @JsonKey(name: PostmanVariable.nameKey_) String? name,
    @JsonKey(name: PostmanVariable.descriptionKey_)
    PostmanDescription? description,
    @JsonKey(name: PostmanVariable.systemKey_) bool system,
    @JsonKey(name: PostmanVariable.disabledKey_) bool disabled,
  });
}

/// @nodoc
class __$PostmanVariableCopyWithImpl<$Res>
    implements _$PostmanVariableCopyWith<$Res> {
  __$PostmanVariableCopyWithImpl(this._self, this._then);

  final _PostmanVariable _self;
  final $Res Function(_PostmanVariable) _then;

  /// Create a copy of PostmanVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? key = freezed,
    Object? value = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? system = null,
    Object? disabled = null,
  }) {
    return _then(
      _PostmanVariable(
        id: freezed == id
            ? _self.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        key: freezed == key
            ? _self.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        value: freezed == value
            ? _self.value
            : value // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        type: freezed == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanVariableType?,
        name: freezed == name
            ? _self.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _self.description
            : description // ignore: cast_nullable_to_non_nullable
                  as PostmanDescription?,
        system: null == system
            ? _self.system
            : system // ignore: cast_nullable_to_non_nullable
                  as bool,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}
