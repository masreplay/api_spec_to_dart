// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostmanAuth {
  /// type
  @JsonKey(name: PostmanAuth.typeKey_)
  PostmanAuthType get type;

  /// noauth
  @JsonKey(name: PostmanAuth.noauthKey_)
  dynamic get noauth;

  /// apikey
  @JsonKey(name: PostmanAuth.apikeyKey_)
  List<PostmanAuthAttribute>? get apikey;

  /// awsv4
  @JsonKey(name: PostmanAuth.awsv4Key_)
  List<PostmanAuthAttribute>? get awsv4;

  /// basic
  @JsonKey(name: PostmanAuth.basicKey_)
  List<PostmanAuthAttribute>? get basic;

  /// bearer
  @JsonKey(name: PostmanAuth.bearerKey_)
  List<PostmanAuthAttribute>? get bearer;

  /// digest
  @JsonKey(name: PostmanAuth.digestKey_)
  List<PostmanAuthAttribute>? get digest;

  /// edgegrid
  @JsonKey(name: PostmanAuth.edgegridKey_)
  List<PostmanAuthAttribute>? get edgegrid;

  /// hawk
  @JsonKey(name: PostmanAuth.hawkKey_)
  List<PostmanAuthAttribute>? get hawk;

  /// ntlm
  @JsonKey(name: PostmanAuth.ntlmKey_)
  List<PostmanAuthAttribute>? get ntlm;

  /// oauth1
  @JsonKey(name: PostmanAuth.oauth1Key_)
  List<PostmanAuthAttribute>? get oauth1;

  /// oauth2
  @JsonKey(name: PostmanAuth.oauth2Key_)
  List<PostmanAuthAttribute>? get oauth2;

  /// Create a copy of PostmanAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostmanAuthCopyWith<PostmanAuth> get copyWith =>
      _$PostmanAuthCopyWithImpl<PostmanAuth>(this as PostmanAuth, _$identity);

  /// Serializes this PostmanAuth to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    final _this = this as PostmanAuth;
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostmanAuth &&
            (identical(other.type, _this.type) || other.type == _this.type) &&
            const DeepCollectionEquality().equals(other.noauth, _this.noauth) &&
            const DeepCollectionEquality().equals(other.apikey, _this.apikey) &&
            const DeepCollectionEquality().equals(other.awsv4, _this.awsv4) &&
            const DeepCollectionEquality().equals(other.basic, _this.basic) &&
            const DeepCollectionEquality().equals(other.bearer, _this.bearer) &&
            const DeepCollectionEquality().equals(other.digest, _this.digest) &&
            const DeepCollectionEquality().equals(
              other.edgegrid,
              _this.edgegrid,
            ) &&
            const DeepCollectionEquality().equals(other.hawk, _this.hawk) &&
            const DeepCollectionEquality().equals(other.ntlm, _this.ntlm) &&
            const DeepCollectionEquality().equals(other.oauth1, _this.oauth1) &&
            const DeepCollectionEquality().equals(other.oauth2, _this.oauth2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    final _this = this as PostmanAuth;
    return Object.hash(
      runtimeType,
      _this.type,
      const DeepCollectionEquality().hash(_this.noauth),
      const DeepCollectionEquality().hash(_this.apikey),
      const DeepCollectionEquality().hash(_this.awsv4),
      const DeepCollectionEquality().hash(_this.basic),
      const DeepCollectionEquality().hash(_this.bearer),
      const DeepCollectionEquality().hash(_this.digest),
      const DeepCollectionEquality().hash(_this.edgegrid),
      const DeepCollectionEquality().hash(_this.hawk),
      const DeepCollectionEquality().hash(_this.ntlm),
      const DeepCollectionEquality().hash(_this.oauth1),
      const DeepCollectionEquality().hash(_this.oauth2),
    );
  }

  @override
  String toString() {
    final _this = this as PostmanAuth;
    return 'PostmanAuth(type: ${_this.type}, noauth: ${_this.noauth}, apikey: ${_this.apikey}, awsv4: ${_this.awsv4}, basic: ${_this.basic}, bearer: ${_this.bearer}, digest: ${_this.digest}, edgegrid: ${_this.edgegrid}, hawk: ${_this.hawk}, ntlm: ${_this.ntlm}, oauth1: ${_this.oauth1}, oauth2: ${_this.oauth2})';
  }
}

/// @nodoc
abstract mixin class $PostmanAuthCopyWith<$Res> {
  factory $PostmanAuthCopyWith(
    PostmanAuth value,
    $Res Function(PostmanAuth) _then,
  ) = _$PostmanAuthCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: PostmanAuth.typeKey_) PostmanAuthType type,
    @JsonKey(name: PostmanAuth.noauthKey_) dynamic noauth,
    @JsonKey(name: PostmanAuth.apikeyKey_) List<PostmanAuthAttribute>? apikey,
    @JsonKey(name: PostmanAuth.awsv4Key_) List<PostmanAuthAttribute>? awsv4,
    @JsonKey(name: PostmanAuth.basicKey_) List<PostmanAuthAttribute>? basic,
    @JsonKey(name: PostmanAuth.bearerKey_) List<PostmanAuthAttribute>? bearer,
    @JsonKey(name: PostmanAuth.digestKey_) List<PostmanAuthAttribute>? digest,
    @JsonKey(name: PostmanAuth.edgegridKey_)
    List<PostmanAuthAttribute>? edgegrid,
    @JsonKey(name: PostmanAuth.hawkKey_) List<PostmanAuthAttribute>? hawk,
    @JsonKey(name: PostmanAuth.ntlmKey_) List<PostmanAuthAttribute>? ntlm,
    @JsonKey(name: PostmanAuth.oauth1Key_) List<PostmanAuthAttribute>? oauth1,
    @JsonKey(name: PostmanAuth.oauth2Key_) List<PostmanAuthAttribute>? oauth2,
  });
}

/// @nodoc
class _$PostmanAuthCopyWithImpl<$Res> implements $PostmanAuthCopyWith<$Res> {
  _$PostmanAuthCopyWithImpl(this._self, this._then);

  final PostmanAuth _self;
  final $Res Function(PostmanAuth) _then;

  /// Create a copy of PostmanAuth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? noauth = freezed,
    Object? apikey = freezed,
    Object? awsv4 = freezed,
    Object? basic = freezed,
    Object? bearer = freezed,
    Object? digest = freezed,
    Object? edgegrid = freezed,
    Object? hawk = freezed,
    Object? ntlm = freezed,
    Object? oauth1 = freezed,
    Object? oauth2 = freezed,
  }) {
    return _then(
      PostmanAuth(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanAuthType,
        noauth: freezed == noauth
            ? _self.noauth
            : noauth // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        apikey: freezed == apikey
            ? _self.apikey
            : apikey // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        awsv4: freezed == awsv4
            ? _self.awsv4
            : awsv4 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        basic: freezed == basic
            ? _self.basic
            : basic // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        bearer: freezed == bearer
            ? _self.bearer
            : bearer // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        digest: freezed == digest
            ? _self.digest
            : digest // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        edgegrid: freezed == edgegrid
            ? _self.edgegrid
            : edgegrid // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        hawk: freezed == hawk
            ? _self.hawk
            : hawk // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        ntlm: freezed == ntlm
            ? _self.ntlm
            : ntlm // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        oauth1: freezed == oauth1
            ? _self.oauth1
            : oauth1 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        oauth2: freezed == oauth2
            ? _self.oauth2
            : oauth2 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
      ),
    );
  }
}

/// Adds pattern-matching-related methods to [PostmanAuth].
extension PostmanAuthPatterns on PostmanAuth {
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
    TResult Function(_PostmanAuth value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanAuth() when $default != null:
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
    TResult Function(_PostmanAuth value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuth():
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
    TResult? Function(_PostmanAuth value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuth() when $default != null:
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
      @JsonKey(name: PostmanAuth.typeKey_) PostmanAuthType type,
      @JsonKey(name: PostmanAuth.noauthKey_) dynamic noauth,
      @JsonKey(name: PostmanAuth.apikeyKey_) List<PostmanAuthAttribute>? apikey,
      @JsonKey(name: PostmanAuth.awsv4Key_) List<PostmanAuthAttribute>? awsv4,
      @JsonKey(name: PostmanAuth.basicKey_) List<PostmanAuthAttribute>? basic,
      @JsonKey(name: PostmanAuth.bearerKey_) List<PostmanAuthAttribute>? bearer,
      @JsonKey(name: PostmanAuth.digestKey_) List<PostmanAuthAttribute>? digest,
      @JsonKey(name: PostmanAuth.edgegridKey_)
      List<PostmanAuthAttribute>? edgegrid,
      @JsonKey(name: PostmanAuth.hawkKey_) List<PostmanAuthAttribute>? hawk,
      @JsonKey(name: PostmanAuth.ntlmKey_) List<PostmanAuthAttribute>? ntlm,
      @JsonKey(name: PostmanAuth.oauth1Key_) List<PostmanAuthAttribute>? oauth1,
      @JsonKey(name: PostmanAuth.oauth2Key_) List<PostmanAuthAttribute>? oauth2,
    )?
    $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PostmanAuth() when $default != null:
        return $default(
          _that.type,
          _that.noauth,
          _that.apikey,
          _that.awsv4,
          _that.basic,
          _that.bearer,
          _that.digest,
          _that.edgegrid,
          _that.hawk,
          _that.ntlm,
          _that.oauth1,
          _that.oauth2,
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
      @JsonKey(name: PostmanAuth.typeKey_) PostmanAuthType type,
      @JsonKey(name: PostmanAuth.noauthKey_) dynamic noauth,
      @JsonKey(name: PostmanAuth.apikeyKey_) List<PostmanAuthAttribute>? apikey,
      @JsonKey(name: PostmanAuth.awsv4Key_) List<PostmanAuthAttribute>? awsv4,
      @JsonKey(name: PostmanAuth.basicKey_) List<PostmanAuthAttribute>? basic,
      @JsonKey(name: PostmanAuth.bearerKey_) List<PostmanAuthAttribute>? bearer,
      @JsonKey(name: PostmanAuth.digestKey_) List<PostmanAuthAttribute>? digest,
      @JsonKey(name: PostmanAuth.edgegridKey_)
      List<PostmanAuthAttribute>? edgegrid,
      @JsonKey(name: PostmanAuth.hawkKey_) List<PostmanAuthAttribute>? hawk,
      @JsonKey(name: PostmanAuth.ntlmKey_) List<PostmanAuthAttribute>? ntlm,
      @JsonKey(name: PostmanAuth.oauth1Key_) List<PostmanAuthAttribute>? oauth1,
      @JsonKey(name: PostmanAuth.oauth2Key_) List<PostmanAuthAttribute>? oauth2,
    )
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuth():
        return $default(
          _that.type,
          _that.noauth,
          _that.apikey,
          _that.awsv4,
          _that.basic,
          _that.bearer,
          _that.digest,
          _that.edgegrid,
          _that.hawk,
          _that.ntlm,
          _that.oauth1,
          _that.oauth2,
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
      @JsonKey(name: PostmanAuth.typeKey_) PostmanAuthType type,
      @JsonKey(name: PostmanAuth.noauthKey_) dynamic noauth,
      @JsonKey(name: PostmanAuth.apikeyKey_) List<PostmanAuthAttribute>? apikey,
      @JsonKey(name: PostmanAuth.awsv4Key_) List<PostmanAuthAttribute>? awsv4,
      @JsonKey(name: PostmanAuth.basicKey_) List<PostmanAuthAttribute>? basic,
      @JsonKey(name: PostmanAuth.bearerKey_) List<PostmanAuthAttribute>? bearer,
      @JsonKey(name: PostmanAuth.digestKey_) List<PostmanAuthAttribute>? digest,
      @JsonKey(name: PostmanAuth.edgegridKey_)
      List<PostmanAuthAttribute>? edgegrid,
      @JsonKey(name: PostmanAuth.hawkKey_) List<PostmanAuthAttribute>? hawk,
      @JsonKey(name: PostmanAuth.ntlmKey_) List<PostmanAuthAttribute>? ntlm,
      @JsonKey(name: PostmanAuth.oauth1Key_) List<PostmanAuthAttribute>? oauth1,
      @JsonKey(name: PostmanAuth.oauth2Key_) List<PostmanAuthAttribute>? oauth2,
    )?
    $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PostmanAuth() when $default != null:
        return $default(
          _that.type,
          _that.noauth,
          _that.apikey,
          _that.awsv4,
          _that.basic,
          _that.bearer,
          _that.digest,
          _that.edgegrid,
          _that.hawk,
          _that.ntlm,
          _that.oauth1,
          _that.oauth2,
        );
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _PostmanAuth extends PostmanAuth {
  const _PostmanAuth({
    @JsonKey(name: PostmanAuth.typeKey_) required this.type,
    @JsonKey(name: PostmanAuth.noauthKey_) this.noauth,
    @JsonKey(name: PostmanAuth.apikeyKey_) List<PostmanAuthAttribute>? apikey,
    @JsonKey(name: PostmanAuth.awsv4Key_) List<PostmanAuthAttribute>? awsv4,
    @JsonKey(name: PostmanAuth.basicKey_) List<PostmanAuthAttribute>? basic,
    @JsonKey(name: PostmanAuth.bearerKey_) List<PostmanAuthAttribute>? bearer,
    @JsonKey(name: PostmanAuth.digestKey_) List<PostmanAuthAttribute>? digest,
    @JsonKey(name: PostmanAuth.edgegridKey_)
    List<PostmanAuthAttribute>? edgegrid,
    @JsonKey(name: PostmanAuth.hawkKey_) List<PostmanAuthAttribute>? hawk,
    @JsonKey(name: PostmanAuth.ntlmKey_) List<PostmanAuthAttribute>? ntlm,
    @JsonKey(name: PostmanAuth.oauth1Key_) List<PostmanAuthAttribute>? oauth1,
    @JsonKey(name: PostmanAuth.oauth2Key_) List<PostmanAuthAttribute>? oauth2,
  }) : _apikey = apikey,
       _awsv4 = awsv4,
       _basic = basic,
       _bearer = bearer,
       _digest = digest,
       _edgegrid = edgegrid,
       _hawk = hawk,
       _ntlm = ntlm,
       _oauth1 = oauth1,
       _oauth2 = oauth2,
       super._();
  factory _PostmanAuth.fromJson(Map<String, dynamic> json) =>
      _$PostmanAuthFromJson(json);

  /// type
  @override
  @JsonKey(name: PostmanAuth.typeKey_)
  final PostmanAuthType type;

  /// noauth
  @override
  @JsonKey(name: PostmanAuth.noauthKey_)
  final dynamic noauth;

  /// apikey
  final List<PostmanAuthAttribute>? _apikey;

  /// apikey
  @override
  @JsonKey(name: PostmanAuth.apikeyKey_)
  List<PostmanAuthAttribute>? get apikey {
    final value = _apikey;
    if (value == null) return null;
    if (_apikey is EqualUnmodifiableListView) return _apikey;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// awsv4
  final List<PostmanAuthAttribute>? _awsv4;

  /// awsv4
  @override
  @JsonKey(name: PostmanAuth.awsv4Key_)
  List<PostmanAuthAttribute>? get awsv4 {
    final value = _awsv4;
    if (value == null) return null;
    if (_awsv4 is EqualUnmodifiableListView) return _awsv4;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// basic
  final List<PostmanAuthAttribute>? _basic;

  /// basic
  @override
  @JsonKey(name: PostmanAuth.basicKey_)
  List<PostmanAuthAttribute>? get basic {
    final value = _basic;
    if (value == null) return null;
    if (_basic is EqualUnmodifiableListView) return _basic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// bearer
  final List<PostmanAuthAttribute>? _bearer;

  /// bearer
  @override
  @JsonKey(name: PostmanAuth.bearerKey_)
  List<PostmanAuthAttribute>? get bearer {
    final value = _bearer;
    if (value == null) return null;
    if (_bearer is EqualUnmodifiableListView) return _bearer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// digest
  final List<PostmanAuthAttribute>? _digest;

  /// digest
  @override
  @JsonKey(name: PostmanAuth.digestKey_)
  List<PostmanAuthAttribute>? get digest {
    final value = _digest;
    if (value == null) return null;
    if (_digest is EqualUnmodifiableListView) return _digest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// edgegrid
  final List<PostmanAuthAttribute>? _edgegrid;

  /// edgegrid
  @override
  @JsonKey(name: PostmanAuth.edgegridKey_)
  List<PostmanAuthAttribute>? get edgegrid {
    final value = _edgegrid;
    if (value == null) return null;
    if (_edgegrid is EqualUnmodifiableListView) return _edgegrid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// hawk
  final List<PostmanAuthAttribute>? _hawk;

  /// hawk
  @override
  @JsonKey(name: PostmanAuth.hawkKey_)
  List<PostmanAuthAttribute>? get hawk {
    final value = _hawk;
    if (value == null) return null;
    if (_hawk is EqualUnmodifiableListView) return _hawk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// ntlm
  final List<PostmanAuthAttribute>? _ntlm;

  /// ntlm
  @override
  @JsonKey(name: PostmanAuth.ntlmKey_)
  List<PostmanAuthAttribute>? get ntlm {
    final value = _ntlm;
    if (value == null) return null;
    if (_ntlm is EqualUnmodifiableListView) return _ntlm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// oauth1
  final List<PostmanAuthAttribute>? _oauth1;

  /// oauth1
  @override
  @JsonKey(name: PostmanAuth.oauth1Key_)
  List<PostmanAuthAttribute>? get oauth1 {
    final value = _oauth1;
    if (value == null) return null;
    if (_oauth1 is EqualUnmodifiableListView) return _oauth1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// oauth2
  final List<PostmanAuthAttribute>? _oauth2;

  /// oauth2
  @override
  @JsonKey(name: PostmanAuth.oauth2Key_)
  List<PostmanAuthAttribute>? get oauth2 {
    final value = _oauth2;
    if (value == null) return null;
    if (_oauth2 is EqualUnmodifiableListView) return _oauth2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PostmanAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostmanAuthCopyWith<_PostmanAuth> get copyWith =>
      __$PostmanAuthCopyWithImpl<_PostmanAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostmanAuthToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostmanAuth &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.noauth, noauth) &&
            const DeepCollectionEquality().equals(other.apikey, _apikey) &&
            const DeepCollectionEquality().equals(other.awsv4, _awsv4) &&
            const DeepCollectionEquality().equals(other.basic, _basic) &&
            const DeepCollectionEquality().equals(other.bearer, _bearer) &&
            const DeepCollectionEquality().equals(other.digest, _digest) &&
            const DeepCollectionEquality().equals(other.edgegrid, _edgegrid) &&
            const DeepCollectionEquality().equals(other.hawk, _hawk) &&
            const DeepCollectionEquality().equals(other.ntlm, _ntlm) &&
            const DeepCollectionEquality().equals(other.oauth1, _oauth1) &&
            const DeepCollectionEquality().equals(other.oauth2, _oauth2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(noauth),
      const DeepCollectionEquality().hash(_apikey),
      const DeepCollectionEquality().hash(_awsv4),
      const DeepCollectionEquality().hash(_basic),
      const DeepCollectionEquality().hash(_bearer),
      const DeepCollectionEquality().hash(_digest),
      const DeepCollectionEquality().hash(_edgegrid),
      const DeepCollectionEquality().hash(_hawk),
      const DeepCollectionEquality().hash(_ntlm),
      const DeepCollectionEquality().hash(_oauth1),
      const DeepCollectionEquality().hash(_oauth2),
    );
  }

  @override
  String toString() {
    return 'PostmanAuth(type: $type, noauth: $noauth, apikey: $apikey, awsv4: $awsv4, basic: $basic, bearer: $bearer, digest: $digest, edgegrid: $edgegrid, hawk: $hawk, ntlm: $ntlm, oauth1: $oauth1, oauth2: $oauth2)';
  }
}

/// @nodoc
abstract mixin class _$PostmanAuthCopyWith<$Res>
    implements $PostmanAuthCopyWith<$Res> {
  factory _$PostmanAuthCopyWith(
    _PostmanAuth value,
    $Res Function(_PostmanAuth) _then,
  ) = __$PostmanAuthCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: PostmanAuth.typeKey_) PostmanAuthType type,
    @JsonKey(name: PostmanAuth.noauthKey_) dynamic noauth,
    @JsonKey(name: PostmanAuth.apikeyKey_) List<PostmanAuthAttribute>? apikey,
    @JsonKey(name: PostmanAuth.awsv4Key_) List<PostmanAuthAttribute>? awsv4,
    @JsonKey(name: PostmanAuth.basicKey_) List<PostmanAuthAttribute>? basic,
    @JsonKey(name: PostmanAuth.bearerKey_) List<PostmanAuthAttribute>? bearer,
    @JsonKey(name: PostmanAuth.digestKey_) List<PostmanAuthAttribute>? digest,
    @JsonKey(name: PostmanAuth.edgegridKey_)
    List<PostmanAuthAttribute>? edgegrid,
    @JsonKey(name: PostmanAuth.hawkKey_) List<PostmanAuthAttribute>? hawk,
    @JsonKey(name: PostmanAuth.ntlmKey_) List<PostmanAuthAttribute>? ntlm,
    @JsonKey(name: PostmanAuth.oauth1Key_) List<PostmanAuthAttribute>? oauth1,
    @JsonKey(name: PostmanAuth.oauth2Key_) List<PostmanAuthAttribute>? oauth2,
  });
}

/// @nodoc
class __$PostmanAuthCopyWithImpl<$Res> implements _$PostmanAuthCopyWith<$Res> {
  __$PostmanAuthCopyWithImpl(this._self, this._then);

  final _PostmanAuth _self;
  final $Res Function(_PostmanAuth) _then;

  /// Create a copy of PostmanAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? noauth = freezed,
    Object? apikey = freezed,
    Object? awsv4 = freezed,
    Object? basic = freezed,
    Object? bearer = freezed,
    Object? digest = freezed,
    Object? edgegrid = freezed,
    Object? hawk = freezed,
    Object? ntlm = freezed,
    Object? oauth1 = freezed,
    Object? oauth2 = freezed,
  }) {
    return _then(
      _PostmanAuth(
        type: null == type
            ? _self.type
            : type // ignore: cast_nullable_to_non_nullable
                  as PostmanAuthType,
        noauth: freezed == noauth
            ? _self.noauth
            : noauth // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        apikey: freezed == apikey
            ? _self._apikey
            : apikey // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        awsv4: freezed == awsv4
            ? _self._awsv4
            : awsv4 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        basic: freezed == basic
            ? _self._basic
            : basic // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        bearer: freezed == bearer
            ? _self._bearer
            : bearer // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        digest: freezed == digest
            ? _self._digest
            : digest // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        edgegrid: freezed == edgegrid
            ? _self._edgegrid
            : edgegrid // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        hawk: freezed == hawk
            ? _self._hawk
            : hawk // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        ntlm: freezed == ntlm
            ? _self._ntlm
            : ntlm // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        oauth1: freezed == oauth1
            ? _self._oauth1
            : oauth1 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
        oauth2: freezed == oauth2
            ? _self._oauth2
            : oauth2 // ignore: cast_nullable_to_non_nullable
                  as List<PostmanAuthAttribute>?,
      ),
    );
  }
}
