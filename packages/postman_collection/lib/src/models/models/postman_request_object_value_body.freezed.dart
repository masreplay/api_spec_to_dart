// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_request_object_value_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanRequestObjectValueBody {
  /// mode
  @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
  PostmanRequestObjectValueBodyMode? get mode;

  /// raw
  @JsonKey(name: PostmanRequestObjectValueBody.rawKey_)
  String? get raw;

  /// graphql
  @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
  Map<String, dynamic>? get graphql;

  /// urlencoded
  @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
  List<PostmanUrlEncodedParameter>? get urlencoded;

  /// formdata
  @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
  List<PostmanFormParameter>? get formdata;

  /// file
  @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
  PostmanRequestObjectValueBodyFile? get file;

  /// options
  @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
  Map<String, dynamic>? get options;

  /// disabled
  @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_)
  bool get disabled;

  /// Create a copy of PostmanRequestObjectValueBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanRequestObjectValueBodyCopyWith<PostmanRequestObjectValueBody>
  get copyWith =>
      _$PostmanRequestObjectValueBodyCopyWithImpl<
        PostmanRequestObjectValueBody
      >(this as PostmanRequestObjectValueBody, _$identity);

  /// Serializes this PostmanRequestObjectValueBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanRequestObjectValueBody;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanRequestObjectValueBody &&
            (identical(other.mode, _this.mode) || other.mode == _this.mode) &&
            (identical(other.raw, _this.raw) || other.raw == _this.raw) &&
            const DeepCollectionEquality().equals(
              other.graphql,
              _this.graphql,
            ) &&
            const DeepCollectionEquality().equals(
              other.urlencoded,
              _this.urlencoded,
            ) &&
            const DeepCollectionEquality().equals(
              other.formdata,
              _this.formdata,
            ) &&
            (identical(other.file, _this.file) || other.file == _this.file) &&
            const DeepCollectionEquality().equals(
              other.options,
              _this.options,
            ) &&
            (identical(other.disabled, _this.disabled) ||
                other.disabled == _this.disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanRequestObjectValueBody;
    return Object.hash(
      runtimeType,
      _this.mode,
      _this.raw,
      const DeepCollectionEquality().hash(_this.graphql),
      const DeepCollectionEquality().hash(_this.urlencoded),
      const DeepCollectionEquality().hash(_this.formdata),
      _this.file,
      const DeepCollectionEquality().hash(_this.options),
      _this.disabled,
    );
  }

  @override
  String toString() {
    final _this = this as PostmanRequestObjectValueBody;
    return 'PostmanRequestObjectValueBody(mode: ${_this.mode}, raw: ${_this.raw}, graphql: ${_this.graphql}, urlencoded: ${_this.urlencoded}, formdata: ${_this.formdata}, file: ${_this.file}, options: ${_this.options}, disabled: ${_this.disabled})';
  }
}

/// @nodoc
abstract mixin class $PostmanRequestObjectValueBodyCopyWith<$Res> {
  factory $PostmanRequestObjectValueBodyCopyWith(
    PostmanRequestObjectValueBody value,
    $Res Function(PostmanRequestObjectValueBody) _then,
  ) = _$PostmanRequestObjectValueBodyCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
    PostmanRequestObjectValueBodyMode? mode,
    @JsonKey(name: PostmanRequestObjectValueBody.rawKey_) String? raw,
    @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
    Map<String, dynamic>? graphql,
    @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
    List<PostmanUrlEncodedParameter>? urlencoded,
    @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
    List<PostmanFormParameter>? formdata,
    @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
    PostmanRequestObjectValueBodyFile? file,
    @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
    Map<String, dynamic>? options,
    @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_) bool disabled,
  });

  $PostmanRequestObjectValueBodyFileCopyWith<$Res>? get file;
}

/// @nodoc
class _$PostmanRequestObjectValueBodyCopyWithImpl<$Res>
    implements $PostmanRequestObjectValueBodyCopyWith<$Res> {
  _$PostmanRequestObjectValueBodyCopyWithImpl(this._self, this._then);

  final PostmanRequestObjectValueBody _self;
  final $Res Function(PostmanRequestObjectValueBody) _then;

  /// Create a copy of PostmanRequestObjectValueBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = freezed,
    Object? raw = freezed,
    Object? graphql = freezed,
    Object? urlencoded = freezed,
    Object? formdata = freezed,
    Object? file = freezed,
    Object? options = freezed,
    Object? disabled = null,
  }) {
    return _then(
      PostmanRequestObjectValueBody(
        mode: freezed == mode
            ? _self.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueBodyMode?,
        raw: freezed == raw
            ? _self.raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as String?,
        graphql: freezed == graphql
            ? _self.graphql
            : graphql // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        urlencoded: freezed == urlencoded
            ? _self.urlencoded
            : urlencoded // ignore: cast_nullable_to_non_nullable
                  as List<PostmanUrlEncodedParameter>?,
        formdata: freezed == formdata
            ? _self.formdata
            : formdata // ignore: cast_nullable_to_non_nullable
                  as List<PostmanFormParameter>?,
        file: freezed == file
            ? _self.file
            : file // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueBodyFile?,
        options: freezed == options
            ? _self.options
            : options // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of PostmanRequestObjectValueBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanRequestObjectValueBodyFileCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $PostmanRequestObjectValueBodyFileCopyWith<$Res>(_self.file!, (
      value,
    ) {
      return _then(_self.copyWith(file: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PostmanRequestObjectValueBody].
extension PostmanRequestObjectValueBodyPatterns
    on PostmanRequestObjectValueBody {
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
    TResult Function(_PostmanRequestObjectValueBody value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBody() when $default != null:
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
    TResult Function(_PostmanRequestObjectValueBody value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBody():
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
    TResult? Function(_PostmanRequestObjectValueBody value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBody() when $default != null:
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
      @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
      PostmanRequestObjectValueBodyMode? mode,
      @JsonKey(name: PostmanRequestObjectValueBody.rawKey_) String? raw,
      @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
      Map<String, dynamic>? graphql,
      @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
      List<PostmanUrlEncodedParameter>? urlencoded,
      @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
      List<PostmanFormParameter>? formdata,
      @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
      PostmanRequestObjectValueBodyFile? file,
      @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
      Map<String, dynamic>? options,
      @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_) bool disabled,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBody() when $default != null:
        return $default(
          _that.mode,
          _that.raw,
          _that.graphql,
          _that.urlencoded,
          _that.formdata,
          _that.file,
          _that.options,
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
      @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
      PostmanRequestObjectValueBodyMode? mode,
      @JsonKey(name: PostmanRequestObjectValueBody.rawKey_) String? raw,
      @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
      Map<String, dynamic>? graphql,
      @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
      List<PostmanUrlEncodedParameter>? urlencoded,
      @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
      List<PostmanFormParameter>? formdata,
      @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
      PostmanRequestObjectValueBodyFile? file,
      @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
      Map<String, dynamic>? options,
      @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_) bool disabled,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBody():
        return $default(
          _that.mode,
          _that.raw,
          _that.graphql,
          _that.urlencoded,
          _that.formdata,
          _that.file,
          _that.options,
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
      @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
      PostmanRequestObjectValueBodyMode? mode,
      @JsonKey(name: PostmanRequestObjectValueBody.rawKey_) String? raw,
      @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
      Map<String, dynamic>? graphql,
      @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
      List<PostmanUrlEncodedParameter>? urlencoded,
      @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
      List<PostmanFormParameter>? formdata,
      @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
      PostmanRequestObjectValueBodyFile? file,
      @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
      Map<String, dynamic>? options,
      @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_) bool disabled,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBody() when $default != null:
        return $default(
          _that.mode,
          _that.raw,
          _that.graphql,
          _that.urlencoded,
          _that.formdata,
          _that.file,
          _that.options,
          _that.disabled,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanRequestObjectValueBody extends PostmanRequestObjectValueBody {
  const _PostmanRequestObjectValueBody({
    @JsonKey(name: PostmanRequestObjectValueBody.modeKey_) this.mode,
    @JsonKey(name: PostmanRequestObjectValueBody.rawKey_) this.raw,
    @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
    Map<String, dynamic>? graphql,
    @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
    List<PostmanUrlEncodedParameter>? urlencoded,
    @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
    List<PostmanFormParameter>? formdata,
    @JsonKey(name: PostmanRequestObjectValueBody.fileKey_) this.file,
    @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
    Map<String, dynamic>? options,
    @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_)
    this.disabled = false,
  }) : _graphql = graphql,
       _urlencoded = urlencoded,
       _formdata = formdata,
       _options = options,
       super._();
  factory _PostmanRequestObjectValueBody.fromJson(Map<String, dynamic> json) =>
      _$PostmanRequestObjectValueBodyFromJson(json);

  /// mode
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
  final PostmanRequestObjectValueBodyMode? mode;

  /// raw
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.rawKey_)
  final String? raw;

  /// graphql
  final Map<String, dynamic>? _graphql;

  /// graphql
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
  Map<String, dynamic>? get graphql {
    final value = _graphql;
    if (value == null) return null;
    if (_graphql is EqualUnmodifiableMapView) return _graphql;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// urlencoded
  final List<PostmanUrlEncodedParameter>? _urlencoded;

  /// urlencoded
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
  List<PostmanUrlEncodedParameter>? get urlencoded {
    final value = _urlencoded;
    if (value == null) return null;
    if (_urlencoded is EqualUnmodifiableListView) return _urlencoded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// formdata
  final List<PostmanFormParameter>? _formdata;

  /// formdata
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
  List<PostmanFormParameter>? get formdata {
    final value = _formdata;
    if (value == null) return null;
    if (_formdata is EqualUnmodifiableListView) return _formdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// file
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
  final PostmanRequestObjectValueBodyFile? file;

  /// options
  final Map<String, dynamic>? _options;

  /// options
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
  Map<String, dynamic>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// disabled
  @override
  @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_)
  final bool disabled;

  /// Create a copy of PostmanRequestObjectValueBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanRequestObjectValueBodyCopyWith<_PostmanRequestObjectValueBody>
  get copyWith =>
      __$PostmanRequestObjectValueBodyCopyWithImpl<
        _PostmanRequestObjectValueBody
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanRequestObjectValueBodyToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanRequestObjectValueBody &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.raw, raw) || other.raw == raw) &&
            const DeepCollectionEquality().equals(other.graphql, _graphql) &&
            const DeepCollectionEquality().equals(
              other.urlencoded,
              _urlencoded,
            ) &&
            const DeepCollectionEquality().equals(other.formdata, _formdata) &&
            (identical(other.file, file) || other.file == file) &&
            const DeepCollectionEquality().equals(other.options, _options) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      mode,
      raw,
      const DeepCollectionEquality().hash(_graphql),
      const DeepCollectionEquality().hash(_urlencoded),
      const DeepCollectionEquality().hash(_formdata),
      file,
      const DeepCollectionEquality().hash(_options),
      disabled,
    );
  }

  @override
  String toString() {
    return 'PostmanRequestObjectValueBody(mode: $mode, raw: $raw, graphql: $graphql, urlencoded: $urlencoded, formdata: $formdata, file: $file, options: $options, disabled: $disabled)';
  }
}

/// @nodoc
abstract mixin class _$PostmanRequestObjectValueBodyCopyWith<$Res>
    implements $PostmanRequestObjectValueBodyCopyWith<$Res> {
  factory _$PostmanRequestObjectValueBodyCopyWith(
    _PostmanRequestObjectValueBody value,
    $Res Function(_PostmanRequestObjectValueBody) _then,
  ) = __$PostmanRequestObjectValueBodyCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanRequestObjectValueBody.modeKey_)
    PostmanRequestObjectValueBodyMode? mode,
    @JsonKey(name: PostmanRequestObjectValueBody.rawKey_) String? raw,
    @JsonKey(name: PostmanRequestObjectValueBody.graphqlKey_)
    Map<String, dynamic>? graphql,
    @JsonKey(name: PostmanRequestObjectValueBody.urlencodedKey_)
    List<PostmanUrlEncodedParameter>? urlencoded,
    @JsonKey(name: PostmanRequestObjectValueBody.formdataKey_)
    List<PostmanFormParameter>? formdata,
    @JsonKey(name: PostmanRequestObjectValueBody.fileKey_)
    PostmanRequestObjectValueBodyFile? file,
    @JsonKey(name: PostmanRequestObjectValueBody.optionsKey_)
    Map<String, dynamic>? options,
    @JsonKey(name: PostmanRequestObjectValueBody.disabledKey_) bool disabled,
  });

  @override
  $PostmanRequestObjectValueBodyFileCopyWith<$Res>? get file;
}

/// @nodoc
class __$PostmanRequestObjectValueBodyCopyWithImpl<$Res>
    implements _$PostmanRequestObjectValueBodyCopyWith<$Res> {
  __$PostmanRequestObjectValueBodyCopyWithImpl(this._self, this._then);

  final _PostmanRequestObjectValueBody _self;
  final $Res Function(_PostmanRequestObjectValueBody) _then;

  /// Create a copy of PostmanRequestObjectValueBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mode = freezed,
    Object? raw = freezed,
    Object? graphql = freezed,
    Object? urlencoded = freezed,
    Object? formdata = freezed,
    Object? file = freezed,
    Object? options = freezed,
    Object? disabled = null,
  }) {
    return _then(
      _PostmanRequestObjectValueBody(
        mode: freezed == mode
            ? _self.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueBodyMode?,
        raw: freezed == raw
            ? _self.raw
            : raw // ignore: cast_nullable_to_non_nullable
                  as String?,
        graphql: freezed == graphql
            ? _self._graphql
            : graphql // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        urlencoded: freezed == urlencoded
            ? _self._urlencoded
            : urlencoded // ignore: cast_nullable_to_non_nullable
                  as List<PostmanUrlEncodedParameter>?,
        formdata: freezed == formdata
            ? _self._formdata
            : formdata // ignore: cast_nullable_to_non_nullable
                  as List<PostmanFormParameter>?,
        file: freezed == file
            ? _self.file
            : file // ignore: cast_nullable_to_non_nullable
                  as PostmanRequestObjectValueBodyFile?,
        options: freezed == options
            ? _self._options
            : options // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        disabled: null == disabled
            ? _self.disabled
            : disabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }

  /// Create a copy of PostmanRequestObjectValueBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanRequestObjectValueBodyFileCopyWith<$Res>? get file {
    if (_self.file == null) {
      return null;
    }

    return $PostmanRequestObjectValueBodyFileCopyWith<$Res>(_self.file!, (
      value,
    ) {
      return _then(_self.copyWith(file: value));
    });
  }
}
