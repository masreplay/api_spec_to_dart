// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'domain_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DomainModel {
  /// domain
  @JsonKey(name: DomainModel.domainKey)
  String get domain;

  /// Create a copy of DomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DomainModelCopyWith<DomainModel> get copyWith =>
      _$DomainModelCopyWithImpl<DomainModel>(this as DomainModel, _$identity);

  /// Serializes this DomainModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DomainModel &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, domain);

  @override
  String toString() {
    return 'DomainModel(domain: $domain)';
  }
}

/// @nodoc
abstract mixin class $DomainModelCopyWith<$Res> {
  factory $DomainModelCopyWith(
          DomainModel value, $Res Function(DomainModel) _then) =
      _$DomainModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: DomainModel.domainKey) String domain});
}

/// @nodoc
class _$DomainModelCopyWithImpl<$Res> implements $DomainModelCopyWith<$Res> {
  _$DomainModelCopyWithImpl(this._self, this._then);

  final DomainModel _self;
  final $Res Function(DomainModel) _then;

  /// Create a copy of DomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? domain = null,
  }) {
    return _then(_self.copyWith(
      domain: null == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DomainModel].
extension DomainModelPatterns on DomainModel {
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
    TResult Function(_DomainModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DomainModel() when $default != null:
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
    TResult Function(_DomainModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DomainModel():
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
    TResult? Function(_DomainModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DomainModel() when $default != null:
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
    TResult Function(@JsonKey(name: DomainModel.domainKey) String domain)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DomainModel() when $default != null:
        return $default(_that.domain);
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
    TResult Function(@JsonKey(name: DomainModel.domainKey) String domain)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DomainModel():
        return $default(_that.domain);
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
    TResult? Function(@JsonKey(name: DomainModel.domainKey) String domain)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DomainModel() when $default != null:
        return $default(_that.domain);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _DomainModel extends DomainModel {
  const _DomainModel(
      {@JsonKey(name: DomainModel.domainKey) required this.domain})
      : super._();
  factory _DomainModel.fromJson(Map<String, dynamic> json) =>
      _$DomainModelFromJson(json);

  /// domain
  @override
  @JsonKey(name: DomainModel.domainKey)
  final String domain;

  /// Create a copy of DomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DomainModelCopyWith<_DomainModel> get copyWith =>
      __$DomainModelCopyWithImpl<_DomainModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DomainModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DomainModel &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, domain);

  @override
  String toString() {
    return 'DomainModel(domain: $domain)';
  }
}

/// @nodoc
abstract mixin class _$DomainModelCopyWith<$Res>
    implements $DomainModelCopyWith<$Res> {
  factory _$DomainModelCopyWith(
          _DomainModel value, $Res Function(_DomainModel) _then) =
      __$DomainModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: DomainModel.domainKey) String domain});
}

/// @nodoc
class __$DomainModelCopyWithImpl<$Res> implements _$DomainModelCopyWith<$Res> {
  __$DomainModelCopyWithImpl(this._self, this._then);

  final _DomainModel _self;
  final $Res Function(_DomainModel) _then;

  /// Create a copy of DomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? domain = null,
  }) {
    return _then(_DomainModel(
      domain: null == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
