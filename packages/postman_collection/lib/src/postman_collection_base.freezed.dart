// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postman_collection_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostmanCollection _$PostmanCollectionFromJson(Map<String, dynamic> json) {
  return _PostmanCollection.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollection {
  PostmanCollectionInfo get info => throw _privateConstructorUsedError;
  List<PostmanCollectionItem> get item => throw _privateConstructorUsedError;
  PostmanCollectionAuth? get auth => throw _privateConstructorUsedError;
  List<PostmanCollectionEvent>? get event => throw _privateConstructorUsedError;
  Map<String, dynamic>? get protocolProfileBehavior =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionVariable>? get variable =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PostmanCollectionInfo info,
            List<PostmanCollectionItem> item,
            PostmanCollectionAuth? auth,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            List<PostmanCollectionVariable>? variable)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PostmanCollectionInfo info,
            List<PostmanCollectionItem> item,
            PostmanCollectionAuth? auth,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            List<PostmanCollectionVariable>? variable)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PostmanCollectionInfo info,
            List<PostmanCollectionItem> item,
            PostmanCollectionAuth? auth,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            List<PostmanCollectionVariable>? variable)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollection value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollection value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollection value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionCopyWith<PostmanCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionCopyWith<$Res> {
  factory $PostmanCollectionCopyWith(
          PostmanCollection value, $Res Function(PostmanCollection) then) =
      _$PostmanCollectionCopyWithImpl<$Res, PostmanCollection>;
  @useResult
  $Res call(
      {PostmanCollectionInfo info,
      List<PostmanCollectionItem> item,
      PostmanCollectionAuth? auth,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      List<PostmanCollectionVariable>? variable});

  $PostmanCollectionInfoCopyWith<$Res> get info;
  $PostmanCollectionAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class _$PostmanCollectionCopyWithImpl<$Res, $Val extends PostmanCollection>
    implements $PostmanCollectionCopyWith<$Res> {
  _$PostmanCollectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? item = null,
    Object? auth = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? variable = freezed,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionInfo,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionItem>,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionAuth?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionEvent>?,
      protocolProfileBehavior: freezed == protocolProfileBehavior
          ? _value.protocolProfileBehavior
          : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionVariable>?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionInfoCopyWith<$Res> get info {
    return $PostmanCollectionInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthCopyWith<$Res>? get auth {
    if (_value.auth == null) {
      return null;
    }

    return $PostmanCollectionAuthCopyWith<$Res>(_value.auth!, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionImplCopyWith<$Res>
    implements $PostmanCollectionCopyWith<$Res> {
  factory _$$PostmanCollectionImplCopyWith(_$PostmanCollectionImpl value,
          $Res Function(_$PostmanCollectionImpl) then) =
      __$$PostmanCollectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostmanCollectionInfo info,
      List<PostmanCollectionItem> item,
      PostmanCollectionAuth? auth,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      List<PostmanCollectionVariable>? variable});

  @override
  $PostmanCollectionInfoCopyWith<$Res> get info;
  @override
  $PostmanCollectionAuthCopyWith<$Res>? get auth;
}

/// @nodoc
class __$$PostmanCollectionImplCopyWithImpl<$Res>
    extends _$PostmanCollectionCopyWithImpl<$Res, _$PostmanCollectionImpl>
    implements _$$PostmanCollectionImplCopyWith<$Res> {
  __$$PostmanCollectionImplCopyWithImpl(_$PostmanCollectionImpl _value,
      $Res Function(_$PostmanCollectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? item = null,
    Object? auth = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? variable = freezed,
  }) {
    return _then(_$PostmanCollectionImpl(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionInfo,
      item: null == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionItem>,
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionAuth?,
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionEvent>?,
      protocolProfileBehavior: freezed == protocolProfileBehavior
          ? _value._protocolProfileBehavior
          : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      variable: freezed == variable
          ? _value._variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionVariable>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionImpl extends _PostmanCollection {
  const _$PostmanCollectionImpl(
      {required this.info,
      required final List<PostmanCollectionItem> item,
      this.auth,
      final List<PostmanCollectionEvent>? event,
      final Map<String, dynamic>? protocolProfileBehavior,
      final List<PostmanCollectionVariable>? variable})
      : _item = item,
        _event = event,
        _protocolProfileBehavior = protocolProfileBehavior,
        _variable = variable,
        super._();

  factory _$PostmanCollectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionImplFromJson(json);

  @override
  final PostmanCollectionInfo info;
  final List<PostmanCollectionItem> _item;
  @override
  List<PostmanCollectionItem> get item {
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_item);
  }

  @override
  final PostmanCollectionAuth? auth;
  final List<PostmanCollectionEvent>? _event;
  @override
  List<PostmanCollectionEvent>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _protocolProfileBehavior;
  @override
  Map<String, dynamic>? get protocolProfileBehavior {
    final value = _protocolProfileBehavior;
    if (value == null) return null;
    if (_protocolProfileBehavior is EqualUnmodifiableMapView)
      return _protocolProfileBehavior;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<PostmanCollectionVariable>? _variable;
  @override
  List<PostmanCollectionVariable>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostmanCollection(info: $info, item: $item, auth: $auth, event: $event, protocolProfileBehavior: $protocolProfileBehavior, variable: $variable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._item, _item) &&
            (identical(other.auth, auth) || other.auth == auth) &&
            const DeepCollectionEquality().equals(other._event, _event) &&
            const DeepCollectionEquality().equals(
                other._protocolProfileBehavior, _protocolProfileBehavior) &&
            const DeepCollectionEquality().equals(other._variable, _variable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      info,
      const DeepCollectionEquality().hash(_item),
      auth,
      const DeepCollectionEquality().hash(_event),
      const DeepCollectionEquality().hash(_protocolProfileBehavior),
      const DeepCollectionEquality().hash(_variable));

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionImplCopyWith<_$PostmanCollectionImpl> get copyWith =>
      __$$PostmanCollectionImplCopyWithImpl<_$PostmanCollectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PostmanCollectionInfo info,
            List<PostmanCollectionItem> item,
            PostmanCollectionAuth? auth,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            List<PostmanCollectionVariable>? variable)
        $default,
  ) {
    return $default(info, item, auth, event, protocolProfileBehavior, variable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PostmanCollectionInfo info,
            List<PostmanCollectionItem> item,
            PostmanCollectionAuth? auth,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            List<PostmanCollectionVariable>? variable)?
        $default,
  ) {
    return $default?.call(
        info, item, auth, event, protocolProfileBehavior, variable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PostmanCollectionInfo info,
            List<PostmanCollectionItem> item,
            PostmanCollectionAuth? auth,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            List<PostmanCollectionVariable>? variable)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          info, item, auth, event, protocolProfileBehavior, variable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollection value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollection value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollection value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollection extends PostmanCollection {
  const factory _PostmanCollection(
          {required final PostmanCollectionInfo info,
          required final List<PostmanCollectionItem> item,
          final PostmanCollectionAuth? auth,
          final List<PostmanCollectionEvent>? event,
          final Map<String, dynamic>? protocolProfileBehavior,
          final List<PostmanCollectionVariable>? variable}) =
      _$PostmanCollectionImpl;
  const _PostmanCollection._() : super._();

  factory _PostmanCollection.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionImpl.fromJson;

  @override
  PostmanCollectionInfo get info;
  @override
  List<PostmanCollectionItem> get item;
  @override
  PostmanCollectionAuth? get auth;
  @override
  List<PostmanCollectionEvent>? get event;
  @override
  Map<String, dynamic>? get protocolProfileBehavior;
  @override
  List<PostmanCollectionVariable>? get variable;

  /// Create a copy of PostmanCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionImplCopyWith<_$PostmanCollectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostmanCollectionInfo _$PostmanCollectionInfoFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionInfo.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionInfo {
  @JsonKey(name: '_postman_id')
  String? get postmanId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get schema => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  PostmanCollectionVersion? get version => throw _privateConstructorUsedError;
  @JsonKey(name: '_exporter_id')
  String? get exporterId => throw _privateConstructorUsedError;
  @JsonKey(name: '_collection_link')
  String? get collectionLink => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_postman_id') String? postmanId,
            String name,
            String schema,
            String? description,
            PostmanCollectionVersion? version,
            @JsonKey(name: '_exporter_id') String? exporterId,
            @JsonKey(name: '_collection_link') String? collectionLink)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: '_postman_id') String? postmanId,
            String name,
            String schema,
            String? description,
            PostmanCollectionVersion? version,
            @JsonKey(name: '_exporter_id') String? exporterId,
            @JsonKey(name: '_collection_link') String? collectionLink)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_postman_id') String? postmanId,
            String name,
            String schema,
            String? description,
            PostmanCollectionVersion? version,
            @JsonKey(name: '_exporter_id') String? exporterId,
            @JsonKey(name: '_collection_link') String? collectionLink)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionInfo value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionInfo value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionInfo value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionInfoCopyWith<PostmanCollectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionInfoCopyWith<$Res> {
  factory $PostmanCollectionInfoCopyWith(PostmanCollectionInfo value,
          $Res Function(PostmanCollectionInfo) then) =
      _$PostmanCollectionInfoCopyWithImpl<$Res, PostmanCollectionInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: '_postman_id') String? postmanId,
      String name,
      String schema,
      String? description,
      PostmanCollectionVersion? version,
      @JsonKey(name: '_exporter_id') String? exporterId,
      @JsonKey(name: '_collection_link') String? collectionLink});

  $PostmanCollectionVersionCopyWith<$Res>? get version;
}

/// @nodoc
class _$PostmanCollectionInfoCopyWithImpl<$Res,
        $Val extends PostmanCollectionInfo>
    implements $PostmanCollectionInfoCopyWith<$Res> {
  _$PostmanCollectionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postmanId = freezed,
    Object? name = null,
    Object? schema = null,
    Object? description = freezed,
    Object? version = freezed,
    Object? exporterId = freezed,
    Object? collectionLink = freezed,
  }) {
    return _then(_value.copyWith(
      postmanId: freezed == postmanId
          ? _value.postmanId
          : postmanId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionVersion?,
      exporterId: freezed == exporterId
          ? _value.exporterId
          : exporterId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionLink: freezed == collectionLink
          ? _value.collectionLink
          : collectionLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionVersionCopyWith<$Res>? get version {
    if (_value.version == null) {
      return null;
    }

    return $PostmanCollectionVersionCopyWith<$Res>(_value.version!, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionInfoImplCopyWith<$Res>
    implements $PostmanCollectionInfoCopyWith<$Res> {
  factory _$$PostmanCollectionInfoImplCopyWith(
          _$PostmanCollectionInfoImpl value,
          $Res Function(_$PostmanCollectionInfoImpl) then) =
      __$$PostmanCollectionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_postman_id') String? postmanId,
      String name,
      String schema,
      String? description,
      PostmanCollectionVersion? version,
      @JsonKey(name: '_exporter_id') String? exporterId,
      @JsonKey(name: '_collection_link') String? collectionLink});

  @override
  $PostmanCollectionVersionCopyWith<$Res>? get version;
}

/// @nodoc
class __$$PostmanCollectionInfoImplCopyWithImpl<$Res>
    extends _$PostmanCollectionInfoCopyWithImpl<$Res,
        _$PostmanCollectionInfoImpl>
    implements _$$PostmanCollectionInfoImplCopyWith<$Res> {
  __$$PostmanCollectionInfoImplCopyWithImpl(_$PostmanCollectionInfoImpl _value,
      $Res Function(_$PostmanCollectionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postmanId = freezed,
    Object? name = null,
    Object? schema = null,
    Object? description = freezed,
    Object? version = freezed,
    Object? exporterId = freezed,
    Object? collectionLink = freezed,
  }) {
    return _then(_$PostmanCollectionInfoImpl(
      postmanId: freezed == postmanId
          ? _value.postmanId
          : postmanId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      schema: null == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionVersion?,
      exporterId: freezed == exporterId
          ? _value.exporterId
          : exporterId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionLink: freezed == collectionLink
          ? _value.collectionLink
          : collectionLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionInfoImpl extends _PostmanCollectionInfo {
  const _$PostmanCollectionInfoImpl(
      {@JsonKey(name: '_postman_id') this.postmanId,
      required this.name,
      required this.schema,
      this.description,
      this.version,
      @JsonKey(name: '_exporter_id') this.exporterId,
      @JsonKey(name: '_collection_link') this.collectionLink})
      : super._();

  factory _$PostmanCollectionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionInfoImplFromJson(json);

  @override
  @JsonKey(name: '_postman_id')
  final String? postmanId;
  @override
  final String name;
  @override
  final String schema;
  @override
  final String? description;
  @override
  final PostmanCollectionVersion? version;
  @override
  @JsonKey(name: '_exporter_id')
  final String? exporterId;
  @override
  @JsonKey(name: '_collection_link')
  final String? collectionLink;

  @override
  String toString() {
    return 'PostmanCollectionInfo(postmanId: $postmanId, name: $name, schema: $schema, description: $description, version: $version, exporterId: $exporterId, collectionLink: $collectionLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionInfoImpl &&
            (identical(other.postmanId, postmanId) ||
                other.postmanId == postmanId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.schema, schema) || other.schema == schema) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.exporterId, exporterId) ||
                other.exporterId == exporterId) &&
            (identical(other.collectionLink, collectionLink) ||
                other.collectionLink == collectionLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, postmanId, name, schema,
      description, version, exporterId, collectionLink);

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionInfoImplCopyWith<_$PostmanCollectionInfoImpl>
      get copyWith => __$$PostmanCollectionInfoImplCopyWithImpl<
          _$PostmanCollectionInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_postman_id') String? postmanId,
            String name,
            String schema,
            String? description,
            PostmanCollectionVersion? version,
            @JsonKey(name: '_exporter_id') String? exporterId,
            @JsonKey(name: '_collection_link') String? collectionLink)
        $default,
  ) {
    return $default(postmanId, name, schema, description, version, exporterId,
        collectionLink);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: '_postman_id') String? postmanId,
            String name,
            String schema,
            String? description,
            PostmanCollectionVersion? version,
            @JsonKey(name: '_exporter_id') String? exporterId,
            @JsonKey(name: '_collection_link') String? collectionLink)?
        $default,
  ) {
    return $default?.call(postmanId, name, schema, description, version,
        exporterId, collectionLink);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: '_postman_id') String? postmanId,
            String name,
            String schema,
            String? description,
            PostmanCollectionVersion? version,
            @JsonKey(name: '_exporter_id') String? exporterId,
            @JsonKey(name: '_collection_link') String? collectionLink)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(postmanId, name, schema, description, version, exporterId,
          collectionLink);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionInfo value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionInfo value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionInfo value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionInfoImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionInfo extends PostmanCollectionInfo {
  const factory _PostmanCollectionInfo(
          {@JsonKey(name: '_postman_id') final String? postmanId,
          required final String name,
          required final String schema,
          final String? description,
          final PostmanCollectionVersion? version,
          @JsonKey(name: '_exporter_id') final String? exporterId,
          @JsonKey(name: '_collection_link') final String? collectionLink}) =
      _$PostmanCollectionInfoImpl;
  const _PostmanCollectionInfo._() : super._();

  factory _PostmanCollectionInfo.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionInfoImpl.fromJson;

  @override
  @JsonKey(name: '_postman_id')
  String? get postmanId;
  @override
  String get name;
  @override
  String get schema;
  @override
  String? get description;
  @override
  PostmanCollectionVersion? get version;
  @override
  @JsonKey(name: '_exporter_id')
  String? get exporterId;
  @override
  @JsonKey(name: '_collection_link')
  String? get collectionLink;

  /// Create a copy of PostmanCollectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionInfoImplCopyWith<_$PostmanCollectionInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionVersion _$PostmanCollectionVersionFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionVersion.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionVersion {
  int get major => throw _privateConstructorUsedError;
  int get minor => throw _privateConstructorUsedError;
  int get patch => throw _privateConstructorUsedError;
  String? get identifier => throw _privateConstructorUsedError;
  Object? get meta => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int major, int minor, int patch, String? identifier, Object? meta)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int major, int minor, int patch, String? identifier, Object? meta)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int major, int minor, int patch, String? identifier, Object? meta)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionVersion value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionVersion value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionVersion value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionVersion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionVersionCopyWith<PostmanCollectionVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionVersionCopyWith<$Res> {
  factory $PostmanCollectionVersionCopyWith(PostmanCollectionVersion value,
          $Res Function(PostmanCollectionVersion) then) =
      _$PostmanCollectionVersionCopyWithImpl<$Res, PostmanCollectionVersion>;
  @useResult
  $Res call(
      {int major, int minor, int patch, String? identifier, Object? meta});
}

/// @nodoc
class _$PostmanCollectionVersionCopyWithImpl<$Res,
        $Val extends PostmanCollectionVersion>
    implements $PostmanCollectionVersionCopyWith<$Res> {
  _$PostmanCollectionVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? identifier = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: null == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionVersionImplCopyWith<$Res>
    implements $PostmanCollectionVersionCopyWith<$Res> {
  factory _$$PostmanCollectionVersionImplCopyWith(
          _$PostmanCollectionVersionImpl value,
          $Res Function(_$PostmanCollectionVersionImpl) then) =
      __$$PostmanCollectionVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int major, int minor, int patch, String? identifier, Object? meta});
}

/// @nodoc
class __$$PostmanCollectionVersionImplCopyWithImpl<$Res>
    extends _$PostmanCollectionVersionCopyWithImpl<$Res,
        _$PostmanCollectionVersionImpl>
    implements _$$PostmanCollectionVersionImplCopyWith<$Res> {
  __$$PostmanCollectionVersionImplCopyWithImpl(
      _$PostmanCollectionVersionImpl _value,
      $Res Function(_$PostmanCollectionVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? major = null,
    Object? minor = null,
    Object? patch = null,
    Object? identifier = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$PostmanCollectionVersionImpl(
      major: null == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: null == minor
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
      patch: null == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta ? _value.meta : meta,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionVersionImpl extends _PostmanCollectionVersion {
  const _$PostmanCollectionVersionImpl(
      {required this.major,
      required this.minor,
      required this.patch,
      this.identifier,
      this.meta})
      : super._();

  factory _$PostmanCollectionVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionVersionImplFromJson(json);

  @override
  final int major;
  @override
  final int minor;
  @override
  final int patch;
  @override
  final String? identifier;
  @override
  final Object? meta;

  @override
  String toString() {
    return 'PostmanCollectionVersion(major: $major, minor: $minor, patch: $patch, identifier: $identifier, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionVersionImpl &&
            (identical(other.major, major) || other.major == major) &&
            (identical(other.minor, minor) || other.minor == minor) &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, major, minor, patch, identifier,
      const DeepCollectionEquality().hash(meta));

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionVersionImplCopyWith<_$PostmanCollectionVersionImpl>
      get copyWith => __$$PostmanCollectionVersionImplCopyWithImpl<
          _$PostmanCollectionVersionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int major, int minor, int patch, String? identifier, Object? meta)
        $default,
  ) {
    return $default(major, minor, patch, identifier, meta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int major, int minor, int patch, String? identifier, Object? meta)?
        $default,
  ) {
    return $default?.call(major, minor, patch, identifier, meta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int major, int minor, int patch, String? identifier, Object? meta)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(major, minor, patch, identifier, meta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionVersion value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionVersion value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionVersion value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionVersionImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionVersion extends PostmanCollectionVersion {
  const factory _PostmanCollectionVersion(
      {required final int major,
      required final int minor,
      required final int patch,
      final String? identifier,
      final Object? meta}) = _$PostmanCollectionVersionImpl;
  const _PostmanCollectionVersion._() : super._();

  factory _PostmanCollectionVersion.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionVersionImpl.fromJson;

  @override
  int get major;
  @override
  int get minor;
  @override
  int get patch;
  @override
  String? get identifier;
  @override
  Object? get meta;

  /// Create a copy of PostmanCollectionVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionVersionImplCopyWith<_$PostmanCollectionVersionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionItem _$PostmanCollectionItemFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionItem.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionItem {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<PostmanCollectionVariable>? get variable =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionEvent>? get event => throw _privateConstructorUsedError;
  Map<String, dynamic>? get protocolProfileBehavior =>
      throw _privateConstructorUsedError;
  PostmanCollectionRequest? get request => throw _privateConstructorUsedError;
  List<PostmanCollectionResponse>? get response =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionItem>? get item => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String name,
            String? description,
            List<PostmanCollectionVariable>? variable,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            PostmanCollectionRequest? request,
            List<PostmanCollectionResponse>? response,
            List<PostmanCollectionItem>? item)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? id,
            String name,
            String? description,
            List<PostmanCollectionVariable>? variable,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            PostmanCollectionRequest? request,
            List<PostmanCollectionResponse>? response,
            List<PostmanCollectionItem>? item)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String name,
            String? description,
            List<PostmanCollectionVariable>? variable,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            PostmanCollectionRequest? request,
            List<PostmanCollectionResponse>? response,
            List<PostmanCollectionItem>? item)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionItem value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionItem value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionItem value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionItemCopyWith<PostmanCollectionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionItemCopyWith<$Res> {
  factory $PostmanCollectionItemCopyWith(PostmanCollectionItem value,
          $Res Function(PostmanCollectionItem) then) =
      _$PostmanCollectionItemCopyWithImpl<$Res, PostmanCollectionItem>;
  @useResult
  $Res call(
      {String? id,
      String name,
      String? description,
      List<PostmanCollectionVariable>? variable,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      PostmanCollectionRequest? request,
      List<PostmanCollectionResponse>? response,
      List<PostmanCollectionItem>? item});

  $PostmanCollectionRequestCopyWith<$Res>? get request;
}

/// @nodoc
class _$PostmanCollectionItemCopyWithImpl<$Res,
        $Val extends PostmanCollectionItem>
    implements $PostmanCollectionItemCopyWith<$Res> {
  _$PostmanCollectionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? variable = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? request = freezed,
    Object? response = freezed,
    Object? item = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionVariable>?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionEvent>?,
      protocolProfileBehavior: freezed == protocolProfileBehavior
          ? _value.protocolProfileBehavior
          : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionRequest?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionResponse>?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionItem>?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestCopyWith<$Res>? get request {
    if (_value.request == null) {
      return null;
    }

    return $PostmanCollectionRequestCopyWith<$Res>(_value.request!, (value) {
      return _then(_value.copyWith(request: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionItemImplCopyWith<$Res>
    implements $PostmanCollectionItemCopyWith<$Res> {
  factory _$$PostmanCollectionItemImplCopyWith(
          _$PostmanCollectionItemImpl value,
          $Res Function(_$PostmanCollectionItemImpl) then) =
      __$$PostmanCollectionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String? description,
      List<PostmanCollectionVariable>? variable,
      List<PostmanCollectionEvent>? event,
      Map<String, dynamic>? protocolProfileBehavior,
      PostmanCollectionRequest? request,
      List<PostmanCollectionResponse>? response,
      List<PostmanCollectionItem>? item});

  @override
  $PostmanCollectionRequestCopyWith<$Res>? get request;
}

/// @nodoc
class __$$PostmanCollectionItemImplCopyWithImpl<$Res>
    extends _$PostmanCollectionItemCopyWithImpl<$Res,
        _$PostmanCollectionItemImpl>
    implements _$$PostmanCollectionItemImplCopyWith<$Res> {
  __$$PostmanCollectionItemImplCopyWithImpl(_$PostmanCollectionItemImpl _value,
      $Res Function(_$PostmanCollectionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? variable = freezed,
    Object? event = freezed,
    Object? protocolProfileBehavior = freezed,
    Object? request = freezed,
    Object? response = freezed,
    Object? item = freezed,
  }) {
    return _then(_$PostmanCollectionItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _value._variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionVariable>?,
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionEvent>?,
      protocolProfileBehavior: freezed == protocolProfileBehavior
          ? _value._protocolProfileBehavior
          : protocolProfileBehavior // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      request: freezed == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionRequest?,
      response: freezed == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionResponse>?,
      item: freezed == item
          ? _value._item
          : item // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionItemImpl extends _PostmanCollectionItem {
  const _$PostmanCollectionItemImpl(
      {this.id,
      required this.name,
      this.description,
      final List<PostmanCollectionVariable>? variable,
      final List<PostmanCollectionEvent>? event,
      final Map<String, dynamic>? protocolProfileBehavior,
      this.request,
      final List<PostmanCollectionResponse>? response,
      final List<PostmanCollectionItem>? item})
      : _variable = variable,
        _event = event,
        _protocolProfileBehavior = protocolProfileBehavior,
        _response = response,
        _item = item,
        super._();

  factory _$PostmanCollectionItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionItemImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  final List<PostmanCollectionVariable>? _variable;
  @override
  List<PostmanCollectionVariable>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionEvent>? _event;
  @override
  List<PostmanCollectionEvent>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, dynamic>? _protocolProfileBehavior;
  @override
  Map<String, dynamic>? get protocolProfileBehavior {
    final value = _protocolProfileBehavior;
    if (value == null) return null;
    if (_protocolProfileBehavior is EqualUnmodifiableMapView)
      return _protocolProfileBehavior;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final PostmanCollectionRequest? request;
  final List<PostmanCollectionResponse>? _response;
  @override
  List<PostmanCollectionResponse>? get response {
    final value = _response;
    if (value == null) return null;
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionItem>? _item;
  @override
  List<PostmanCollectionItem>? get item {
    final value = _item;
    if (value == null) return null;
    if (_item is EqualUnmodifiableListView) return _item;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostmanCollectionItem(id: $id, name: $name, description: $description, variable: $variable, event: $event, protocolProfileBehavior: $protocolProfileBehavior, request: $request, response: $response, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._variable, _variable) &&
            const DeepCollectionEquality().equals(other._event, _event) &&
            const DeepCollectionEquality().equals(
                other._protocolProfileBehavior, _protocolProfileBehavior) &&
            (identical(other.request, request) || other.request == request) &&
            const DeepCollectionEquality().equals(other._response, _response) &&
            const DeepCollectionEquality().equals(other._item, _item));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_variable),
      const DeepCollectionEquality().hash(_event),
      const DeepCollectionEquality().hash(_protocolProfileBehavior),
      request,
      const DeepCollectionEquality().hash(_response),
      const DeepCollectionEquality().hash(_item));

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionItemImplCopyWith<_$PostmanCollectionItemImpl>
      get copyWith => __$$PostmanCollectionItemImplCopyWithImpl<
          _$PostmanCollectionItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String name,
            String? description,
            List<PostmanCollectionVariable>? variable,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            PostmanCollectionRequest? request,
            List<PostmanCollectionResponse>? response,
            List<PostmanCollectionItem>? item)
        $default,
  ) {
    return $default(id, name, description, variable, event,
        protocolProfileBehavior, request, response, item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? id,
            String name,
            String? description,
            List<PostmanCollectionVariable>? variable,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            PostmanCollectionRequest? request,
            List<PostmanCollectionResponse>? response,
            List<PostmanCollectionItem>? item)?
        $default,
  ) {
    return $default?.call(id, name, description, variable, event,
        protocolProfileBehavior, request, response, item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String name,
            String? description,
            List<PostmanCollectionVariable>? variable,
            List<PostmanCollectionEvent>? event,
            Map<String, dynamic>? protocolProfileBehavior,
            PostmanCollectionRequest? request,
            List<PostmanCollectionResponse>? response,
            List<PostmanCollectionItem>? item)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, name, description, variable, event,
          protocolProfileBehavior, request, response, item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionItem value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionItem value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionItem value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionItemImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionItem extends PostmanCollectionItem {
  const factory _PostmanCollectionItem(
      {final String? id,
      required final String name,
      final String? description,
      final List<PostmanCollectionVariable>? variable,
      final List<PostmanCollectionEvent>? event,
      final Map<String, dynamic>? protocolProfileBehavior,
      final PostmanCollectionRequest? request,
      final List<PostmanCollectionResponse>? response,
      final List<PostmanCollectionItem>? item}) = _$PostmanCollectionItemImpl;
  const _PostmanCollectionItem._() : super._();

  factory _PostmanCollectionItem.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionItemImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<PostmanCollectionVariable>? get variable;
  @override
  List<PostmanCollectionEvent>? get event;
  @override
  Map<String, dynamic>? get protocolProfileBehavior;
  @override
  PostmanCollectionRequest? get request;
  @override
  List<PostmanCollectionResponse>? get response;
  @override
  List<PostmanCollectionItem>? get item;

  /// Create a copy of PostmanCollectionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionItemImplCopyWith<_$PostmanCollectionItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionAuth _$PostmanCollectionAuthFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionAuth.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionAuth {
  PostmanCollectionAuthType get type => throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get noauth =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get apikey =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get awsv4 =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get basic =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get bearer =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get digest =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get edgegrid =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get hawk =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get ntlm =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get oauth1 =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionAuthAttribute>? get oauth2 =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuthType type,
            List<PostmanCollectionAuthAttribute>? noauth,
            List<PostmanCollectionAuthAttribute>? apikey,
            List<PostmanCollectionAuthAttribute>? awsv4,
            List<PostmanCollectionAuthAttribute>? basic,
            List<PostmanCollectionAuthAttribute>? bearer,
            List<PostmanCollectionAuthAttribute>? digest,
            List<PostmanCollectionAuthAttribute>? edgegrid,
            List<PostmanCollectionAuthAttribute>? hawk,
            List<PostmanCollectionAuthAttribute>? ntlm,
            List<PostmanCollectionAuthAttribute>? oauth1,
            List<PostmanCollectionAuthAttribute>? oauth2)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PostmanCollectionAuthType type,
            List<PostmanCollectionAuthAttribute>? noauth,
            List<PostmanCollectionAuthAttribute>? apikey,
            List<PostmanCollectionAuthAttribute>? awsv4,
            List<PostmanCollectionAuthAttribute>? basic,
            List<PostmanCollectionAuthAttribute>? bearer,
            List<PostmanCollectionAuthAttribute>? digest,
            List<PostmanCollectionAuthAttribute>? edgegrid,
            List<PostmanCollectionAuthAttribute>? hawk,
            List<PostmanCollectionAuthAttribute>? ntlm,
            List<PostmanCollectionAuthAttribute>? oauth1,
            List<PostmanCollectionAuthAttribute>? oauth2)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuthType type,
            List<PostmanCollectionAuthAttribute>? noauth,
            List<PostmanCollectionAuthAttribute>? apikey,
            List<PostmanCollectionAuthAttribute>? awsv4,
            List<PostmanCollectionAuthAttribute>? basic,
            List<PostmanCollectionAuthAttribute>? bearer,
            List<PostmanCollectionAuthAttribute>? digest,
            List<PostmanCollectionAuthAttribute>? edgegrid,
            List<PostmanCollectionAuthAttribute>? hawk,
            List<PostmanCollectionAuthAttribute>? ntlm,
            List<PostmanCollectionAuthAttribute>? oauth1,
            List<PostmanCollectionAuthAttribute>? oauth2)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuth value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionAuth value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuth value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionAuth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionAuthCopyWith<PostmanCollectionAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionAuthCopyWith<$Res> {
  factory $PostmanCollectionAuthCopyWith(PostmanCollectionAuth value,
          $Res Function(PostmanCollectionAuth) then) =
      _$PostmanCollectionAuthCopyWithImpl<$Res, PostmanCollectionAuth>;
  @useResult
  $Res call(
      {PostmanCollectionAuthType type,
      List<PostmanCollectionAuthAttribute>? noauth,
      List<PostmanCollectionAuthAttribute>? apikey,
      List<PostmanCollectionAuthAttribute>? awsv4,
      List<PostmanCollectionAuthAttribute>? basic,
      List<PostmanCollectionAuthAttribute>? bearer,
      List<PostmanCollectionAuthAttribute>? digest,
      List<PostmanCollectionAuthAttribute>? edgegrid,
      List<PostmanCollectionAuthAttribute>? hawk,
      List<PostmanCollectionAuthAttribute>? ntlm,
      List<PostmanCollectionAuthAttribute>? oauth1,
      List<PostmanCollectionAuthAttribute>? oauth2});
}

/// @nodoc
class _$PostmanCollectionAuthCopyWithImpl<$Res,
        $Val extends PostmanCollectionAuth>
    implements $PostmanCollectionAuthCopyWith<$Res> {
  _$PostmanCollectionAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionAuth
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
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionAuthType,
      noauth: freezed == noauth
          ? _value.noauth
          : noauth // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      apikey: freezed == apikey
          ? _value.apikey
          : apikey // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      awsv4: freezed == awsv4
          ? _value.awsv4
          : awsv4 // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      basic: freezed == basic
          ? _value.basic
          : basic // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      bearer: freezed == bearer
          ? _value.bearer
          : bearer // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      digest: freezed == digest
          ? _value.digest
          : digest // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      edgegrid: freezed == edgegrid
          ? _value.edgegrid
          : edgegrid // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      hawk: freezed == hawk
          ? _value.hawk
          : hawk // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      ntlm: freezed == ntlm
          ? _value.ntlm
          : ntlm // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      oauth1: freezed == oauth1
          ? _value.oauth1
          : oauth1 // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      oauth2: freezed == oauth2
          ? _value.oauth2
          : oauth2 // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionAuthImplCopyWith<$Res>
    implements $PostmanCollectionAuthCopyWith<$Res> {
  factory _$$PostmanCollectionAuthImplCopyWith(
          _$PostmanCollectionAuthImpl value,
          $Res Function(_$PostmanCollectionAuthImpl) then) =
      __$$PostmanCollectionAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostmanCollectionAuthType type,
      List<PostmanCollectionAuthAttribute>? noauth,
      List<PostmanCollectionAuthAttribute>? apikey,
      List<PostmanCollectionAuthAttribute>? awsv4,
      List<PostmanCollectionAuthAttribute>? basic,
      List<PostmanCollectionAuthAttribute>? bearer,
      List<PostmanCollectionAuthAttribute>? digest,
      List<PostmanCollectionAuthAttribute>? edgegrid,
      List<PostmanCollectionAuthAttribute>? hawk,
      List<PostmanCollectionAuthAttribute>? ntlm,
      List<PostmanCollectionAuthAttribute>? oauth1,
      List<PostmanCollectionAuthAttribute>? oauth2});
}

/// @nodoc
class __$$PostmanCollectionAuthImplCopyWithImpl<$Res>
    extends _$PostmanCollectionAuthCopyWithImpl<$Res,
        _$PostmanCollectionAuthImpl>
    implements _$$PostmanCollectionAuthImplCopyWith<$Res> {
  __$$PostmanCollectionAuthImplCopyWithImpl(_$PostmanCollectionAuthImpl _value,
      $Res Function(_$PostmanCollectionAuthImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionAuth
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
    return _then(_$PostmanCollectionAuthImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionAuthType,
      noauth: freezed == noauth
          ? _value._noauth
          : noauth // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      apikey: freezed == apikey
          ? _value._apikey
          : apikey // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      awsv4: freezed == awsv4
          ? _value._awsv4
          : awsv4 // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      basic: freezed == basic
          ? _value._basic
          : basic // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      bearer: freezed == bearer
          ? _value._bearer
          : bearer // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      digest: freezed == digest
          ? _value._digest
          : digest // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      edgegrid: freezed == edgegrid
          ? _value._edgegrid
          : edgegrid // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      hawk: freezed == hawk
          ? _value._hawk
          : hawk // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      ntlm: freezed == ntlm
          ? _value._ntlm
          : ntlm // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      oauth1: freezed == oauth1
          ? _value._oauth1
          : oauth1 // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
      oauth2: freezed == oauth2
          ? _value._oauth2
          : oauth2 // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionAuthAttribute>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionAuthImpl extends _PostmanCollectionAuth {
  const _$PostmanCollectionAuthImpl(
      {required this.type,
      final List<PostmanCollectionAuthAttribute>? noauth,
      final List<PostmanCollectionAuthAttribute>? apikey,
      final List<PostmanCollectionAuthAttribute>? awsv4,
      final List<PostmanCollectionAuthAttribute>? basic,
      final List<PostmanCollectionAuthAttribute>? bearer,
      final List<PostmanCollectionAuthAttribute>? digest,
      final List<PostmanCollectionAuthAttribute>? edgegrid,
      final List<PostmanCollectionAuthAttribute>? hawk,
      final List<PostmanCollectionAuthAttribute>? ntlm,
      final List<PostmanCollectionAuthAttribute>? oauth1,
      final List<PostmanCollectionAuthAttribute>? oauth2})
      : _noauth = noauth,
        _apikey = apikey,
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

  factory _$PostmanCollectionAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionAuthImplFromJson(json);

  @override
  final PostmanCollectionAuthType type;
  final List<PostmanCollectionAuthAttribute>? _noauth;
  @override
  List<PostmanCollectionAuthAttribute>? get noauth {
    final value = _noauth;
    if (value == null) return null;
    if (_noauth is EqualUnmodifiableListView) return _noauth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _apikey;
  @override
  List<PostmanCollectionAuthAttribute>? get apikey {
    final value = _apikey;
    if (value == null) return null;
    if (_apikey is EqualUnmodifiableListView) return _apikey;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _awsv4;
  @override
  List<PostmanCollectionAuthAttribute>? get awsv4 {
    final value = _awsv4;
    if (value == null) return null;
    if (_awsv4 is EqualUnmodifiableListView) return _awsv4;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _basic;
  @override
  List<PostmanCollectionAuthAttribute>? get basic {
    final value = _basic;
    if (value == null) return null;
    if (_basic is EqualUnmodifiableListView) return _basic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _bearer;
  @override
  List<PostmanCollectionAuthAttribute>? get bearer {
    final value = _bearer;
    if (value == null) return null;
    if (_bearer is EqualUnmodifiableListView) return _bearer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _digest;
  @override
  List<PostmanCollectionAuthAttribute>? get digest {
    final value = _digest;
    if (value == null) return null;
    if (_digest is EqualUnmodifiableListView) return _digest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _edgegrid;
  @override
  List<PostmanCollectionAuthAttribute>? get edgegrid {
    final value = _edgegrid;
    if (value == null) return null;
    if (_edgegrid is EqualUnmodifiableListView) return _edgegrid;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _hawk;
  @override
  List<PostmanCollectionAuthAttribute>? get hawk {
    final value = _hawk;
    if (value == null) return null;
    if (_hawk is EqualUnmodifiableListView) return _hawk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _ntlm;
  @override
  List<PostmanCollectionAuthAttribute>? get ntlm {
    final value = _ntlm;
    if (value == null) return null;
    if (_ntlm is EqualUnmodifiableListView) return _ntlm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _oauth1;
  @override
  List<PostmanCollectionAuthAttribute>? get oauth1 {
    final value = _oauth1;
    if (value == null) return null;
    if (_oauth1 is EqualUnmodifiableListView) return _oauth1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PostmanCollectionAuthAttribute>? _oauth2;
  @override
  List<PostmanCollectionAuthAttribute>? get oauth2 {
    final value = _oauth2;
    if (value == null) return null;
    if (_oauth2 is EqualUnmodifiableListView) return _oauth2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostmanCollectionAuth(type: $type, noauth: $noauth, apikey: $apikey, awsv4: $awsv4, basic: $basic, bearer: $bearer, digest: $digest, edgegrid: $edgegrid, hawk: $hawk, ntlm: $ntlm, oauth1: $oauth1, oauth2: $oauth2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionAuthImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._noauth, _noauth) &&
            const DeepCollectionEquality().equals(other._apikey, _apikey) &&
            const DeepCollectionEquality().equals(other._awsv4, _awsv4) &&
            const DeepCollectionEquality().equals(other._basic, _basic) &&
            const DeepCollectionEquality().equals(other._bearer, _bearer) &&
            const DeepCollectionEquality().equals(other._digest, _digest) &&
            const DeepCollectionEquality().equals(other._edgegrid, _edgegrid) &&
            const DeepCollectionEquality().equals(other._hawk, _hawk) &&
            const DeepCollectionEquality().equals(other._ntlm, _ntlm) &&
            const DeepCollectionEquality().equals(other._oauth1, _oauth1) &&
            const DeepCollectionEquality().equals(other._oauth2, _oauth2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_noauth),
      const DeepCollectionEquality().hash(_apikey),
      const DeepCollectionEquality().hash(_awsv4),
      const DeepCollectionEquality().hash(_basic),
      const DeepCollectionEquality().hash(_bearer),
      const DeepCollectionEquality().hash(_digest),
      const DeepCollectionEquality().hash(_edgegrid),
      const DeepCollectionEquality().hash(_hawk),
      const DeepCollectionEquality().hash(_ntlm),
      const DeepCollectionEquality().hash(_oauth1),
      const DeepCollectionEquality().hash(_oauth2));

  /// Create a copy of PostmanCollectionAuth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionAuthImplCopyWith<_$PostmanCollectionAuthImpl>
      get copyWith => __$$PostmanCollectionAuthImplCopyWithImpl<
          _$PostmanCollectionAuthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuthType type,
            List<PostmanCollectionAuthAttribute>? noauth,
            List<PostmanCollectionAuthAttribute>? apikey,
            List<PostmanCollectionAuthAttribute>? awsv4,
            List<PostmanCollectionAuthAttribute>? basic,
            List<PostmanCollectionAuthAttribute>? bearer,
            List<PostmanCollectionAuthAttribute>? digest,
            List<PostmanCollectionAuthAttribute>? edgegrid,
            List<PostmanCollectionAuthAttribute>? hawk,
            List<PostmanCollectionAuthAttribute>? ntlm,
            List<PostmanCollectionAuthAttribute>? oauth1,
            List<PostmanCollectionAuthAttribute>? oauth2)
        $default,
  ) {
    return $default(type, noauth, apikey, awsv4, basic, bearer, digest,
        edgegrid, hawk, ntlm, oauth1, oauth2);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PostmanCollectionAuthType type,
            List<PostmanCollectionAuthAttribute>? noauth,
            List<PostmanCollectionAuthAttribute>? apikey,
            List<PostmanCollectionAuthAttribute>? awsv4,
            List<PostmanCollectionAuthAttribute>? basic,
            List<PostmanCollectionAuthAttribute>? bearer,
            List<PostmanCollectionAuthAttribute>? digest,
            List<PostmanCollectionAuthAttribute>? edgegrid,
            List<PostmanCollectionAuthAttribute>? hawk,
            List<PostmanCollectionAuthAttribute>? ntlm,
            List<PostmanCollectionAuthAttribute>? oauth1,
            List<PostmanCollectionAuthAttribute>? oauth2)?
        $default,
  ) {
    return $default?.call(type, noauth, apikey, awsv4, basic, bearer, digest,
        edgegrid, hawk, ntlm, oauth1, oauth2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuthType type,
            List<PostmanCollectionAuthAttribute>? noauth,
            List<PostmanCollectionAuthAttribute>? apikey,
            List<PostmanCollectionAuthAttribute>? awsv4,
            List<PostmanCollectionAuthAttribute>? basic,
            List<PostmanCollectionAuthAttribute>? bearer,
            List<PostmanCollectionAuthAttribute>? digest,
            List<PostmanCollectionAuthAttribute>? edgegrid,
            List<PostmanCollectionAuthAttribute>? hawk,
            List<PostmanCollectionAuthAttribute>? ntlm,
            List<PostmanCollectionAuthAttribute>? oauth1,
            List<PostmanCollectionAuthAttribute>? oauth2)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(type, noauth, apikey, awsv4, basic, bearer, digest,
          edgegrid, hawk, ntlm, oauth1, oauth2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuth value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionAuth value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuth value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionAuthImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionAuth extends PostmanCollectionAuth {
  const factory _PostmanCollectionAuth(
          {required final PostmanCollectionAuthType type,
          final List<PostmanCollectionAuthAttribute>? noauth,
          final List<PostmanCollectionAuthAttribute>? apikey,
          final List<PostmanCollectionAuthAttribute>? awsv4,
          final List<PostmanCollectionAuthAttribute>? basic,
          final List<PostmanCollectionAuthAttribute>? bearer,
          final List<PostmanCollectionAuthAttribute>? digest,
          final List<PostmanCollectionAuthAttribute>? edgegrid,
          final List<PostmanCollectionAuthAttribute>? hawk,
          final List<PostmanCollectionAuthAttribute>? ntlm,
          final List<PostmanCollectionAuthAttribute>? oauth1,
          final List<PostmanCollectionAuthAttribute>? oauth2}) =
      _$PostmanCollectionAuthImpl;
  const _PostmanCollectionAuth._() : super._();

  factory _PostmanCollectionAuth.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionAuthImpl.fromJson;

  @override
  PostmanCollectionAuthType get type;
  @override
  List<PostmanCollectionAuthAttribute>? get noauth;
  @override
  List<PostmanCollectionAuthAttribute>? get apikey;
  @override
  List<PostmanCollectionAuthAttribute>? get awsv4;
  @override
  List<PostmanCollectionAuthAttribute>? get basic;
  @override
  List<PostmanCollectionAuthAttribute>? get bearer;
  @override
  List<PostmanCollectionAuthAttribute>? get digest;
  @override
  List<PostmanCollectionAuthAttribute>? get edgegrid;
  @override
  List<PostmanCollectionAuthAttribute>? get hawk;
  @override
  List<PostmanCollectionAuthAttribute>? get ntlm;
  @override
  List<PostmanCollectionAuthAttribute>? get oauth1;
  @override
  List<PostmanCollectionAuthAttribute>? get oauth2;

  /// Create a copy of PostmanCollectionAuth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionAuthImplCopyWith<_$PostmanCollectionAuthImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionAuthAttribute _$PostmanCollectionAuthAttributeFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionAuthAttribute.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionAuthAttribute {
  String get key => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key, Object? value, String? type) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key, Object? value, String? type)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key, Object? value, String? type)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuthAttribute value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionAuthAttribute value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuthAttribute value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionAuthAttribute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionAuthAttributeCopyWith<PostmanCollectionAuthAttribute>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionAuthAttributeCopyWith<$Res> {
  factory $PostmanCollectionAuthAttributeCopyWith(
          PostmanCollectionAuthAttribute value,
          $Res Function(PostmanCollectionAuthAttribute) then) =
      _$PostmanCollectionAuthAttributeCopyWithImpl<$Res,
          PostmanCollectionAuthAttribute>;
  @useResult
  $Res call({String key, Object? value, String? type});
}

/// @nodoc
class _$PostmanCollectionAuthAttributeCopyWithImpl<$Res,
        $Val extends PostmanCollectionAuthAttribute>
    implements $PostmanCollectionAuthAttributeCopyWith<$Res> {
  _$PostmanCollectionAuthAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value ? _value.value : value,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionAuthAttributeImplCopyWith<$Res>
    implements $PostmanCollectionAuthAttributeCopyWith<$Res> {
  factory _$$PostmanCollectionAuthAttributeImplCopyWith(
          _$PostmanCollectionAuthAttributeImpl value,
          $Res Function(_$PostmanCollectionAuthAttributeImpl) then) =
      __$$PostmanCollectionAuthAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, Object? value, String? type});
}

/// @nodoc
class __$$PostmanCollectionAuthAttributeImplCopyWithImpl<$Res>
    extends _$PostmanCollectionAuthAttributeCopyWithImpl<$Res,
        _$PostmanCollectionAuthAttributeImpl>
    implements _$$PostmanCollectionAuthAttributeImplCopyWith<$Res> {
  __$$PostmanCollectionAuthAttributeImplCopyWithImpl(
      _$PostmanCollectionAuthAttributeImpl _value,
      $Res Function(_$PostmanCollectionAuthAttributeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PostmanCollectionAuthAttributeImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value ? _value.value : value,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionAuthAttributeImpl
    extends _PostmanCollectionAuthAttribute {
  const _$PostmanCollectionAuthAttributeImpl(
      {required this.key, this.value, this.type})
      : super._();

  factory _$PostmanCollectionAuthAttributeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostmanCollectionAuthAttributeImplFromJson(json);

  @override
  final String key;
  @override
  final Object? value;
  @override
  final String? type;

  @override
  String toString() {
    return 'PostmanCollectionAuthAttribute(key: $key, value: $value, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionAuthAttributeImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(value), type);

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionAuthAttributeImplCopyWith<
          _$PostmanCollectionAuthAttributeImpl>
      get copyWith => __$$PostmanCollectionAuthAttributeImplCopyWithImpl<
          _$PostmanCollectionAuthAttributeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key, Object? value, String? type) $default,
  ) {
    return $default(key, value, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key, Object? value, String? type)? $default,
  ) {
    return $default?.call(key, value, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key, Object? value, String? type)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(key, value, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuthAttribute value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionAuthAttribute value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionAuthAttribute value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionAuthAttributeImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionAuthAttribute
    extends PostmanCollectionAuthAttribute {
  const factory _PostmanCollectionAuthAttribute(
      {required final String key,
      final Object? value,
      final String? type}) = _$PostmanCollectionAuthAttributeImpl;
  const _PostmanCollectionAuthAttribute._() : super._();

  factory _PostmanCollectionAuthAttribute.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionAuthAttributeImpl.fromJson;

  @override
  String get key;
  @override
  Object? get value;
  @override
  String? get type;

  /// Create a copy of PostmanCollectionAuthAttribute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionAuthAttributeImplCopyWith<
          _$PostmanCollectionAuthAttributeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionRequest _$PostmanCollectionRequestFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionRequest.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionRequest {
  PostmanCollectionAuth? get auth => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  PostmanCollectionProxyConfig? get proxy => throw _privateConstructorUsedError;
  PostmanCollectionCertificate? get certificate =>
      throw _privateConstructorUsedError;
  List<PostmanCollectionHeader>? get header =>
      throw _privateConstructorUsedError;
  PostmanCollectionRequestMode? get body => throw _privateConstructorUsedError;
  PostmanCollectionUrl? get url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuth? auth,
            String method,
            PostmanCollectionProxyConfig? proxy,
            PostmanCollectionCertificate? certificate,
            List<PostmanCollectionHeader>? header,
            PostmanCollectionRequestMode? body,
            PostmanCollectionUrl? url,
            String? description)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PostmanCollectionAuth? auth,
            String method,
            PostmanCollectionProxyConfig? proxy,
            PostmanCollectionCertificate? certificate,
            List<PostmanCollectionHeader>? header,
            PostmanCollectionRequestMode? body,
            PostmanCollectionUrl? url,
            String? description)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuth? auth,
            String method,
            PostmanCollectionProxyConfig? proxy,
            PostmanCollectionCertificate? certificate,
            List<PostmanCollectionHeader>? header,
            PostmanCollectionRequestMode? body,
            PostmanCollectionUrl? url,
            String? description)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionRequest value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionRequest value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionRequest value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionRequestCopyWith<PostmanCollectionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionRequestCopyWith<$Res> {
  factory $PostmanCollectionRequestCopyWith(PostmanCollectionRequest value,
          $Res Function(PostmanCollectionRequest) then) =
      _$PostmanCollectionRequestCopyWithImpl<$Res, PostmanCollectionRequest>;
  @useResult
  $Res call(
      {PostmanCollectionAuth? auth,
      String method,
      PostmanCollectionProxyConfig? proxy,
      PostmanCollectionCertificate? certificate,
      List<PostmanCollectionHeader>? header,
      PostmanCollectionRequestMode? body,
      PostmanCollectionUrl? url,
      String? description});

  $PostmanCollectionAuthCopyWith<$Res>? get auth;
  $PostmanCollectionProxyConfigCopyWith<$Res>? get proxy;
  $PostmanCollectionCertificateCopyWith<$Res>? get certificate;
  $PostmanCollectionRequestModeCopyWith<$Res>? get body;
  $PostmanCollectionUrlCopyWith<$Res>? get url;
}

/// @nodoc
class _$PostmanCollectionRequestCopyWithImpl<$Res,
        $Val extends PostmanCollectionRequest>
    implements $PostmanCollectionRequestCopyWith<$Res> {
  _$PostmanCollectionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
    Object? method = null,
    Object? proxy = freezed,
    Object? certificate = freezed,
    Object? header = freezed,
    Object? body = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionAuth?,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      proxy: freezed == proxy
          ? _value.proxy
          : proxy // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionProxyConfig?,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionCertificate?,
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionHeader>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionRequestMode?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionUrl?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionAuthCopyWith<$Res>? get auth {
    if (_value.auth == null) {
      return null;
    }

    return $PostmanCollectionAuthCopyWith<$Res>(_value.auth!, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionProxyConfigCopyWith<$Res>? get proxy {
    if (_value.proxy == null) {
      return null;
    }

    return $PostmanCollectionProxyConfigCopyWith<$Res>(_value.proxy!, (value) {
      return _then(_value.copyWith(proxy: value) as $Val);
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateCopyWith<$Res>? get certificate {
    if (_value.certificate == null) {
      return null;
    }

    return $PostmanCollectionCertificateCopyWith<$Res>(_value.certificate!,
        (value) {
      return _then(_value.copyWith(certificate: value) as $Val);
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestModeCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $PostmanCollectionRequestModeCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionUrlCopyWith<$Res>? get url {
    if (_value.url == null) {
      return null;
    }

    return $PostmanCollectionUrlCopyWith<$Res>(_value.url!, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionRequestImplCopyWith<$Res>
    implements $PostmanCollectionRequestCopyWith<$Res> {
  factory _$$PostmanCollectionRequestImplCopyWith(
          _$PostmanCollectionRequestImpl value,
          $Res Function(_$PostmanCollectionRequestImpl) then) =
      __$$PostmanCollectionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PostmanCollectionAuth? auth,
      String method,
      PostmanCollectionProxyConfig? proxy,
      PostmanCollectionCertificate? certificate,
      List<PostmanCollectionHeader>? header,
      PostmanCollectionRequestMode? body,
      PostmanCollectionUrl? url,
      String? description});

  @override
  $PostmanCollectionAuthCopyWith<$Res>? get auth;
  @override
  $PostmanCollectionProxyConfigCopyWith<$Res>? get proxy;
  @override
  $PostmanCollectionCertificateCopyWith<$Res>? get certificate;
  @override
  $PostmanCollectionRequestModeCopyWith<$Res>? get body;
  @override
  $PostmanCollectionUrlCopyWith<$Res>? get url;
}

/// @nodoc
class __$$PostmanCollectionRequestImplCopyWithImpl<$Res>
    extends _$PostmanCollectionRequestCopyWithImpl<$Res,
        _$PostmanCollectionRequestImpl>
    implements _$$PostmanCollectionRequestImplCopyWith<$Res> {
  __$$PostmanCollectionRequestImplCopyWithImpl(
      _$PostmanCollectionRequestImpl _value,
      $Res Function(_$PostmanCollectionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = freezed,
    Object? method = null,
    Object? proxy = freezed,
    Object? certificate = freezed,
    Object? header = freezed,
    Object? body = freezed,
    Object? url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PostmanCollectionRequestImpl(
      auth: freezed == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionAuth?,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      proxy: freezed == proxy
          ? _value.proxy
          : proxy // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionProxyConfig?,
      certificate: freezed == certificate
          ? _value.certificate
          : certificate // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionCertificate?,
      header: freezed == header
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionHeader>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionRequestMode?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionUrl?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionRequestImpl extends _PostmanCollectionRequest {
  const _$PostmanCollectionRequestImpl(
      {this.auth,
      required this.method,
      this.proxy,
      this.certificate,
      final List<PostmanCollectionHeader>? header,
      this.body,
      this.url,
      this.description})
      : _header = header,
        super._();

  factory _$PostmanCollectionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionRequestImplFromJson(json);

  @override
  final PostmanCollectionAuth? auth;
  @override
  final String method;
  @override
  final PostmanCollectionProxyConfig? proxy;
  @override
  final PostmanCollectionCertificate? certificate;
  final List<PostmanCollectionHeader>? _header;
  @override
  List<PostmanCollectionHeader>? get header {
    final value = _header;
    if (value == null) return null;
    if (_header is EqualUnmodifiableListView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostmanCollectionRequestMode? body;
  @override
  final PostmanCollectionUrl? url;
  @override
  final String? description;

  @override
  String toString() {
    return 'PostmanCollectionRequest(auth: $auth, method: $method, proxy: $proxy, certificate: $certificate, header: $header, body: $body, url: $url, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionRequestImpl &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.proxy, proxy) || other.proxy == proxy) &&
            (identical(other.certificate, certificate) ||
                other.certificate == certificate) &&
            const DeepCollectionEquality().equals(other._header, _header) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, auth, method, proxy, certificate,
      const DeepCollectionEquality().hash(_header), body, url, description);

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionRequestImplCopyWith<_$PostmanCollectionRequestImpl>
      get copyWith => __$$PostmanCollectionRequestImplCopyWithImpl<
          _$PostmanCollectionRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuth? auth,
            String method,
            PostmanCollectionProxyConfig? proxy,
            PostmanCollectionCertificate? certificate,
            List<PostmanCollectionHeader>? header,
            PostmanCollectionRequestMode? body,
            PostmanCollectionUrl? url,
            String? description)
        $default,
  ) {
    return $default(
        auth, method, proxy, certificate, header, body, url, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            PostmanCollectionAuth? auth,
            String method,
            PostmanCollectionProxyConfig? proxy,
            PostmanCollectionCertificate? certificate,
            List<PostmanCollectionHeader>? header,
            PostmanCollectionRequestMode? body,
            PostmanCollectionUrl? url,
            String? description)?
        $default,
  ) {
    return $default?.call(
        auth, method, proxy, certificate, header, body, url, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            PostmanCollectionAuth? auth,
            String method,
            PostmanCollectionProxyConfig? proxy,
            PostmanCollectionCertificate? certificate,
            List<PostmanCollectionHeader>? header,
            PostmanCollectionRequestMode? body,
            PostmanCollectionUrl? url,
            String? description)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          auth, method, proxy, certificate, header, body, url, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionRequest value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionRequest value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionRequest value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionRequestImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionRequest extends PostmanCollectionRequest {
  const factory _PostmanCollectionRequest(
      {final PostmanCollectionAuth? auth,
      required final String method,
      final PostmanCollectionProxyConfig? proxy,
      final PostmanCollectionCertificate? certificate,
      final List<PostmanCollectionHeader>? header,
      final PostmanCollectionRequestMode? body,
      final PostmanCollectionUrl? url,
      final String? description}) = _$PostmanCollectionRequestImpl;
  const _PostmanCollectionRequest._() : super._();

  factory _PostmanCollectionRequest.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionRequestImpl.fromJson;

  @override
  PostmanCollectionAuth? get auth;
  @override
  String get method;
  @override
  PostmanCollectionProxyConfig? get proxy;
  @override
  PostmanCollectionCertificate? get certificate;
  @override
  List<PostmanCollectionHeader>? get header;
  @override
  PostmanCollectionRequestMode? get body;
  @override
  PostmanCollectionUrl? get url;
  @override
  String? get description;

  /// Create a copy of PostmanCollectionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionRequestImplCopyWith<_$PostmanCollectionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionRequestMode _$PostmanCollectionRequestModeFromJson(
    Map<String, dynamic> json) {
  switch (json['mode']) {
    case 'formdata':
      return _PostmanCollectionRequestModeFormdata.fromJson(json);

    default:
      return _PostmanCollectionRequestMode.fromJson(json);
  }
}

/// @nodoc
mixin _$PostmanCollectionRequestMode {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? raw, Map<String, dynamic>? options) raw,
    required TResult Function(List<PostmanFormDataEntry>? formdata) formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult? Function(List<PostmanFormDataEntry>? formdata)? formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult Function(List<PostmanFormDataEntry>? formdata)? formdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostmanCollectionRequestMode value) raw,
    required TResult Function(_PostmanCollectionRequestModeFormdata value)
        formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostmanCollectionRequestMode value)? raw,
    TResult? Function(_PostmanCollectionRequestModeFormdata value)? formdata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostmanCollectionRequestMode value)? raw,
    TResult Function(_PostmanCollectionRequestModeFormdata value)? formdata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionRequestMode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionRequestModeCopyWith<$Res> {
  factory $PostmanCollectionRequestModeCopyWith(
          PostmanCollectionRequestMode value,
          $Res Function(PostmanCollectionRequestMode) then) =
      _$PostmanCollectionRequestModeCopyWithImpl<$Res,
          PostmanCollectionRequestMode>;
}

/// @nodoc
class _$PostmanCollectionRequestModeCopyWithImpl<$Res,
        $Val extends PostmanCollectionRequestMode>
    implements $PostmanCollectionRequestModeCopyWith<$Res> {
  _$PostmanCollectionRequestModeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PostmanCollectionRequestModeImplCopyWith<$Res> {
  factory _$$PostmanCollectionRequestModeImplCopyWith(
          _$PostmanCollectionRequestModeImpl value,
          $Res Function(_$PostmanCollectionRequestModeImpl) then) =
      __$$PostmanCollectionRequestModeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? raw, Map<String, dynamic>? options});
}

/// @nodoc
class __$$PostmanCollectionRequestModeImplCopyWithImpl<$Res>
    extends _$PostmanCollectionRequestModeCopyWithImpl<$Res,
        _$PostmanCollectionRequestModeImpl>
    implements _$$PostmanCollectionRequestModeImplCopyWith<$Res> {
  __$$PostmanCollectionRequestModeImplCopyWithImpl(
      _$PostmanCollectionRequestModeImpl _value,
      $Res Function(_$PostmanCollectionRequestModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? options = freezed,
  }) {
    return _then(_$PostmanCollectionRequestModeImpl(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionRequestModeImpl extends _PostmanCollectionRequestMode {
  const _$PostmanCollectionRequestModeImpl(
      {this.raw, final Map<String, dynamic>? options, final String? $type})
      : _options = options,
        $type = $type ?? 'raw',
        super._();

  factory _$PostmanCollectionRequestModeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostmanCollectionRequestModeImplFromJson(json);

  @override
  final String? raw;
  final Map<String, dynamic>? _options;
  @override
  Map<String, dynamic>? get options {
    final value = _options;
    if (value == null) return null;
    if (_options is EqualUnmodifiableMapView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'mode')
  final String $type;

  @override
  String toString() {
    return 'PostmanCollectionRequestMode.raw(raw: $raw, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionRequestModeImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, raw, const DeepCollectionEquality().hash(_options));

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionRequestModeImplCopyWith<
          _$PostmanCollectionRequestModeImpl>
      get copyWith => __$$PostmanCollectionRequestModeImplCopyWithImpl<
          _$PostmanCollectionRequestModeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? raw, Map<String, dynamic>? options) raw,
    required TResult Function(List<PostmanFormDataEntry>? formdata) formdata,
  }) {
    return raw(this.raw, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult? Function(List<PostmanFormDataEntry>? formdata)? formdata,
  }) {
    return raw?.call(this.raw, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult Function(List<PostmanFormDataEntry>? formdata)? formdata,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this.raw, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostmanCollectionRequestMode value) raw,
    required TResult Function(_PostmanCollectionRequestModeFormdata value)
        formdata,
  }) {
    return raw(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostmanCollectionRequestMode value)? raw,
    TResult? Function(_PostmanCollectionRequestModeFormdata value)? formdata,
  }) {
    return raw?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostmanCollectionRequestMode value)? raw,
    TResult Function(_PostmanCollectionRequestModeFormdata value)? formdata,
    required TResult orElse(),
  }) {
    if (raw != null) {
      return raw(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionRequestModeImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionRequestMode
    extends PostmanCollectionRequestMode {
  const factory _PostmanCollectionRequestMode(
          {final String? raw, final Map<String, dynamic>? options}) =
      _$PostmanCollectionRequestModeImpl;
  const _PostmanCollectionRequestMode._() : super._();

  factory _PostmanCollectionRequestMode.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionRequestModeImpl.fromJson;

  String? get raw;
  Map<String, dynamic>? get options;

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionRequestModeImplCopyWith<
          _$PostmanCollectionRequestModeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostmanCollectionRequestModeFormdataImplCopyWith<$Res> {
  factory _$$PostmanCollectionRequestModeFormdataImplCopyWith(
          _$PostmanCollectionRequestModeFormdataImpl value,
          $Res Function(_$PostmanCollectionRequestModeFormdataImpl) then) =
      __$$PostmanCollectionRequestModeFormdataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PostmanFormDataEntry>? formdata});
}

/// @nodoc
class __$$PostmanCollectionRequestModeFormdataImplCopyWithImpl<$Res>
    extends _$PostmanCollectionRequestModeCopyWithImpl<$Res,
        _$PostmanCollectionRequestModeFormdataImpl>
    implements _$$PostmanCollectionRequestModeFormdataImplCopyWith<$Res> {
  __$$PostmanCollectionRequestModeFormdataImplCopyWithImpl(
      _$PostmanCollectionRequestModeFormdataImpl _value,
      $Res Function(_$PostmanCollectionRequestModeFormdataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formdata = freezed,
  }) {
    return _then(_$PostmanCollectionRequestModeFormdataImpl(
      formdata: freezed == formdata
          ? _value._formdata
          : formdata // ignore: cast_nullable_to_non_nullable
              as List<PostmanFormDataEntry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionRequestModeFormdataImpl
    extends _PostmanCollectionRequestModeFormdata {
  const _$PostmanCollectionRequestModeFormdataImpl(
      {final List<PostmanFormDataEntry>? formdata, final String? $type})
      : _formdata = formdata,
        $type = $type ?? 'formdata',
        super._();

  factory _$PostmanCollectionRequestModeFormdataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostmanCollectionRequestModeFormdataImplFromJson(json);

  final List<PostmanFormDataEntry>? _formdata;
  @override
  List<PostmanFormDataEntry>? get formdata {
    final value = _formdata;
    if (value == null) return null;
    if (_formdata is EqualUnmodifiableListView) return _formdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: 'mode')
  final String $type;

  @override
  String toString() {
    return 'PostmanCollectionRequestMode.formdata(formdata: $formdata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionRequestModeFormdataImpl &&
            const DeepCollectionEquality().equals(other._formdata, _formdata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_formdata));

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionRequestModeFormdataImplCopyWith<
          _$PostmanCollectionRequestModeFormdataImpl>
      get copyWith => __$$PostmanCollectionRequestModeFormdataImplCopyWithImpl<
          _$PostmanCollectionRequestModeFormdataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? raw, Map<String, dynamic>? options) raw,
    required TResult Function(List<PostmanFormDataEntry>? formdata) formdata,
  }) {
    return formdata(this.formdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult? Function(List<PostmanFormDataEntry>? formdata)? formdata,
  }) {
    return formdata?.call(this.formdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? raw, Map<String, dynamic>? options)? raw,
    TResult Function(List<PostmanFormDataEntry>? formdata)? formdata,
    required TResult orElse(),
  }) {
    if (formdata != null) {
      return formdata(this.formdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PostmanCollectionRequestMode value) raw,
    required TResult Function(_PostmanCollectionRequestModeFormdata value)
        formdata,
  }) {
    return formdata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PostmanCollectionRequestMode value)? raw,
    TResult? Function(_PostmanCollectionRequestModeFormdata value)? formdata,
  }) {
    return formdata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PostmanCollectionRequestMode value)? raw,
    TResult Function(_PostmanCollectionRequestModeFormdata value)? formdata,
    required TResult orElse(),
  }) {
    if (formdata != null) {
      return formdata(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionRequestModeFormdataImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionRequestModeFormdata
    extends PostmanCollectionRequestMode {
  const factory _PostmanCollectionRequestModeFormdata(
          {final List<PostmanFormDataEntry>? formdata}) =
      _$PostmanCollectionRequestModeFormdataImpl;
  const _PostmanCollectionRequestModeFormdata._() : super._();

  factory _PostmanCollectionRequestModeFormdata.fromJson(
          Map<String, dynamic> json) =
      _$PostmanCollectionRequestModeFormdataImpl.fromJson;

  List<PostmanFormDataEntry>? get formdata;

  /// Create a copy of PostmanCollectionRequestMode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionRequestModeFormdataImplCopyWith<
          _$PostmanCollectionRequestModeFormdataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanFormDataEntry _$PostmanFormDataEntryFromJson(Map<String, dynamic> json) {
  return _PostmanFormDataEntry.fromJson(json);
}

/// @nodoc
mixin _$PostmanFormDataEntry {
  String get key => throw _privateConstructorUsedError;
  String? get src => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key, String? src, String? value, String? type)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key, String? src, String? value, String? type)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key, String? src, String? value, String? type)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanFormDataEntry value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanFormDataEntry value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanFormDataEntry value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanFormDataEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanFormDataEntryCopyWith<PostmanFormDataEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanFormDataEntryCopyWith<$Res> {
  factory $PostmanFormDataEntryCopyWith(PostmanFormDataEntry value,
          $Res Function(PostmanFormDataEntry) then) =
      _$PostmanFormDataEntryCopyWithImpl<$Res, PostmanFormDataEntry>;
  @useResult
  $Res call({String key, String? src, String? value, String? type});
}

/// @nodoc
class _$PostmanFormDataEntryCopyWithImpl<$Res,
        $Val extends PostmanFormDataEntry>
    implements $PostmanFormDataEntryCopyWith<$Res> {
  _$PostmanFormDataEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? src = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanFormDataEntryImplCopyWith<$Res>
    implements $PostmanFormDataEntryCopyWith<$Res> {
  factory _$$PostmanFormDataEntryImplCopyWith(_$PostmanFormDataEntryImpl value,
          $Res Function(_$PostmanFormDataEntryImpl) then) =
      __$$PostmanFormDataEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String? src, String? value, String? type});
}

/// @nodoc
class __$$PostmanFormDataEntryImplCopyWithImpl<$Res>
    extends _$PostmanFormDataEntryCopyWithImpl<$Res, _$PostmanFormDataEntryImpl>
    implements _$$PostmanFormDataEntryImplCopyWith<$Res> {
  __$$PostmanFormDataEntryImplCopyWithImpl(_$PostmanFormDataEntryImpl _value,
      $Res Function(_$PostmanFormDataEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? src = freezed,
    Object? value = freezed,
    Object? type = freezed,
  }) {
    return _then(_$PostmanFormDataEntryImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanFormDataEntryImpl extends _PostmanFormDataEntry {
  const _$PostmanFormDataEntryImpl(
      {required this.key, this.src, this.value, this.type})
      : super._();

  factory _$PostmanFormDataEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanFormDataEntryImplFromJson(json);

  @override
  final String key;
  @override
  final String? src;
  @override
  final String? value;
  @override
  final String? type;

  @override
  String toString() {
    return 'PostmanFormDataEntry(key: $key, src: $src, value: $value, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanFormDataEntryImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, src, value, type);

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanFormDataEntryImplCopyWith<_$PostmanFormDataEntryImpl>
      get copyWith =>
          __$$PostmanFormDataEntryImplCopyWithImpl<_$PostmanFormDataEntryImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key, String? src, String? value, String? type)
        $default,
  ) {
    return $default(key, src, value, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key, String? src, String? value, String? type)?
        $default,
  ) {
    return $default?.call(key, src, value, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key, String? src, String? value, String? type)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(key, src, value, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanFormDataEntry value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanFormDataEntry value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanFormDataEntry value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanFormDataEntryImplToJson(
      this,
    );
  }
}

abstract class _PostmanFormDataEntry extends PostmanFormDataEntry {
  const factory _PostmanFormDataEntry(
      {required final String key,
      final String? src,
      final String? value,
      final String? type}) = _$PostmanFormDataEntryImpl;
  const _PostmanFormDataEntry._() : super._();

  factory _PostmanFormDataEntry.fromJson(Map<String, dynamic> json) =
      _$PostmanFormDataEntryImpl.fromJson;

  @override
  String get key;
  @override
  String? get src;
  @override
  String? get value;
  @override
  String? get type;

  /// Create a copy of PostmanFormDataEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanFormDataEntryImplCopyWith<_$PostmanFormDataEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionUrl _$PostmanCollectionUrlFromJson(Map<String, dynamic> json) {
  return _PostmanCollectionUrl.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionUrl {
  String? get raw => throw _privateConstructorUsedError;
  String? get protocol => throw _privateConstructorUsedError;
  Object? get host => throw _privateConstructorUsedError;
  Object? get path => throw _privateConstructorUsedError;
  String? get port => throw _privateConstructorUsedError;
  List<PostmanCollectionQueryParam>? get query =>
      throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;
  List<PostmanCollectionVariable>? get variable =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? raw,
            String? protocol,
            Object? host,
            Object? path,
            String? port,
            List<PostmanCollectionQueryParam>? query,
            String? hash,
            List<PostmanCollectionVariable>? variable)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? raw,
            String? protocol,
            Object? host,
            Object? path,
            String? port,
            List<PostmanCollectionQueryParam>? query,
            String? hash,
            List<PostmanCollectionVariable>? variable)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? raw,
            String? protocol,
            Object? host,
            Object? path,
            String? port,
            List<PostmanCollectionQueryParam>? query,
            String? hash,
            List<PostmanCollectionVariable>? variable)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionUrl value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionUrl value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionUrl value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionUrl to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionUrlCopyWith<PostmanCollectionUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionUrlCopyWith<$Res> {
  factory $PostmanCollectionUrlCopyWith(PostmanCollectionUrl value,
          $Res Function(PostmanCollectionUrl) then) =
      _$PostmanCollectionUrlCopyWithImpl<$Res, PostmanCollectionUrl>;
  @useResult
  $Res call(
      {String? raw,
      String? protocol,
      Object? host,
      Object? path,
      String? port,
      List<PostmanCollectionQueryParam>? query,
      String? hash,
      List<PostmanCollectionVariable>? variable});
}

/// @nodoc
class _$PostmanCollectionUrlCopyWithImpl<$Res,
        $Val extends PostmanCollectionUrl>
    implements $PostmanCollectionUrlCopyWith<$Res> {
  _$PostmanCollectionUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? protocol = freezed,
    Object? host = freezed,
    Object? path = freezed,
    Object? port = freezed,
    Object? query = freezed,
    Object? hash = freezed,
    Object? variable = freezed,
  }) {
    return _then(_value.copyWith(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host ? _value.host : host,
      path: freezed == path ? _value.path : path,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionQueryParam>?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionVariable>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionUrlImplCopyWith<$Res>
    implements $PostmanCollectionUrlCopyWith<$Res> {
  factory _$$PostmanCollectionUrlImplCopyWith(_$PostmanCollectionUrlImpl value,
          $Res Function(_$PostmanCollectionUrlImpl) then) =
      __$$PostmanCollectionUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? raw,
      String? protocol,
      Object? host,
      Object? path,
      String? port,
      List<PostmanCollectionQueryParam>? query,
      String? hash,
      List<PostmanCollectionVariable>? variable});
}

/// @nodoc
class __$$PostmanCollectionUrlImplCopyWithImpl<$Res>
    extends _$PostmanCollectionUrlCopyWithImpl<$Res, _$PostmanCollectionUrlImpl>
    implements _$$PostmanCollectionUrlImplCopyWith<$Res> {
  __$$PostmanCollectionUrlImplCopyWithImpl(_$PostmanCollectionUrlImpl _value,
      $Res Function(_$PostmanCollectionUrlImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? raw = freezed,
    Object? protocol = freezed,
    Object? host = freezed,
    Object? path = freezed,
    Object? port = freezed,
    Object? query = freezed,
    Object? hash = freezed,
    Object? variable = freezed,
  }) {
    return _then(_$PostmanCollectionUrlImpl(
      raw: freezed == raw
          ? _value.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
      protocol: freezed == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host ? _value.host : host,
      path: freezed == path ? _value.path : path,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value._query
          : query // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionQueryParam>?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      variable: freezed == variable
          ? _value._variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionVariable>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionUrlImpl extends _PostmanCollectionUrl {
  const _$PostmanCollectionUrlImpl(
      {this.raw,
      this.protocol,
      this.host,
      this.path,
      this.port,
      final List<PostmanCollectionQueryParam>? query,
      this.hash,
      final List<PostmanCollectionVariable>? variable})
      : _query = query,
        _variable = variable,
        super._();

  factory _$PostmanCollectionUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionUrlImplFromJson(json);

  @override
  final String? raw;
  @override
  final String? protocol;
  @override
  final Object? host;
  @override
  final Object? path;
  @override
  final String? port;
  final List<PostmanCollectionQueryParam>? _query;
  @override
  List<PostmanCollectionQueryParam>? get query {
    final value = _query;
    if (value == null) return null;
    if (_query is EqualUnmodifiableListView) return _query;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? hash;
  final List<PostmanCollectionVariable>? _variable;
  @override
  List<PostmanCollectionVariable>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PostmanCollectionUrl(raw: $raw, protocol: $protocol, host: $host, path: $path, port: $port, query: $query, hash: $hash, variable: $variable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionUrlImpl &&
            (identical(other.raw, raw) || other.raw == raw) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            const DeepCollectionEquality().equals(other.host, host) &&
            const DeepCollectionEquality().equals(other.path, path) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other._query, _query) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            const DeepCollectionEquality().equals(other._variable, _variable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      raw,
      protocol,
      const DeepCollectionEquality().hash(host),
      const DeepCollectionEquality().hash(path),
      port,
      const DeepCollectionEquality().hash(_query),
      hash,
      const DeepCollectionEquality().hash(_variable));

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionUrlImplCopyWith<_$PostmanCollectionUrlImpl>
      get copyWith =>
          __$$PostmanCollectionUrlImplCopyWithImpl<_$PostmanCollectionUrlImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? raw,
            String? protocol,
            Object? host,
            Object? path,
            String? port,
            List<PostmanCollectionQueryParam>? query,
            String? hash,
            List<PostmanCollectionVariable>? variable)
        $default,
  ) {
    return $default(raw, protocol, host, path, port, query, hash, variable);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? raw,
            String? protocol,
            Object? host,
            Object? path,
            String? port,
            List<PostmanCollectionQueryParam>? query,
            String? hash,
            List<PostmanCollectionVariable>? variable)?
        $default,
  ) {
    return $default?.call(
        raw, protocol, host, path, port, query, hash, variable);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? raw,
            String? protocol,
            Object? host,
            Object? path,
            String? port,
            List<PostmanCollectionQueryParam>? query,
            String? hash,
            List<PostmanCollectionVariable>? variable)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(raw, protocol, host, path, port, query, hash, variable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionUrl value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionUrl value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionUrl value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionUrlImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionUrl extends PostmanCollectionUrl {
  const factory _PostmanCollectionUrl(
          {final String? raw,
          final String? protocol,
          final Object? host,
          final Object? path,
          final String? port,
          final List<PostmanCollectionQueryParam>? query,
          final String? hash,
          final List<PostmanCollectionVariable>? variable}) =
      _$PostmanCollectionUrlImpl;
  const _PostmanCollectionUrl._() : super._();

  factory _PostmanCollectionUrl.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionUrlImpl.fromJson;

  @override
  String? get raw;
  @override
  String? get protocol;
  @override
  Object? get host;
  @override
  Object? get path;
  @override
  String? get port;
  @override
  List<PostmanCollectionQueryParam>? get query;
  @override
  String? get hash;
  @override
  List<PostmanCollectionVariable>? get variable;

  /// Create a copy of PostmanCollectionUrl
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionUrlImplCopyWith<_$PostmanCollectionUrlImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionQueryParam _$PostmanCollectionQueryParamFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionQueryParam.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionQueryParam {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? key, String? value, bool? disabled, String? description)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? key, String? value, bool? disabled, String? description)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? key, String? value, bool? disabled, String? description)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionQueryParam value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionQueryParam value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionQueryParam value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionQueryParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionQueryParamCopyWith<PostmanCollectionQueryParam>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionQueryParamCopyWith<$Res> {
  factory $PostmanCollectionQueryParamCopyWith(
          PostmanCollectionQueryParam value,
          $Res Function(PostmanCollectionQueryParam) then) =
      _$PostmanCollectionQueryParamCopyWithImpl<$Res,
          PostmanCollectionQueryParam>;
  @useResult
  $Res call({String? key, String? value, bool? disabled, String? description});
}

/// @nodoc
class _$PostmanCollectionQueryParamCopyWithImpl<$Res,
        $Val extends PostmanCollectionQueryParam>
    implements $PostmanCollectionQueryParamCopyWith<$Res> {
  _$PostmanCollectionQueryParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionQueryParamImplCopyWith<$Res>
    implements $PostmanCollectionQueryParamCopyWith<$Res> {
  factory _$$PostmanCollectionQueryParamImplCopyWith(
          _$PostmanCollectionQueryParamImpl value,
          $Res Function(_$PostmanCollectionQueryParamImpl) then) =
      __$$PostmanCollectionQueryParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? value, bool? disabled, String? description});
}

/// @nodoc
class __$$PostmanCollectionQueryParamImplCopyWithImpl<$Res>
    extends _$PostmanCollectionQueryParamCopyWithImpl<$Res,
        _$PostmanCollectionQueryParamImpl>
    implements _$$PostmanCollectionQueryParamImplCopyWith<$Res> {
  __$$PostmanCollectionQueryParamImplCopyWithImpl(
      _$PostmanCollectionQueryParamImpl _value,
      $Res Function(_$PostmanCollectionQueryParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PostmanCollectionQueryParamImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionQueryParamImpl extends _PostmanCollectionQueryParam {
  const _$PostmanCollectionQueryParamImpl(
      {this.key, this.value, this.disabled, this.description})
      : super._();

  factory _$PostmanCollectionQueryParamImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostmanCollectionQueryParamImplFromJson(json);

  @override
  final String? key;
  @override
  final String? value;
  @override
  final bool? disabled;
  @override
  final String? description;

  @override
  String toString() {
    return 'PostmanCollectionQueryParam(key: $key, value: $value, disabled: $disabled, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionQueryParamImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, disabled, description);

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionQueryParamImplCopyWith<_$PostmanCollectionQueryParamImpl>
      get copyWith => __$$PostmanCollectionQueryParamImplCopyWithImpl<
          _$PostmanCollectionQueryParamImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? key, String? value, bool? disabled, String? description)
        $default,
  ) {
    return $default(key, value, disabled, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? key, String? value, bool? disabled, String? description)?
        $default,
  ) {
    return $default?.call(key, value, disabled, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? key, String? value, bool? disabled, String? description)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(key, value, disabled, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionQueryParam value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionQueryParam value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionQueryParam value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionQueryParamImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionQueryParam
    extends PostmanCollectionQueryParam {
  const factory _PostmanCollectionQueryParam(
      {final String? key,
      final String? value,
      final bool? disabled,
      final String? description}) = _$PostmanCollectionQueryParamImpl;
  const _PostmanCollectionQueryParam._() : super._();

  factory _PostmanCollectionQueryParam.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionQueryParamImpl.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  bool? get disabled;
  @override
  String? get description;

  /// Create a copy of PostmanCollectionQueryParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionQueryParamImplCopyWith<_$PostmanCollectionQueryParamImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionVariable _$PostmanCollectionVariableFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionVariable.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionVariable {
  String? get id => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;
  PostmanCollectionVariableType? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  bool? get system => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String? key,
            Object? value,
            PostmanCollectionVariableType? type,
            String? name,
            String? description,
            bool? system,
            bool? disabled)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? id,
            String? key,
            Object? value,
            PostmanCollectionVariableType? type,
            String? name,
            String? description,
            bool? system,
            bool? disabled)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String? key,
            Object? value,
            PostmanCollectionVariableType? type,
            String? name,
            String? description,
            bool? system,
            bool? disabled)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionVariable value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionVariable value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionVariable value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionVariable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionVariable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionVariableCopyWith<PostmanCollectionVariable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionVariableCopyWith<$Res> {
  factory $PostmanCollectionVariableCopyWith(PostmanCollectionVariable value,
          $Res Function(PostmanCollectionVariable) then) =
      _$PostmanCollectionVariableCopyWithImpl<$Res, PostmanCollectionVariable>;
  @useResult
  $Res call(
      {String? id,
      String? key,
      Object? value,
      PostmanCollectionVariableType? type,
      String? name,
      String? description,
      bool? system,
      bool? disabled});
}

/// @nodoc
class _$PostmanCollectionVariableCopyWithImpl<$Res,
        $Val extends PostmanCollectionVariable>
    implements $PostmanCollectionVariableCopyWith<$Res> {
  _$PostmanCollectionVariableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionVariable
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
    Object? system = freezed,
    Object? disabled = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value ? _value.value : value,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionVariableType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionVariableImplCopyWith<$Res>
    implements $PostmanCollectionVariableCopyWith<$Res> {
  factory _$$PostmanCollectionVariableImplCopyWith(
          _$PostmanCollectionVariableImpl value,
          $Res Function(_$PostmanCollectionVariableImpl) then) =
      __$$PostmanCollectionVariableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? key,
      Object? value,
      PostmanCollectionVariableType? type,
      String? name,
      String? description,
      bool? system,
      bool? disabled});
}

/// @nodoc
class __$$PostmanCollectionVariableImplCopyWithImpl<$Res>
    extends _$PostmanCollectionVariableCopyWithImpl<$Res,
        _$PostmanCollectionVariableImpl>
    implements _$$PostmanCollectionVariableImplCopyWith<$Res> {
  __$$PostmanCollectionVariableImplCopyWithImpl(
      _$PostmanCollectionVariableImpl _value,
      $Res Function(_$PostmanCollectionVariableImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionVariable
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
    Object? system = freezed,
    Object? disabled = freezed,
  }) {
    return _then(_$PostmanCollectionVariableImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value ? _value.value : value,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionVariableType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionVariableImpl extends _PostmanCollectionVariable {
  const _$PostmanCollectionVariableImpl(
      {this.id,
      this.key,
      this.value,
      this.type,
      this.name,
      this.description,
      this.system,
      this.disabled})
      : super._();

  factory _$PostmanCollectionVariableImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionVariableImplFromJson(json);

  @override
  final String? id;
  @override
  final String? key;
  @override
  final Object? value;
  @override
  final PostmanCollectionVariableType? type;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? system;
  @override
  final bool? disabled;

  @override
  String toString() {
    return 'PostmanCollectionVariable(id: $id, key: $key, value: $value, type: $type, name: $name, description: $description, system: $system, disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionVariableImpl &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      key,
      const DeepCollectionEquality().hash(value),
      type,
      name,
      description,
      system,
      disabled);

  /// Create a copy of PostmanCollectionVariable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionVariableImplCopyWith<_$PostmanCollectionVariableImpl>
      get copyWith => __$$PostmanCollectionVariableImplCopyWithImpl<
          _$PostmanCollectionVariableImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? id,
            String? key,
            Object? value,
            PostmanCollectionVariableType? type,
            String? name,
            String? description,
            bool? system,
            bool? disabled)
        $default,
  ) {
    return $default(id, key, value, type, name, description, system, disabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? id,
            String? key,
            Object? value,
            PostmanCollectionVariableType? type,
            String? name,
            String? description,
            bool? system,
            bool? disabled)?
        $default,
  ) {
    return $default?.call(
        id, key, value, type, name, description, system, disabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? id,
            String? key,
            Object? value,
            PostmanCollectionVariableType? type,
            String? name,
            String? description,
            bool? system,
            bool? disabled)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          id, key, value, type, name, description, system, disabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionVariable value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionVariable value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionVariable value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionVariableImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionVariable extends PostmanCollectionVariable {
  const factory _PostmanCollectionVariable(
      {final String? id,
      final String? key,
      final Object? value,
      final PostmanCollectionVariableType? type,
      final String? name,
      final String? description,
      final bool? system,
      final bool? disabled}) = _$PostmanCollectionVariableImpl;
  const _PostmanCollectionVariable._() : super._();

  factory _PostmanCollectionVariable.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionVariableImpl.fromJson;

  @override
  String? get id;
  @override
  String? get key;
  @override
  Object? get value;
  @override
  PostmanCollectionVariableType? get type;
  @override
  String? get name;
  @override
  String? get description;
  @override
  bool? get system;
  @override
  bool? get disabled;

  /// Create a copy of PostmanCollectionVariable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionVariableImplCopyWith<_$PostmanCollectionVariableImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionEvent _$PostmanCollectionEventFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionEvent.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionEvent {
  String? get id => throw _privateConstructorUsedError;
  String get listen => throw _privateConstructorUsedError;
  PostmanCollectionScript? get script => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? id, String listen, PostmanCollectionScript? script,
            bool? disabled)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? id, String listen,
            PostmanCollectionScript? script, bool? disabled)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? id, String listen, PostmanCollectionScript? script,
            bool? disabled)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionEvent value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionEvent value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionEvent value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionEventCopyWith<PostmanCollectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionEventCopyWith<$Res> {
  factory $PostmanCollectionEventCopyWith(PostmanCollectionEvent value,
          $Res Function(PostmanCollectionEvent) then) =
      _$PostmanCollectionEventCopyWithImpl<$Res, PostmanCollectionEvent>;
  @useResult
  $Res call(
      {String? id,
      String listen,
      PostmanCollectionScript? script,
      bool? disabled});

  $PostmanCollectionScriptCopyWith<$Res>? get script;
}

/// @nodoc
class _$PostmanCollectionEventCopyWithImpl<$Res,
        $Val extends PostmanCollectionEvent>
    implements $PostmanCollectionEventCopyWith<$Res> {
  _$PostmanCollectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listen = null,
    Object? script = freezed,
    Object? disabled = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listen: null == listen
          ? _value.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as String,
      script: freezed == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionScript?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionScriptCopyWith<$Res>? get script {
    if (_value.script == null) {
      return null;
    }

    return $PostmanCollectionScriptCopyWith<$Res>(_value.script!, (value) {
      return _then(_value.copyWith(script: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionEventImplCopyWith<$Res>
    implements $PostmanCollectionEventCopyWith<$Res> {
  factory _$$PostmanCollectionEventImplCopyWith(
          _$PostmanCollectionEventImpl value,
          $Res Function(_$PostmanCollectionEventImpl) then) =
      __$$PostmanCollectionEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String listen,
      PostmanCollectionScript? script,
      bool? disabled});

  @override
  $PostmanCollectionScriptCopyWith<$Res>? get script;
}

/// @nodoc
class __$$PostmanCollectionEventImplCopyWithImpl<$Res>
    extends _$PostmanCollectionEventCopyWithImpl<$Res,
        _$PostmanCollectionEventImpl>
    implements _$$PostmanCollectionEventImplCopyWith<$Res> {
  __$$PostmanCollectionEventImplCopyWithImpl(
      _$PostmanCollectionEventImpl _value,
      $Res Function(_$PostmanCollectionEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? listen = null,
    Object? script = freezed,
    Object? disabled = freezed,
  }) {
    return _then(_$PostmanCollectionEventImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      listen: null == listen
          ? _value.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as String,
      script: freezed == script
          ? _value.script
          : script // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionScript?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionEventImpl extends _PostmanCollectionEvent {
  const _$PostmanCollectionEventImpl(
      {this.id, required this.listen, this.script, this.disabled})
      : super._();

  factory _$PostmanCollectionEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionEventImplFromJson(json);

  @override
  final String? id;
  @override
  final String listen;
  @override
  final PostmanCollectionScript? script;
  @override
  final bool? disabled;

  @override
  String toString() {
    return 'PostmanCollectionEvent(id: $id, listen: $listen, script: $script, disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.listen, listen) || other.listen == listen) &&
            (identical(other.script, script) || other.script == script) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, listen, script, disabled);

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionEventImplCopyWith<_$PostmanCollectionEventImpl>
      get copyWith => __$$PostmanCollectionEventImplCopyWithImpl<
          _$PostmanCollectionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? id, String listen, PostmanCollectionScript? script,
            bool? disabled)
        $default,
  ) {
    return $default(id, listen, script, disabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? id, String listen,
            PostmanCollectionScript? script, bool? disabled)?
        $default,
  ) {
    return $default?.call(id, listen, script, disabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? id, String listen, PostmanCollectionScript? script,
            bool? disabled)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, listen, script, disabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionEvent value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionEvent value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionEvent value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionEventImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionEvent extends PostmanCollectionEvent {
  const factory _PostmanCollectionEvent(
      {final String? id,
      required final String listen,
      final PostmanCollectionScript? script,
      final bool? disabled}) = _$PostmanCollectionEventImpl;
  const _PostmanCollectionEvent._() : super._();

  factory _PostmanCollectionEvent.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionEventImpl.fromJson;

  @override
  String? get id;
  @override
  String get listen;
  @override
  PostmanCollectionScript? get script;
  @override
  bool? get disabled;

  /// Create a copy of PostmanCollectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionEventImplCopyWith<_$PostmanCollectionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionScript _$PostmanCollectionScriptFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionScript.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionScript {
  String? get id => throw _privateConstructorUsedError;
  Map<String, dynamic>? get packages => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Object? get exec => throw _privateConstructorUsedError;
  PostmanCollectionUrl? get src => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? id, Map<String, dynamic>? packages, String? type,
            Object? exec, PostmanCollectionUrl? src, String? name)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? id, Map<String, dynamic>? packages, String? type,
            Object? exec, PostmanCollectionUrl? src, String? name)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? id, Map<String, dynamic>? packages, String? type,
            Object? exec, PostmanCollectionUrl? src, String? name)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionScript value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionScript value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionScript value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionScript to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionScriptCopyWith<PostmanCollectionScript> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionScriptCopyWith<$Res> {
  factory $PostmanCollectionScriptCopyWith(PostmanCollectionScript value,
          $Res Function(PostmanCollectionScript) then) =
      _$PostmanCollectionScriptCopyWithImpl<$Res, PostmanCollectionScript>;
  @useResult
  $Res call(
      {String? id,
      Map<String, dynamic>? packages,
      String? type,
      Object? exec,
      PostmanCollectionUrl? src,
      String? name});

  $PostmanCollectionUrlCopyWith<$Res>? get src;
}

/// @nodoc
class _$PostmanCollectionScriptCopyWithImpl<$Res,
        $Val extends PostmanCollectionScript>
    implements $PostmanCollectionScriptCopyWith<$Res> {
  _$PostmanCollectionScriptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? packages = freezed,
    Object? type = freezed,
    Object? exec = freezed,
    Object? src = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      exec: freezed == exec ? _value.exec : exec,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionUrl?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionUrlCopyWith<$Res>? get src {
    if (_value.src == null) {
      return null;
    }

    return $PostmanCollectionUrlCopyWith<$Res>(_value.src!, (value) {
      return _then(_value.copyWith(src: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionScriptImplCopyWith<$Res>
    implements $PostmanCollectionScriptCopyWith<$Res> {
  factory _$$PostmanCollectionScriptImplCopyWith(
          _$PostmanCollectionScriptImpl value,
          $Res Function(_$PostmanCollectionScriptImpl) then) =
      __$$PostmanCollectionScriptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Map<String, dynamic>? packages,
      String? type,
      Object? exec,
      PostmanCollectionUrl? src,
      String? name});

  @override
  $PostmanCollectionUrlCopyWith<$Res>? get src;
}

/// @nodoc
class __$$PostmanCollectionScriptImplCopyWithImpl<$Res>
    extends _$PostmanCollectionScriptCopyWithImpl<$Res,
        _$PostmanCollectionScriptImpl>
    implements _$$PostmanCollectionScriptImplCopyWith<$Res> {
  __$$PostmanCollectionScriptImplCopyWithImpl(
      _$PostmanCollectionScriptImpl _value,
      $Res Function(_$PostmanCollectionScriptImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? packages = freezed,
    Object? type = freezed,
    Object? exec = freezed,
    Object? src = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PostmanCollectionScriptImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      exec: freezed == exec ? _value.exec : exec,
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionUrl?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionScriptImpl extends _PostmanCollectionScript {
  const _$PostmanCollectionScriptImpl(
      {this.id,
      final Map<String, dynamic>? packages,
      this.type,
      this.exec,
      this.src,
      this.name})
      : _packages = packages,
        super._();

  factory _$PostmanCollectionScriptImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionScriptImplFromJson(json);

  @override
  final String? id;
  final Map<String, dynamic>? _packages;
  @override
  Map<String, dynamic>? get packages {
    final value = _packages;
    if (value == null) return null;
    if (_packages is EqualUnmodifiableMapView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? type;
  @override
  final Object? exec;
  @override
  final PostmanCollectionUrl? src;
  @override
  final String? name;

  @override
  String toString() {
    return 'PostmanCollectionScript(id: $id, packages: $packages, type: $type, exec: $exec, src: $src, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionScriptImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._packages, _packages) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.exec, exec) &&
            (identical(other.src, src) || other.src == src) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_packages),
      type,
      const DeepCollectionEquality().hash(exec),
      src,
      name);

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionScriptImplCopyWith<_$PostmanCollectionScriptImpl>
      get copyWith => __$$PostmanCollectionScriptImplCopyWithImpl<
          _$PostmanCollectionScriptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? id, Map<String, dynamic>? packages, String? type,
            Object? exec, PostmanCollectionUrl? src, String? name)
        $default,
  ) {
    return $default(id, packages, type, exec, src, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? id, Map<String, dynamic>? packages, String? type,
            Object? exec, PostmanCollectionUrl? src, String? name)?
        $default,
  ) {
    return $default?.call(id, packages, type, exec, src, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? id, Map<String, dynamic>? packages, String? type,
            Object? exec, PostmanCollectionUrl? src, String? name)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, packages, type, exec, src, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionScript value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionScript value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionScript value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionScriptImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionScript extends PostmanCollectionScript {
  const factory _PostmanCollectionScript(
      {final String? id,
      final Map<String, dynamic>? packages,
      final String? type,
      final Object? exec,
      final PostmanCollectionUrl? src,
      final String? name}) = _$PostmanCollectionScriptImpl;
  const _PostmanCollectionScript._() : super._();

  factory _PostmanCollectionScript.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionScriptImpl.fromJson;

  @override
  String? get id;
  @override
  Map<String, dynamic>? get packages;
  @override
  String? get type;
  @override
  Object? get exec;
  @override
  PostmanCollectionUrl? get src;
  @override
  String? get name;

  /// Create a copy of PostmanCollectionScript
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionScriptImplCopyWith<_$PostmanCollectionScriptImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionResponse _$PostmanCollectionResponseFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionResponse.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  PostmanCollectionRequest? get originalRequest =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_postman_previewlanguage')
  String? get postmanPreviewLanguage => throw _privateConstructorUsedError;
  Object? get responseTime => throw _privateConstructorUsedError;
  Object? get timings => throw _privateConstructorUsedError;
  Object? get header => throw _privateConstructorUsedError;
  List<PostmanCollectionCookie>? get cookie =>
      throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name,
            String? id,
            PostmanCollectionRequest? originalRequest,
            @JsonKey(name: '_postman_previewlanguage')
            String? postmanPreviewLanguage,
            Object? responseTime,
            Object? timings,
            Object? header,
            List<PostmanCollectionCookie>? cookie,
            String? body,
            String? status,
            int? code)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name,
            String? id,
            PostmanCollectionRequest? originalRequest,
            @JsonKey(name: '_postman_previewlanguage')
            String? postmanPreviewLanguage,
            Object? responseTime,
            Object? timings,
            Object? header,
            List<PostmanCollectionCookie>? cookie,
            String? body,
            String? status,
            int? code)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name,
            String? id,
            PostmanCollectionRequest? originalRequest,
            @JsonKey(name: '_postman_previewlanguage')
            String? postmanPreviewLanguage,
            Object? responseTime,
            Object? timings,
            Object? header,
            List<PostmanCollectionCookie>? cookie,
            String? body,
            String? status,
            int? code)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionResponse value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionResponse value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionResponse value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionResponseCopyWith<PostmanCollectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionResponseCopyWith<$Res> {
  factory $PostmanCollectionResponseCopyWith(PostmanCollectionResponse value,
          $Res Function(PostmanCollectionResponse) then) =
      _$PostmanCollectionResponseCopyWithImpl<$Res, PostmanCollectionResponse>;
  @useResult
  $Res call(
      {String? name,
      String? id,
      PostmanCollectionRequest? originalRequest,
      @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
      Object? responseTime,
      Object? timings,
      Object? header,
      List<PostmanCollectionCookie>? cookie,
      String? body,
      String? status,
      int? code});

  $PostmanCollectionRequestCopyWith<$Res>? get originalRequest;
}

/// @nodoc
class _$PostmanCollectionResponseCopyWithImpl<$Res,
        $Val extends PostmanCollectionResponse>
    implements $PostmanCollectionResponseCopyWith<$Res> {
  _$PostmanCollectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? originalRequest = freezed,
    Object? postmanPreviewLanguage = freezed,
    Object? responseTime = freezed,
    Object? timings = freezed,
    Object? header = freezed,
    Object? cookie = freezed,
    Object? body = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      originalRequest: freezed == originalRequest
          ? _value.originalRequest
          : originalRequest // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionRequest?,
      postmanPreviewLanguage: freezed == postmanPreviewLanguage
          ? _value.postmanPreviewLanguage
          : postmanPreviewLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseTime:
          freezed == responseTime ? _value.responseTime : responseTime,
      timings: freezed == timings ? _value.timings : timings,
      header: freezed == header ? _value.header : header,
      cookie: freezed == cookie
          ? _value.cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionCookie>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionRequestCopyWith<$Res>? get originalRequest {
    if (_value.originalRequest == null) {
      return null;
    }

    return $PostmanCollectionRequestCopyWith<$Res>(_value.originalRequest!,
        (value) {
      return _then(_value.copyWith(originalRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionResponseImplCopyWith<$Res>
    implements $PostmanCollectionResponseCopyWith<$Res> {
  factory _$$PostmanCollectionResponseImplCopyWith(
          _$PostmanCollectionResponseImpl value,
          $Res Function(_$PostmanCollectionResponseImpl) then) =
      __$$PostmanCollectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? id,
      PostmanCollectionRequest? originalRequest,
      @JsonKey(name: '_postman_previewlanguage') String? postmanPreviewLanguage,
      Object? responseTime,
      Object? timings,
      Object? header,
      List<PostmanCollectionCookie>? cookie,
      String? body,
      String? status,
      int? code});

  @override
  $PostmanCollectionRequestCopyWith<$Res>? get originalRequest;
}

/// @nodoc
class __$$PostmanCollectionResponseImplCopyWithImpl<$Res>
    extends _$PostmanCollectionResponseCopyWithImpl<$Res,
        _$PostmanCollectionResponseImpl>
    implements _$$PostmanCollectionResponseImplCopyWith<$Res> {
  __$$PostmanCollectionResponseImplCopyWithImpl(
      _$PostmanCollectionResponseImpl _value,
      $Res Function(_$PostmanCollectionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? originalRequest = freezed,
    Object? postmanPreviewLanguage = freezed,
    Object? responseTime = freezed,
    Object? timings = freezed,
    Object? header = freezed,
    Object? cookie = freezed,
    Object? body = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(_$PostmanCollectionResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      originalRequest: freezed == originalRequest
          ? _value.originalRequest
          : originalRequest // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionRequest?,
      postmanPreviewLanguage: freezed == postmanPreviewLanguage
          ? _value.postmanPreviewLanguage
          : postmanPreviewLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      responseTime:
          freezed == responseTime ? _value.responseTime : responseTime,
      timings: freezed == timings ? _value.timings : timings,
      header: freezed == header ? _value.header : header,
      cookie: freezed == cookie
          ? _value._cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as List<PostmanCollectionCookie>?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionResponseImpl extends _PostmanCollectionResponse {
  const _$PostmanCollectionResponseImpl(
      {this.name,
      this.id,
      this.originalRequest,
      @JsonKey(name: '_postman_previewlanguage') this.postmanPreviewLanguage,
      this.responseTime,
      this.timings,
      this.header,
      final List<PostmanCollectionCookie>? cookie,
      this.body,
      this.status,
      this.code})
      : _cookie = cookie,
        super._();

  factory _$PostmanCollectionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? id;
  @override
  final PostmanCollectionRequest? originalRequest;
  @override
  @JsonKey(name: '_postman_previewlanguage')
  final String? postmanPreviewLanguage;
  @override
  final Object? responseTime;
  @override
  final Object? timings;
  @override
  final Object? header;
  final List<PostmanCollectionCookie>? _cookie;
  @override
  List<PostmanCollectionCookie>? get cookie {
    final value = _cookie;
    if (value == null) return null;
    if (_cookie is EqualUnmodifiableListView) return _cookie;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? body;
  @override
  final String? status;
  @override
  final int? code;

  @override
  String toString() {
    return 'PostmanCollectionResponse(name: $name, id: $id, originalRequest: $originalRequest, postmanPreviewLanguage: $postmanPreviewLanguage, responseTime: $responseTime, timings: $timings, header: $header, cookie: $cookie, body: $body, status: $status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalRequest, originalRequest) ||
                other.originalRequest == originalRequest) &&
            (identical(other.postmanPreviewLanguage, postmanPreviewLanguage) ||
                other.postmanPreviewLanguage == postmanPreviewLanguage) &&
            const DeepCollectionEquality()
                .equals(other.responseTime, responseTime) &&
            const DeepCollectionEquality().equals(other.timings, timings) &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other._cookie, _cookie) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      id,
      originalRequest,
      postmanPreviewLanguage,
      const DeepCollectionEquality().hash(responseTime),
      const DeepCollectionEquality().hash(timings),
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(_cookie),
      body,
      status,
      code);

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionResponseImplCopyWith<_$PostmanCollectionResponseImpl>
      get copyWith => __$$PostmanCollectionResponseImplCopyWithImpl<
          _$PostmanCollectionResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name,
            String? id,
            PostmanCollectionRequest? originalRequest,
            @JsonKey(name: '_postman_previewlanguage')
            String? postmanPreviewLanguage,
            Object? responseTime,
            Object? timings,
            Object? header,
            List<PostmanCollectionCookie>? cookie,
            String? body,
            String? status,
            int? code)
        $default,
  ) {
    return $default(name, id, originalRequest, postmanPreviewLanguage,
        responseTime, timings, header, cookie, body, status, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name,
            String? id,
            PostmanCollectionRequest? originalRequest,
            @JsonKey(name: '_postman_previewlanguage')
            String? postmanPreviewLanguage,
            Object? responseTime,
            Object? timings,
            Object? header,
            List<PostmanCollectionCookie>? cookie,
            String? body,
            String? status,
            int? code)?
        $default,
  ) {
    return $default?.call(name, id, originalRequest, postmanPreviewLanguage,
        responseTime, timings, header, cookie, body, status, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name,
            String? id,
            PostmanCollectionRequest? originalRequest,
            @JsonKey(name: '_postman_previewlanguage')
            String? postmanPreviewLanguage,
            Object? responseTime,
            Object? timings,
            Object? header,
            List<PostmanCollectionCookie>? cookie,
            String? body,
            String? status,
            int? code)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, id, originalRequest, postmanPreviewLanguage,
          responseTime, timings, header, cookie, body, status, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionResponse value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionResponse value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionResponse value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionResponseImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionResponse extends PostmanCollectionResponse {
  const factory _PostmanCollectionResponse(
      {final String? name,
      final String? id,
      final PostmanCollectionRequest? originalRequest,
      @JsonKey(name: '_postman_previewlanguage')
      final String? postmanPreviewLanguage,
      final Object? responseTime,
      final Object? timings,
      final Object? header,
      final List<PostmanCollectionCookie>? cookie,
      final String? body,
      final String? status,
      final int? code}) = _$PostmanCollectionResponseImpl;
  const _PostmanCollectionResponse._() : super._();

  factory _PostmanCollectionResponse.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  PostmanCollectionRequest? get originalRequest;
  @override
  @JsonKey(name: '_postman_previewlanguage')
  String? get postmanPreviewLanguage;
  @override
  Object? get responseTime;
  @override
  Object? get timings;
  @override
  Object? get header;
  @override
  List<PostmanCollectionCookie>? get cookie;
  @override
  String? get body;
  @override
  String? get status;
  @override
  int? get code;

  /// Create a copy of PostmanCollectionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionResponseImplCopyWith<_$PostmanCollectionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionCookie _$PostmanCollectionCookieFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionCookie.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionCookie {
  String get domain => throw _privateConstructorUsedError;
  Object? get expires => throw _privateConstructorUsedError;
  String? get maxAge => throw _privateConstructorUsedError;
  bool? get hostOnly => throw _privateConstructorUsedError;
  bool? get httpOnly => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  bool? get secure => throw _privateConstructorUsedError;
  bool? get session => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  Object? get extensions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String domain,
            Object? expires,
            String? maxAge,
            bool? hostOnly,
            bool? httpOnly,
            String? name,
            String? path,
            bool? secure,
            bool? session,
            String? value,
            Object? extensions)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String domain,
            Object? expires,
            String? maxAge,
            bool? hostOnly,
            bool? httpOnly,
            String? name,
            String? path,
            bool? secure,
            bool? session,
            String? value,
            Object? extensions)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String domain,
            Object? expires,
            String? maxAge,
            bool? hostOnly,
            bool? httpOnly,
            String? name,
            String? path,
            bool? secure,
            bool? session,
            String? value,
            Object? extensions)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionCookie value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionCookie value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionCookie value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionCookie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionCookieCopyWith<PostmanCollectionCookie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionCookieCopyWith<$Res> {
  factory $PostmanCollectionCookieCopyWith(PostmanCollectionCookie value,
          $Res Function(PostmanCollectionCookie) then) =
      _$PostmanCollectionCookieCopyWithImpl<$Res, PostmanCollectionCookie>;
  @useResult
  $Res call(
      {String domain,
      Object? expires,
      String? maxAge,
      bool? hostOnly,
      bool? httpOnly,
      String? name,
      String? path,
      bool? secure,
      bool? session,
      String? value,
      Object? extensions});
}

/// @nodoc
class _$PostmanCollectionCookieCopyWithImpl<$Res,
        $Val extends PostmanCollectionCookie>
    implements $PostmanCollectionCookieCopyWith<$Res> {
  _$PostmanCollectionCookieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? expires = freezed,
    Object? maxAge = freezed,
    Object? hostOnly = freezed,
    Object? httpOnly = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? secure = freezed,
    Object? session = freezed,
    Object? value = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_value.copyWith(
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      expires: freezed == expires ? _value.expires : expires,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as String?,
      hostOnly: freezed == hostOnly
          ? _value.hostOnly
          : hostOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      httpOnly: freezed == httpOnly
          ? _value.httpOnly
          : httpOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      secure: freezed == secure
          ? _value.secure
          : secure // ignore: cast_nullable_to_non_nullable
              as bool?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as bool?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      extensions: freezed == extensions ? _value.extensions : extensions,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionCookieImplCopyWith<$Res>
    implements $PostmanCollectionCookieCopyWith<$Res> {
  factory _$$PostmanCollectionCookieImplCopyWith(
          _$PostmanCollectionCookieImpl value,
          $Res Function(_$PostmanCollectionCookieImpl) then) =
      __$$PostmanCollectionCookieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String domain,
      Object? expires,
      String? maxAge,
      bool? hostOnly,
      bool? httpOnly,
      String? name,
      String? path,
      bool? secure,
      bool? session,
      String? value,
      Object? extensions});
}

/// @nodoc
class __$$PostmanCollectionCookieImplCopyWithImpl<$Res>
    extends _$PostmanCollectionCookieCopyWithImpl<$Res,
        _$PostmanCollectionCookieImpl>
    implements _$$PostmanCollectionCookieImplCopyWith<$Res> {
  __$$PostmanCollectionCookieImplCopyWithImpl(
      _$PostmanCollectionCookieImpl _value,
      $Res Function(_$PostmanCollectionCookieImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
    Object? expires = freezed,
    Object? maxAge = freezed,
    Object? hostOnly = freezed,
    Object? httpOnly = freezed,
    Object? name = freezed,
    Object? path = freezed,
    Object? secure = freezed,
    Object? session = freezed,
    Object? value = freezed,
    Object? extensions = freezed,
  }) {
    return _then(_$PostmanCollectionCookieImpl(
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      expires: freezed == expires ? _value.expires : expires,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as String?,
      hostOnly: freezed == hostOnly
          ? _value.hostOnly
          : hostOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      httpOnly: freezed == httpOnly
          ? _value.httpOnly
          : httpOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      secure: freezed == secure
          ? _value.secure
          : secure // ignore: cast_nullable_to_non_nullable
              as bool?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as bool?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      extensions: freezed == extensions ? _value.extensions : extensions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionCookieImpl extends _PostmanCollectionCookie {
  const _$PostmanCollectionCookieImpl(
      {required this.domain,
      this.expires,
      this.maxAge,
      this.hostOnly,
      this.httpOnly,
      this.name,
      this.path,
      this.secure,
      this.session,
      this.value,
      this.extensions})
      : super._();

  factory _$PostmanCollectionCookieImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionCookieImplFromJson(json);

  @override
  final String domain;
  @override
  final Object? expires;
  @override
  final String? maxAge;
  @override
  final bool? hostOnly;
  @override
  final bool? httpOnly;
  @override
  final String? name;
  @override
  final String? path;
  @override
  final bool? secure;
  @override
  final bool? session;
  @override
  final String? value;
  @override
  final Object? extensions;

  @override
  String toString() {
    return 'PostmanCollectionCookie(domain: $domain, expires: $expires, maxAge: $maxAge, hostOnly: $hostOnly, httpOnly: $httpOnly, name: $name, path: $path, secure: $secure, session: $session, value: $value, extensions: $extensions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionCookieImpl &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality().equals(other.expires, expires) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge) &&
            (identical(other.hostOnly, hostOnly) ||
                other.hostOnly == hostOnly) &&
            (identical(other.httpOnly, httpOnly) ||
                other.httpOnly == httpOnly) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.secure, secure) || other.secure == secure) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.extensions, extensions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      domain,
      const DeepCollectionEquality().hash(expires),
      maxAge,
      hostOnly,
      httpOnly,
      name,
      path,
      secure,
      session,
      value,
      const DeepCollectionEquality().hash(extensions));

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionCookieImplCopyWith<_$PostmanCollectionCookieImpl>
      get copyWith => __$$PostmanCollectionCookieImplCopyWithImpl<
          _$PostmanCollectionCookieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String domain,
            Object? expires,
            String? maxAge,
            bool? hostOnly,
            bool? httpOnly,
            String? name,
            String? path,
            bool? secure,
            bool? session,
            String? value,
            Object? extensions)
        $default,
  ) {
    return $default(domain, expires, maxAge, hostOnly, httpOnly, name, path,
        secure, session, value, extensions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String domain,
            Object? expires,
            String? maxAge,
            bool? hostOnly,
            bool? httpOnly,
            String? name,
            String? path,
            bool? secure,
            bool? session,
            String? value,
            Object? extensions)?
        $default,
  ) {
    return $default?.call(domain, expires, maxAge, hostOnly, httpOnly, name,
        path, secure, session, value, extensions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String domain,
            Object? expires,
            String? maxAge,
            bool? hostOnly,
            bool? httpOnly,
            String? name,
            String? path,
            bool? secure,
            bool? session,
            String? value,
            Object? extensions)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(domain, expires, maxAge, hostOnly, httpOnly, name, path,
          secure, session, value, extensions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionCookie value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionCookie value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionCookie value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionCookieImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionCookie extends PostmanCollectionCookie {
  const factory _PostmanCollectionCookie(
      {required final String domain,
      final Object? expires,
      final String? maxAge,
      final bool? hostOnly,
      final bool? httpOnly,
      final String? name,
      final String? path,
      final bool? secure,
      final bool? session,
      final String? value,
      final Object? extensions}) = _$PostmanCollectionCookieImpl;
  const _PostmanCollectionCookie._() : super._();

  factory _PostmanCollectionCookie.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionCookieImpl.fromJson;

  @override
  String get domain;
  @override
  Object? get expires;
  @override
  String? get maxAge;
  @override
  bool? get hostOnly;
  @override
  bool? get httpOnly;
  @override
  String? get name;
  @override
  String? get path;
  @override
  bool? get secure;
  @override
  bool? get session;
  @override
  String? get value;
  @override
  Object? get extensions;

  /// Create a copy of PostmanCollectionCookie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionCookieImplCopyWith<_$PostmanCollectionCookieImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionCertificate _$PostmanCollectionCertificateFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionCertificate.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionCertificate {
  String? get name => throw _privateConstructorUsedError;
  List<String>? get matches => throw _privateConstructorUsedError;
  PostmanCollectionCertificateSrc? get key =>
      throw _privateConstructorUsedError;
  PostmanCollectionCertificateSrc? get cert =>
      throw _privateConstructorUsedError;
  String? get passphrase => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name,
            List<String>? matches,
            PostmanCollectionCertificateSrc? key,
            PostmanCollectionCertificateSrc? cert,
            String? passphrase)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name,
            List<String>? matches,
            PostmanCollectionCertificateSrc? key,
            PostmanCollectionCertificateSrc? cert,
            String? passphrase)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name,
            List<String>? matches,
            PostmanCollectionCertificateSrc? key,
            PostmanCollectionCertificateSrc? cert,
            String? passphrase)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificate value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionCertificate value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificate value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionCertificate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionCertificateCopyWith<PostmanCollectionCertificate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionCertificateCopyWith<$Res> {
  factory $PostmanCollectionCertificateCopyWith(
          PostmanCollectionCertificate value,
          $Res Function(PostmanCollectionCertificate) then) =
      _$PostmanCollectionCertificateCopyWithImpl<$Res,
          PostmanCollectionCertificate>;
  @useResult
  $Res call(
      {String? name,
      List<String>? matches,
      PostmanCollectionCertificateSrc? key,
      PostmanCollectionCertificateSrc? cert,
      String? passphrase});

  $PostmanCollectionCertificateSrcCopyWith<$Res>? get key;
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get cert;
}

/// @nodoc
class _$PostmanCollectionCertificateCopyWithImpl<$Res,
        $Val extends PostmanCollectionCertificate>
    implements $PostmanCollectionCertificateCopyWith<$Res> {
  _$PostmanCollectionCertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
    Object? key = freezed,
    Object? cert = freezed,
    Object? passphrase = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: freezed == matches
          ? _value.matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionCertificateSrc?,
      cert: freezed == cert
          ? _value.cert
          : cert // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionCertificateSrc?,
      passphrase: freezed == passphrase
          ? _value.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get key {
    if (_value.key == null) {
      return null;
    }

    return $PostmanCollectionCertificateSrcCopyWith<$Res>(_value.key!, (value) {
      return _then(_value.copyWith(key: value) as $Val);
    });
  }

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get cert {
    if (_value.cert == null) {
      return null;
    }

    return $PostmanCollectionCertificateSrcCopyWith<$Res>(_value.cert!,
        (value) {
      return _then(_value.copyWith(cert: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostmanCollectionCertificateImplCopyWith<$Res>
    implements $PostmanCollectionCertificateCopyWith<$Res> {
  factory _$$PostmanCollectionCertificateImplCopyWith(
          _$PostmanCollectionCertificateImpl value,
          $Res Function(_$PostmanCollectionCertificateImpl) then) =
      __$$PostmanCollectionCertificateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      List<String>? matches,
      PostmanCollectionCertificateSrc? key,
      PostmanCollectionCertificateSrc? cert,
      String? passphrase});

  @override
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get key;
  @override
  $PostmanCollectionCertificateSrcCopyWith<$Res>? get cert;
}

/// @nodoc
class __$$PostmanCollectionCertificateImplCopyWithImpl<$Res>
    extends _$PostmanCollectionCertificateCopyWithImpl<$Res,
        _$PostmanCollectionCertificateImpl>
    implements _$$PostmanCollectionCertificateImplCopyWith<$Res> {
  __$$PostmanCollectionCertificateImplCopyWithImpl(
      _$PostmanCollectionCertificateImpl _value,
      $Res Function(_$PostmanCollectionCertificateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? matches = freezed,
    Object? key = freezed,
    Object? cert = freezed,
    Object? passphrase = freezed,
  }) {
    return _then(_$PostmanCollectionCertificateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      matches: freezed == matches
          ? _value._matches
          : matches // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionCertificateSrc?,
      cert: freezed == cert
          ? _value.cert
          : cert // ignore: cast_nullable_to_non_nullable
              as PostmanCollectionCertificateSrc?,
      passphrase: freezed == passphrase
          ? _value.passphrase
          : passphrase // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionCertificateImpl extends _PostmanCollectionCertificate {
  const _$PostmanCollectionCertificateImpl(
      {this.name,
      final List<String>? matches,
      this.key,
      this.cert,
      this.passphrase})
      : _matches = matches,
        super._();

  factory _$PostmanCollectionCertificateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostmanCollectionCertificateImplFromJson(json);

  @override
  final String? name;
  final List<String>? _matches;
  @override
  List<String>? get matches {
    final value = _matches;
    if (value == null) return null;
    if (_matches is EqualUnmodifiableListView) return _matches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostmanCollectionCertificateSrc? key;
  @override
  final PostmanCollectionCertificateSrc? cert;
  @override
  final String? passphrase;

  @override
  String toString() {
    return 'PostmanCollectionCertificate(name: $name, matches: $matches, key: $key, cert: $cert, passphrase: $passphrase)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionCertificateImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._matches, _matches) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.cert, cert) || other.cert == cert) &&
            (identical(other.passphrase, passphrase) ||
                other.passphrase == passphrase));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_matches), key, cert, passphrase);

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionCertificateImplCopyWith<
          _$PostmanCollectionCertificateImpl>
      get copyWith => __$$PostmanCollectionCertificateImplCopyWithImpl<
          _$PostmanCollectionCertificateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name,
            List<String>? matches,
            PostmanCollectionCertificateSrc? key,
            PostmanCollectionCertificateSrc? cert,
            String? passphrase)
        $default,
  ) {
    return $default(name, matches, key, cert, passphrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name,
            List<String>? matches,
            PostmanCollectionCertificateSrc? key,
            PostmanCollectionCertificateSrc? cert,
            String? passphrase)?
        $default,
  ) {
    return $default?.call(name, matches, key, cert, passphrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name,
            List<String>? matches,
            PostmanCollectionCertificateSrc? key,
            PostmanCollectionCertificateSrc? cert,
            String? passphrase)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, matches, key, cert, passphrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificate value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionCertificate value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificate value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionCertificateImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionCertificate
    extends PostmanCollectionCertificate {
  const factory _PostmanCollectionCertificate(
      {final String? name,
      final List<String>? matches,
      final PostmanCollectionCertificateSrc? key,
      final PostmanCollectionCertificateSrc? cert,
      final String? passphrase}) = _$PostmanCollectionCertificateImpl;
  const _PostmanCollectionCertificate._() : super._();

  factory _PostmanCollectionCertificate.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionCertificateImpl.fromJson;

  @override
  String? get name;
  @override
  List<String>? get matches;
  @override
  PostmanCollectionCertificateSrc? get key;
  @override
  PostmanCollectionCertificateSrc? get cert;
  @override
  String? get passphrase;

  /// Create a copy of PostmanCollectionCertificate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionCertificateImplCopyWith<
          _$PostmanCollectionCertificateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionCertificateSrc _$PostmanCollectionCertificateSrcFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionCertificateSrc.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionCertificateSrc {
  String? get src => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? src) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? src)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? src)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificateSrc value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionCertificateSrc value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificateSrc value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionCertificateSrc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionCertificateSrcCopyWith<PostmanCollectionCertificateSrc>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionCertificateSrcCopyWith<$Res> {
  factory $PostmanCollectionCertificateSrcCopyWith(
          PostmanCollectionCertificateSrc value,
          $Res Function(PostmanCollectionCertificateSrc) then) =
      _$PostmanCollectionCertificateSrcCopyWithImpl<$Res,
          PostmanCollectionCertificateSrc>;
  @useResult
  $Res call({String? src});
}

/// @nodoc
class _$PostmanCollectionCertificateSrcCopyWithImpl<$Res,
        $Val extends PostmanCollectionCertificateSrc>
    implements $PostmanCollectionCertificateSrcCopyWith<$Res> {
  _$PostmanCollectionCertificateSrcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = freezed,
  }) {
    return _then(_value.copyWith(
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionCertificateSrcImplCopyWith<$Res>
    implements $PostmanCollectionCertificateSrcCopyWith<$Res> {
  factory _$$PostmanCollectionCertificateSrcImplCopyWith(
          _$PostmanCollectionCertificateSrcImpl value,
          $Res Function(_$PostmanCollectionCertificateSrcImpl) then) =
      __$$PostmanCollectionCertificateSrcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? src});
}

/// @nodoc
class __$$PostmanCollectionCertificateSrcImplCopyWithImpl<$Res>
    extends _$PostmanCollectionCertificateSrcCopyWithImpl<$Res,
        _$PostmanCollectionCertificateSrcImpl>
    implements _$$PostmanCollectionCertificateSrcImplCopyWith<$Res> {
  __$$PostmanCollectionCertificateSrcImplCopyWithImpl(
      _$PostmanCollectionCertificateSrcImpl _value,
      $Res Function(_$PostmanCollectionCertificateSrcImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? src = freezed,
  }) {
    return _then(_$PostmanCollectionCertificateSrcImpl(
      src: freezed == src
          ? _value.src
          : src // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionCertificateSrcImpl
    extends _PostmanCollectionCertificateSrc {
  const _$PostmanCollectionCertificateSrcImpl({this.src}) : super._();

  factory _$PostmanCollectionCertificateSrcImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostmanCollectionCertificateSrcImplFromJson(json);

  @override
  final String? src;

  @override
  String toString() {
    return 'PostmanCollectionCertificateSrc(src: $src)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionCertificateSrcImpl &&
            (identical(other.src, src) || other.src == src));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, src);

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionCertificateSrcImplCopyWith<
          _$PostmanCollectionCertificateSrcImpl>
      get copyWith => __$$PostmanCollectionCertificateSrcImplCopyWithImpl<
          _$PostmanCollectionCertificateSrcImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? src) $default,
  ) {
    return $default(src);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? src)? $default,
  ) {
    return $default?.call(src);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? src)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(src);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificateSrc value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionCertificateSrc value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionCertificateSrc value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionCertificateSrcImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionCertificateSrc
    extends PostmanCollectionCertificateSrc {
  const factory _PostmanCollectionCertificateSrc({final String? src}) =
      _$PostmanCollectionCertificateSrcImpl;
  const _PostmanCollectionCertificateSrc._() : super._();

  factory _PostmanCollectionCertificateSrc.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionCertificateSrcImpl.fromJson;

  @override
  String? get src;

  /// Create a copy of PostmanCollectionCertificateSrc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionCertificateSrcImplCopyWith<
          _$PostmanCollectionCertificateSrcImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionProxyConfig _$PostmanCollectionProxyConfigFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionProxyConfig.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionProxyConfig {
  String? get match => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;
  int? get port => throw _privateConstructorUsedError;
  bool? get tunnel => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? match, String? host, int? port, bool? tunnel,
            bool? disabled)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? match, String? host, int? port, bool? tunnel,
            bool? disabled)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? match, String? host, int? port, bool? tunnel,
            bool? disabled)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionProxyConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionProxyConfig value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionProxyConfig value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionProxyConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionProxyConfigCopyWith<PostmanCollectionProxyConfig>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionProxyConfigCopyWith<$Res> {
  factory $PostmanCollectionProxyConfigCopyWith(
          PostmanCollectionProxyConfig value,
          $Res Function(PostmanCollectionProxyConfig) then) =
      _$PostmanCollectionProxyConfigCopyWithImpl<$Res,
          PostmanCollectionProxyConfig>;
  @useResult
  $Res call(
      {String? match, String? host, int? port, bool? tunnel, bool? disabled});
}

/// @nodoc
class _$PostmanCollectionProxyConfigCopyWithImpl<$Res,
        $Val extends PostmanCollectionProxyConfig>
    implements $PostmanCollectionProxyConfigCopyWith<$Res> {
  _$PostmanCollectionProxyConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? tunnel = freezed,
    Object? disabled = freezed,
  }) {
    return _then(_value.copyWith(
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      tunnel: freezed == tunnel
          ? _value.tunnel
          : tunnel // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionProxyConfigImplCopyWith<$Res>
    implements $PostmanCollectionProxyConfigCopyWith<$Res> {
  factory _$$PostmanCollectionProxyConfigImplCopyWith(
          _$PostmanCollectionProxyConfigImpl value,
          $Res Function(_$PostmanCollectionProxyConfigImpl) then) =
      __$$PostmanCollectionProxyConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? match, String? host, int? port, bool? tunnel, bool? disabled});
}

/// @nodoc
class __$$PostmanCollectionProxyConfigImplCopyWithImpl<$Res>
    extends _$PostmanCollectionProxyConfigCopyWithImpl<$Res,
        _$PostmanCollectionProxyConfigImpl>
    implements _$$PostmanCollectionProxyConfigImplCopyWith<$Res> {
  __$$PostmanCollectionProxyConfigImplCopyWithImpl(
      _$PostmanCollectionProxyConfigImpl _value,
      $Res Function(_$PostmanCollectionProxyConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? match = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? tunnel = freezed,
    Object? disabled = freezed,
  }) {
    return _then(_$PostmanCollectionProxyConfigImpl(
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      tunnel: freezed == tunnel
          ? _value.tunnel
          : tunnel // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionProxyConfigImpl extends _PostmanCollectionProxyConfig {
  const _$PostmanCollectionProxyConfigImpl(
      {this.match, this.host, this.port, this.tunnel, this.disabled})
      : super._();

  factory _$PostmanCollectionProxyConfigImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PostmanCollectionProxyConfigImplFromJson(json);

  @override
  final String? match;
  @override
  final String? host;
  @override
  final int? port;
  @override
  final bool? tunnel;
  @override
  final bool? disabled;

  @override
  String toString() {
    return 'PostmanCollectionProxyConfig(match: $match, host: $host, port: $port, tunnel: $tunnel, disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionProxyConfigImpl &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.tunnel, tunnel) || other.tunnel == tunnel) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, match, host, port, tunnel, disabled);

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionProxyConfigImplCopyWith<
          _$PostmanCollectionProxyConfigImpl>
      get copyWith => __$$PostmanCollectionProxyConfigImplCopyWithImpl<
          _$PostmanCollectionProxyConfigImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? match, String? host, int? port, bool? tunnel,
            bool? disabled)
        $default,
  ) {
    return $default(match, host, port, tunnel, disabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? match, String? host, int? port, bool? tunnel,
            bool? disabled)?
        $default,
  ) {
    return $default?.call(match, host, port, tunnel, disabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? match, String? host, int? port, bool? tunnel,
            bool? disabled)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(match, host, port, tunnel, disabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionProxyConfig value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionProxyConfig value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionProxyConfig value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionProxyConfigImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionProxyConfig
    extends PostmanCollectionProxyConfig {
  const factory _PostmanCollectionProxyConfig(
      {final String? match,
      final String? host,
      final int? port,
      final bool? tunnel,
      final bool? disabled}) = _$PostmanCollectionProxyConfigImpl;
  const _PostmanCollectionProxyConfig._() : super._();

  factory _PostmanCollectionProxyConfig.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionProxyConfigImpl.fromJson;

  @override
  String? get match;
  @override
  String? get host;
  @override
  int? get port;
  @override
  bool? get tunnel;
  @override
  bool? get disabled;

  /// Create a copy of PostmanCollectionProxyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionProxyConfigImplCopyWith<
          _$PostmanCollectionProxyConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PostmanCollectionHeader _$PostmanCollectionHeaderFromJson(
    Map<String, dynamic> json) {
  return _PostmanCollectionHeader.fromJson(json);
}

/// @nodoc
mixin _$PostmanCollectionHeader {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key, String value, String? type, bool? disabled,
            String? description)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key, String value, String? type, bool? disabled,
            String? description)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key, String value, String? type, bool? disabled,
            String? description)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionHeader value) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionHeader value)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionHeader value)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PostmanCollectionHeader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostmanCollectionHeaderCopyWith<PostmanCollectionHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostmanCollectionHeaderCopyWith<$Res> {
  factory $PostmanCollectionHeaderCopyWith(PostmanCollectionHeader value,
          $Res Function(PostmanCollectionHeader) then) =
      _$PostmanCollectionHeaderCopyWithImpl<$Res, PostmanCollectionHeader>;
  @useResult
  $Res call(
      {String key,
      String value,
      String? type,
      bool? disabled,
      String? description});
}

/// @nodoc
class _$PostmanCollectionHeaderCopyWithImpl<$Res,
        $Val extends PostmanCollectionHeader>
    implements $PostmanCollectionHeaderCopyWith<$Res> {
  _$PostmanCollectionHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? type = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostmanCollectionHeaderImplCopyWith<$Res>
    implements $PostmanCollectionHeaderCopyWith<$Res> {
  factory _$$PostmanCollectionHeaderImplCopyWith(
          _$PostmanCollectionHeaderImpl value,
          $Res Function(_$PostmanCollectionHeaderImpl) then) =
      __$$PostmanCollectionHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      String value,
      String? type,
      bool? disabled,
      String? description});
}

/// @nodoc
class __$$PostmanCollectionHeaderImplCopyWithImpl<$Res>
    extends _$PostmanCollectionHeaderCopyWithImpl<$Res,
        _$PostmanCollectionHeaderImpl>
    implements _$$PostmanCollectionHeaderImplCopyWith<$Res> {
  __$$PostmanCollectionHeaderImplCopyWithImpl(
      _$PostmanCollectionHeaderImpl _value,
      $Res Function(_$PostmanCollectionHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? type = freezed,
    Object? disabled = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PostmanCollectionHeaderImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostmanCollectionHeaderImpl extends _PostmanCollectionHeader {
  const _$PostmanCollectionHeaderImpl(
      {required this.key,
      required this.value,
      this.type,
      this.disabled,
      this.description})
      : super._();

  factory _$PostmanCollectionHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostmanCollectionHeaderImplFromJson(json);

  @override
  final String key;
  @override
  final String value;
  @override
  final String? type;
  @override
  final bool? disabled;
  @override
  final String? description;

  @override
  String toString() {
    return 'PostmanCollectionHeader(key: $key, value: $value, type: $type, disabled: $disabled, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostmanCollectionHeaderImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, type, disabled, description);

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostmanCollectionHeaderImplCopyWith<_$PostmanCollectionHeaderImpl>
      get copyWith => __$$PostmanCollectionHeaderImplCopyWithImpl<
          _$PostmanCollectionHeaderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key, String value, String? type, bool? disabled,
            String? description)
        $default,
  ) {
    return $default(key, value, type, disabled, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key, String value, String? type, bool? disabled,
            String? description)?
        $default,
  ) {
    return $default?.call(key, value, type, disabled, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key, String value, String? type, bool? disabled,
            String? description)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(key, value, type, disabled, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PostmanCollectionHeader value) $default,
  ) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PostmanCollectionHeader value)? $default,
  ) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PostmanCollectionHeader value)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PostmanCollectionHeaderImplToJson(
      this,
    );
  }
}

abstract class _PostmanCollectionHeader extends PostmanCollectionHeader {
  const factory _PostmanCollectionHeader(
      {required final String key,
      required final String value,
      final String? type,
      final bool? disabled,
      final String? description}) = _$PostmanCollectionHeaderImpl;
  const _PostmanCollectionHeader._() : super._();

  factory _PostmanCollectionHeader.fromJson(Map<String, dynamic> json) =
      _$PostmanCollectionHeaderImpl.fromJson;

  @override
  String get key;
  @override
  String get value;
  @override
  String? get type;
  @override
  bool? get disabled;
  @override
  String? get description;

  /// Create a copy of PostmanCollectionHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostmanCollectionHeaderImplCopyWith<_$PostmanCollectionHeaderImpl>
      get copyWith => throw _privateConstructorUsedError;
}
