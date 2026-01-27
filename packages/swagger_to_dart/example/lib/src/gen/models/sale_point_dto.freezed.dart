// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_point_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalePointDto {
  /// id
  @JsonKey(name: SalePointDto.idKey_)
  String get id;

  /// name
  @JsonKey(name: SalePointDto.nameKey_)
  String get name;

  /// number
  @JsonKey(name: SalePointDto.numberKey_)
  int get number;

  /// isDefault
  @JsonKey(name: SalePointDto.isDefaultKey_)
  bool get isDefault;

  /// users
  @JsonKey(name: SalePointDto.usersKey_)
  List<UserRef> get users;

  /// Create a copy of SalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SalePointDtoCopyWith<SalePointDto> get copyWith =>
      _$SalePointDtoCopyWithImpl<SalePointDto>(
          this as SalePointDto, _$identity);

  /// Serializes this SalePointDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SalePointDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, number, isDefault,
      const DeepCollectionEquality().hash(users));

  @override
  String toString() {
    return 'SalePointDto(id: $id, name: $name, number: $number, isDefault: $isDefault, users: $users)';
  }
}

/// @nodoc
abstract mixin class $SalePointDtoCopyWith<$Res> {
  factory $SalePointDtoCopyWith(
          SalePointDto value, $Res Function(SalePointDto) _then) =
      _$SalePointDtoCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: SalePointDto.idKey_) String id,
      @JsonKey(name: SalePointDto.nameKey_) String name,
      @JsonKey(name: SalePointDto.numberKey_) int number,
      @JsonKey(name: SalePointDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: SalePointDto.usersKey_) List<UserRef> users});
}

/// @nodoc
class _$SalePointDtoCopyWithImpl<$Res> implements $SalePointDtoCopyWith<$Res> {
  _$SalePointDtoCopyWithImpl(this._self, this._then);

  final SalePointDto _self;
  final $Res Function(SalePointDto) _then;

  /// Create a copy of SalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? isDefault = null,
    Object? users = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserRef>,
    ));
  }
}

/// Adds pattern-matching-related methods to [SalePointDto].
extension SalePointDtoPatterns on SalePointDto {
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
    TResult Function(_SalePointDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalePointDto() when $default != null:
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
    TResult Function(_SalePointDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointDto():
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
    TResult? Function(_SalePointDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointDto() when $default != null:
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
            @JsonKey(name: SalePointDto.idKey_) String id,
            @JsonKey(name: SalePointDto.nameKey_) String name,
            @JsonKey(name: SalePointDto.numberKey_) int number,
            @JsonKey(name: SalePointDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: SalePointDto.usersKey_) List<UserRef> users)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SalePointDto() when $default != null:
        return $default(
            _that.id, _that.name, _that.number, _that.isDefault, _that.users);
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
            @JsonKey(name: SalePointDto.idKey_) String id,
            @JsonKey(name: SalePointDto.nameKey_) String name,
            @JsonKey(name: SalePointDto.numberKey_) int number,
            @JsonKey(name: SalePointDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: SalePointDto.usersKey_) List<UserRef> users)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointDto():
        return $default(
            _that.id, _that.name, _that.number, _that.isDefault, _that.users);
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
            @JsonKey(name: SalePointDto.idKey_) String id,
            @JsonKey(name: SalePointDto.nameKey_) String name,
            @JsonKey(name: SalePointDto.numberKey_) int number,
            @JsonKey(name: SalePointDto.isDefaultKey_) bool isDefault,
            @JsonKey(name: SalePointDto.usersKey_) List<UserRef> users)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SalePointDto() when $default != null:
        return $default(
            _that.id, _that.name, _that.number, _that.isDefault, _that.users);
      case _:
        return null;
    }
  }
}

/// @nodoc

@jsonSerializable
class _SalePointDto extends SalePointDto {
  const _SalePointDto(
      {@JsonKey(name: SalePointDto.idKey_) required this.id,
      @JsonKey(name: SalePointDto.nameKey_) required this.name,
      @JsonKey(name: SalePointDto.numberKey_) required this.number,
      @JsonKey(name: SalePointDto.isDefaultKey_) required this.isDefault,
      @JsonKey(name: SalePointDto.usersKey_)
      required final List<UserRef> users})
      : _users = users,
        super._();
  factory _SalePointDto.fromJson(Map<String, dynamic> json) =>
      _$SalePointDtoFromJson(json);

  /// id
  @override
  @JsonKey(name: SalePointDto.idKey_)
  final String id;

  /// name
  @override
  @JsonKey(name: SalePointDto.nameKey_)
  final String name;

  /// number
  @override
  @JsonKey(name: SalePointDto.numberKey_)
  final int number;

  /// isDefault
  @override
  @JsonKey(name: SalePointDto.isDefaultKey_)
  final bool isDefault;

  /// users
  final List<UserRef> _users;

  /// users
  @override
  @JsonKey(name: SalePointDto.usersKey_)
  List<UserRef> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of SalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SalePointDtoCopyWith<_SalePointDto> get copyWith =>
      __$SalePointDtoCopyWithImpl<_SalePointDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SalePointDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SalePointDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, number, isDefault,
      const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'SalePointDto(id: $id, name: $name, number: $number, isDefault: $isDefault, users: $users)';
  }
}

/// @nodoc
abstract mixin class _$SalePointDtoCopyWith<$Res>
    implements $SalePointDtoCopyWith<$Res> {
  factory _$SalePointDtoCopyWith(
          _SalePointDto value, $Res Function(_SalePointDto) _then) =
      __$SalePointDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: SalePointDto.idKey_) String id,
      @JsonKey(name: SalePointDto.nameKey_) String name,
      @JsonKey(name: SalePointDto.numberKey_) int number,
      @JsonKey(name: SalePointDto.isDefaultKey_) bool isDefault,
      @JsonKey(name: SalePointDto.usersKey_) List<UserRef> users});
}

/// @nodoc
class __$SalePointDtoCopyWithImpl<$Res>
    implements _$SalePointDtoCopyWith<$Res> {
  __$SalePointDtoCopyWithImpl(this._self, this._then);

  final _SalePointDto _self;
  final $Res Function(_SalePointDto) _then;

  /// Create a copy of SalePointDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
    Object? isDefault = null,
    Object? users = null,
  }) {
    return _then(_SalePointDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserRef>,
    ));
  }
}
