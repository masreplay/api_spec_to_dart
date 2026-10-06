// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_request_object_value_body_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanRequestObjectValueBodyFile {
  /// src
  @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_)
  String? get src;

  /// content
  @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
  String? get content;

  /// Create a copy of PostmanRequestObjectValueBodyFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanRequestObjectValueBodyFileCopyWith<PostmanRequestObjectValueBodyFile>
  get copyWith =>
      _$PostmanRequestObjectValueBodyFileCopyWithImpl<
        PostmanRequestObjectValueBodyFile
      >(this as PostmanRequestObjectValueBodyFile, _$identity);

  /// Serializes this PostmanRequestObjectValueBodyFile to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanRequestObjectValueBodyFile;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanRequestObjectValueBodyFile &&
            (identical(other.src, _this.src) || other.src == _this.src) &&
            (identical(other.content, _this.content) ||
                other.content == _this.content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanRequestObjectValueBodyFile;
    return Object.hash(runtimeType, _this.src, _this.content);
  }

  @override
  String toString() {
    final _this = this as PostmanRequestObjectValueBodyFile;
    return 'PostmanRequestObjectValueBodyFile(src: ${_this.src}, content: ${_this.content})';
  }
}

/// @nodoc
abstract mixin class $PostmanRequestObjectValueBodyFileCopyWith<$Res> {
  factory $PostmanRequestObjectValueBodyFileCopyWith(
    PostmanRequestObjectValueBodyFile value,
    $Res Function(PostmanRequestObjectValueBodyFile) _then,
  ) = _$PostmanRequestObjectValueBodyFileCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_) String? src,
    @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
    String? content,
  });
}

/// @nodoc
class _$PostmanRequestObjectValueBodyFileCopyWithImpl<$Res>
    implements $PostmanRequestObjectValueBodyFileCopyWith<$Res> {
  _$PostmanRequestObjectValueBodyFileCopyWithImpl(this._self, this._then);

  final PostmanRequestObjectValueBodyFile _self;
  final $Res Function(PostmanRequestObjectValueBodyFile) _then;

  /// Create a copy of PostmanRequestObjectValueBodyFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? src = freezed, Object? content = freezed}) {
    return _then(
      PostmanRequestObjectValueBodyFile(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String?,
        content: freezed == content
            ? _self.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanRequestObjectValueBodyFile].
extension PostmanRequestObjectValueBodyFilePatterns
    on PostmanRequestObjectValueBodyFile {
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
    TResult Function(_PostmanRequestObjectValueBodyFile value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBodyFile() when $default != null:
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
    TResult Function(_PostmanRequestObjectValueBodyFile value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBodyFile():
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
    TResult? Function(_PostmanRequestObjectValueBodyFile value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBodyFile() when $default != null:
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
      @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_) String? src,
      @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
      String? content,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBodyFile() when $default != null:
        return $default(_that.src, _that.content);
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
      @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_) String? src,
      @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
      String? content,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBodyFile():
        return $default(_that.src, _that.content);
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
      @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_) String? src,
      @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
      String? content,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanRequestObjectValueBodyFile() when $default != null:
        return $default(_that.src, _that.content);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanRequestObjectValueBodyFile
    extends PostmanRequestObjectValueBodyFile {
  const _PostmanRequestObjectValueBodyFile({
    @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_) this.src,
    @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_) this.content,
  }) : super._();
  factory _PostmanRequestObjectValueBodyFile.fromJson(
    Map<String, dynamic> json,
  ) => _$PostmanRequestObjectValueBodyFileFromJson(json);

  /// src
  @override
  @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_)
  final String? src;

  /// content
  @override
  @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
  final String? content;

  /// Create a copy of PostmanRequestObjectValueBodyFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanRequestObjectValueBodyFileCopyWith<
    _PostmanRequestObjectValueBodyFile
  >
  get copyWith =>
      __$PostmanRequestObjectValueBodyFileCopyWithImpl<
        _PostmanRequestObjectValueBodyFile
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanRequestObjectValueBodyFileToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanRequestObjectValueBodyFile &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(runtimeType, src, content);
  }

  @override
  String toString() {
    return 'PostmanRequestObjectValueBodyFile(src: $src, content: $content)';
  }
}

/// @nodoc
abstract mixin class _$PostmanRequestObjectValueBodyFileCopyWith<$Res>
    implements $PostmanRequestObjectValueBodyFileCopyWith<$Res> {
  factory _$PostmanRequestObjectValueBodyFileCopyWith(
    _PostmanRequestObjectValueBodyFile value,
    $Res Function(_PostmanRequestObjectValueBodyFile) _then,
  ) = __$PostmanRequestObjectValueBodyFileCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanRequestObjectValueBodyFile.srcKey_) String? src,
    @JsonKey(name: PostmanRequestObjectValueBodyFile.contentKey_)
    String? content,
  });
}

/// @nodoc
class __$PostmanRequestObjectValueBodyFileCopyWithImpl<$Res>
    implements _$PostmanRequestObjectValueBodyFileCopyWith<$Res> {
  __$PostmanRequestObjectValueBodyFileCopyWithImpl(this._self, this._then);

  final _PostmanRequestObjectValueBodyFile _self;
  final $Res Function(_PostmanRequestObjectValueBodyFile) _then;

  /// Create a copy of PostmanRequestObjectValueBodyFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? src = freezed, Object? content = freezed}) {
    return _then(
      _PostmanRequestObjectValueBodyFile(
        src: freezed == src
            ? _self.src
            : src // ignore: cast_nullable_to_non_nullable
                  as String?,
        content: freezed == content
            ? _self.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}
