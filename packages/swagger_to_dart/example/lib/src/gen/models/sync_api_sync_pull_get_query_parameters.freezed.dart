// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_api_sync_pull_get_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncApiSyncPullGetQueryParameters {
  /// lastId
  @JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_)
  String? get lastId;

  /// pageSize
  @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
  int get pageSize;

  /// Create a copy of SyncApiSyncPullGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SyncApiSyncPullGetQueryParametersCopyWith<SyncApiSyncPullGetQueryParameters>
      get copyWith => _$SyncApiSyncPullGetQueryParametersCopyWithImpl<
              SyncApiSyncPullGetQueryParameters>(
          this as SyncApiSyncPullGetQueryParameters, _$identity);

  /// Serializes this SyncApiSyncPullGetQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SyncApiSyncPullGetQueryParameters &&
            (identical(other.lastId, lastId) || other.lastId == lastId) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lastId, pageSize);

  @override
  String toString() {
    return 'SyncApiSyncPullGetQueryParameters(lastId: $lastId, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class $SyncApiSyncPullGetQueryParametersCopyWith<$Res> {
  factory $SyncApiSyncPullGetQueryParametersCopyWith(
          SyncApiSyncPullGetQueryParameters value,
          $Res Function(SyncApiSyncPullGetQueryParameters) _then) =
      _$SyncApiSyncPullGetQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_)
      String? lastId,
      @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
      int pageSize});
}

/// @nodoc
class _$SyncApiSyncPullGetQueryParametersCopyWithImpl<$Res>
    implements $SyncApiSyncPullGetQueryParametersCopyWith<$Res> {
  _$SyncApiSyncPullGetQueryParametersCopyWithImpl(this._self, this._then);

  final SyncApiSyncPullGetQueryParameters _self;
  final $Res Function(SyncApiSyncPullGetQueryParameters) _then;

  /// Create a copy of SyncApiSyncPullGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastId = freezed,
    Object? pageSize = null,
  }) {
    return _then(_self.copyWith(
      lastId: freezed == lastId
          ? _self.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [SyncApiSyncPullGetQueryParameters].
extension SyncApiSyncPullGetQueryParametersPatterns
    on SyncApiSyncPullGetQueryParameters {
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
    TResult Function(_SyncApiSyncPullGetQueryParameters value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SyncApiSyncPullGetQueryParameters() when $default != null:
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
    TResult Function(_SyncApiSyncPullGetQueryParameters value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyncApiSyncPullGetQueryParameters():
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
    TResult? Function(_SyncApiSyncPullGetQueryParameters value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyncApiSyncPullGetQueryParameters() when $default != null:
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
            @JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_)
            String? lastId,
            @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
            int pageSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SyncApiSyncPullGetQueryParameters() when $default != null:
        return $default(_that.lastId, _that.pageSize);
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
            @JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_)
            String? lastId,
            @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
            int pageSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyncApiSyncPullGetQueryParameters():
        return $default(_that.lastId, _that.pageSize);
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
            @JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_)
            String? lastId,
            @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
            int pageSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SyncApiSyncPullGetQueryParameters() when $default != null:
        return $default(_that.lastId, _that.pageSize);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _SyncApiSyncPullGetQueryParameters
    extends SyncApiSyncPullGetQueryParameters {
  const _SyncApiSyncPullGetQueryParameters(
      {@JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_) this.lastId,
      @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
      this.pageSize = 1000})
      : super._();
  factory _SyncApiSyncPullGetQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$SyncApiSyncPullGetQueryParametersFromJson(json);

  /// lastId
  @override
  @JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_)
  final String? lastId;

  /// pageSize
  @override
  @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
  final int pageSize;

  /// Create a copy of SyncApiSyncPullGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SyncApiSyncPullGetQueryParametersCopyWith<
          _SyncApiSyncPullGetQueryParameters>
      get copyWith => __$SyncApiSyncPullGetQueryParametersCopyWithImpl<
          _SyncApiSyncPullGetQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SyncApiSyncPullGetQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SyncApiSyncPullGetQueryParameters &&
            (identical(other.lastId, lastId) || other.lastId == lastId) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lastId, pageSize);

  @override
  String toString() {
    return 'SyncApiSyncPullGetQueryParameters(lastId: $lastId, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class _$SyncApiSyncPullGetQueryParametersCopyWith<$Res>
    implements $SyncApiSyncPullGetQueryParametersCopyWith<$Res> {
  factory _$SyncApiSyncPullGetQueryParametersCopyWith(
          _SyncApiSyncPullGetQueryParameters value,
          $Res Function(_SyncApiSyncPullGetQueryParameters) _then) =
      __$SyncApiSyncPullGetQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: SyncApiSyncPullGetQueryParameters.lastIdKey_)
      String? lastId,
      @JsonKey(name: SyncApiSyncPullGetQueryParameters.pageSizeKey_)
      int pageSize});
}

/// @nodoc
class __$SyncApiSyncPullGetQueryParametersCopyWithImpl<$Res>
    implements _$SyncApiSyncPullGetQueryParametersCopyWith<$Res> {
  __$SyncApiSyncPullGetQueryParametersCopyWithImpl(this._self, this._then);

  final _SyncApiSyncPullGetQueryParameters _self;
  final $Res Function(_SyncApiSyncPullGetQueryParameters) _then;

  /// Create a copy of SyncApiSyncPullGetQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? lastId = freezed,
    Object? pageSize = null,
  }) {
    return _then(_SyncApiSyncPullGetQueryParameters(
      lastId: freezed == lastId
          ? _self.lastId
          : lastId // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
