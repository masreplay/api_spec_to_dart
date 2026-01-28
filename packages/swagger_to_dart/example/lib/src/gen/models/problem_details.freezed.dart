// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'problem_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProblemDetails {
  /// type
  @JsonKey(name: ProblemDetails.typeKey_)
  String? get type;

  /// title
  @JsonKey(name: ProblemDetails.titleKey_)
  String? get title;

  /// status
  @JsonKey(name: ProblemDetails.statusKey_)
  int? get status;

  /// detail
  @JsonKey(name: ProblemDetails.detailKey_)
  String? get detail;

  /// instance
  @JsonKey(name: ProblemDetails.instanceKey_)
  String? get instance;

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProblemDetailsCopyWith<ProblemDetails> get copyWith =>
      _$ProblemDetailsCopyWithImpl<ProblemDetails>(
          this as ProblemDetails, _$identity);

  /// Serializes this ProblemDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProblemDetails &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.instance, instance) ||
                other.instance == instance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, status, detail, instance);

  @override
  String toString() {
    return 'ProblemDetails(type: $type, title: $title, status: $status, detail: $detail, instance: $instance)';
  }
}

/// @nodoc
abstract mixin class $ProblemDetailsCopyWith<$Res> {
  factory $ProblemDetailsCopyWith(
          ProblemDetails value, $Res Function(ProblemDetails) _then) =
      _$ProblemDetailsCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ProblemDetails.typeKey_) String? type,
      @JsonKey(name: ProblemDetails.titleKey_) String? title,
      @JsonKey(name: ProblemDetails.statusKey_) int? status,
      @JsonKey(name: ProblemDetails.detailKey_) String? detail,
      @JsonKey(name: ProblemDetails.instanceKey_) String? instance});
}

/// @nodoc
class _$ProblemDetailsCopyWithImpl<$Res>
    implements $ProblemDetailsCopyWith<$Res> {
  _$ProblemDetailsCopyWithImpl(this._self, this._then);

  final ProblemDetails _self;
  final $Res Function(ProblemDetails) _then;

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? instance = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _self.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProblemDetails].
extension ProblemDetailsPatterns on ProblemDetails {
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
    TResult Function(_ProblemDetails value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProblemDetails() when $default != null:
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
    TResult Function(_ProblemDetails value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemDetails():
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
    TResult? Function(_ProblemDetails value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemDetails() when $default != null:
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
            @JsonKey(name: ProblemDetails.typeKey_) String? type,
            @JsonKey(name: ProblemDetails.titleKey_) String? title,
            @JsonKey(name: ProblemDetails.statusKey_) int? status,
            @JsonKey(name: ProblemDetails.detailKey_) String? detail,
            @JsonKey(name: ProblemDetails.instanceKey_) String? instance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProblemDetails() when $default != null:
        return $default(_that.type, _that.title, _that.status, _that.detail,
            _that.instance);
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
            @JsonKey(name: ProblemDetails.typeKey_) String? type,
            @JsonKey(name: ProblemDetails.titleKey_) String? title,
            @JsonKey(name: ProblemDetails.statusKey_) int? status,
            @JsonKey(name: ProblemDetails.detailKey_) String? detail,
            @JsonKey(name: ProblemDetails.instanceKey_) String? instance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemDetails():
        return $default(_that.type, _that.title, _that.status, _that.detail,
            _that.instance);
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
            @JsonKey(name: ProblemDetails.typeKey_) String? type,
            @JsonKey(name: ProblemDetails.titleKey_) String? title,
            @JsonKey(name: ProblemDetails.statusKey_) int? status,
            @JsonKey(name: ProblemDetails.detailKey_) String? detail,
            @JsonKey(name: ProblemDetails.instanceKey_) String? instance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProblemDetails() when $default != null:
        return $default(_that.type, _that.title, _that.status, _that.detail,
            _that.instance);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _ProblemDetails extends ProblemDetails {
  const _ProblemDetails(
      {@JsonKey(name: ProblemDetails.typeKey_) this.type,
      @JsonKey(name: ProblemDetails.titleKey_) this.title,
      @JsonKey(name: ProblemDetails.statusKey_) this.status,
      @JsonKey(name: ProblemDetails.detailKey_) this.detail,
      @JsonKey(name: ProblemDetails.instanceKey_) this.instance})
      : super._();
  factory _ProblemDetails.fromJson(Map<String, dynamic> json) =>
      _$ProblemDetailsFromJson(json);

  /// type
  @override
  @JsonKey(name: ProblemDetails.typeKey_)
  final String? type;

  /// title
  @override
  @JsonKey(name: ProblemDetails.titleKey_)
  final String? title;

  /// status
  @override
  @JsonKey(name: ProblemDetails.statusKey_)
  final int? status;

  /// detail
  @override
  @JsonKey(name: ProblemDetails.detailKey_)
  final String? detail;

  /// instance
  @override
  @JsonKey(name: ProblemDetails.instanceKey_)
  final String? instance;

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProblemDetailsCopyWith<_ProblemDetails> get copyWith =>
      __$ProblemDetailsCopyWithImpl<_ProblemDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProblemDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProblemDetails &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.instance, instance) ||
                other.instance == instance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, status, detail, instance);

  @override
  String toString() {
    return 'ProblemDetails(type: $type, title: $title, status: $status, detail: $detail, instance: $instance)';
  }
}

/// @nodoc
abstract mixin class _$ProblemDetailsCopyWith<$Res>
    implements $ProblemDetailsCopyWith<$Res> {
  factory _$ProblemDetailsCopyWith(
          _ProblemDetails value, $Res Function(_ProblemDetails) _then) =
      __$ProblemDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ProblemDetails.typeKey_) String? type,
      @JsonKey(name: ProblemDetails.titleKey_) String? title,
      @JsonKey(name: ProblemDetails.statusKey_) int? status,
      @JsonKey(name: ProblemDetails.detailKey_) String? detail,
      @JsonKey(name: ProblemDetails.instanceKey_) String? instance});
}

/// @nodoc
class __$ProblemDetailsCopyWithImpl<$Res>
    implements _$ProblemDetailsCopyWith<$Res> {
  __$ProblemDetailsCopyWithImpl(this._self, this._then);

  final _ProblemDetails _self;
  final $Res Function(_ProblemDetails) _then;

  /// Create a copy of ProblemDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? detail = freezed,
    Object? instance = freezed,
  }) {
    return _then(_ProblemDetails(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: freezed == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      instance: freezed == instance
          ? _self.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
