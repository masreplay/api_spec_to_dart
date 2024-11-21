// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'fallback':
      return HomeResponseFallback.fromJson(json);
    case 'HomeFeedPublic':
      return HomeResponseHomeFeedPublic.fromJson(json);
    case 'HomeStatusPublic':
      return HomeResponseHomeStatusPublic.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'HomeResponse',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$HomeResponse {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(HomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeStatusPublic value) homeStatusPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(HomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeStatusPublic value)? homeStatusPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(HomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeResponseFallback value) fallback,
    required TResult Function(HomeResponseHomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeResponseHomeStatusPublic value)
        homeStatusPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeResponseFallback value)? fallback,
    TResult? Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeResponseFallback value)? fallback,
    TResult Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this HomeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeResponseCopyWith<$Res> {
  factory $HomeResponseCopyWith(
          HomeResponse value, $Res Function(HomeResponse) then) =
      _$HomeResponseCopyWithImpl<$Res, HomeResponse>;
}

/// @nodoc
class _$HomeResponseCopyWithImpl<$Res, $Val extends HomeResponse>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeResponseFallbackImplCopyWith<$Res> {
  factory _$$HomeResponseFallbackImplCopyWith(_$HomeResponseFallbackImpl value,
          $Res Function(_$HomeResponseFallbackImpl) then) =
      __$$HomeResponseFallbackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeResponseFallbackImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseFallbackImpl>
    implements _$$HomeResponseFallbackImplCopyWith<$Res> {
  __$$HomeResponseFallbackImplCopyWithImpl(_$HomeResponseFallbackImpl _value,
      $Res Function(_$HomeResponseFallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseFallbackImpl implements HomeResponseFallback {
  const _$HomeResponseFallbackImpl({final String? $type})
      : $type = $type ?? 'fallback';

  factory _$HomeResponseFallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeResponseFallbackImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeResponse.fallback()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseFallbackImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(HomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeStatusPublic value) homeStatusPublic,
  }) {
    return fallback();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(HomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeStatusPublic value)? homeStatusPublic,
  }) {
    return fallback?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(HomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeResponseFallback value) fallback,
    required TResult Function(HomeResponseHomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeResponseHomeStatusPublic value)
        homeStatusPublic,
  }) {
    return fallback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeResponseFallback value)? fallback,
    TResult? Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
  }) {
    return fallback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeResponseFallback value)? fallback,
    TResult Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseFallbackImplToJson(
      this,
    );
  }
}

abstract class HomeResponseFallback implements HomeResponse {
  const factory HomeResponseFallback() = _$HomeResponseFallbackImpl;

  factory HomeResponseFallback.fromJson(Map<String, dynamic> json) =
      _$HomeResponseFallbackImpl.fromJson;
}

/// @nodoc
abstract class _$$HomeResponseHomeFeedPublicImplCopyWith<$Res> {
  factory _$$HomeResponseHomeFeedPublicImplCopyWith(
          _$HomeResponseHomeFeedPublicImpl value,
          $Res Function(_$HomeResponseHomeFeedPublicImpl) then) =
      __$$HomeResponseHomeFeedPublicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeFeedPublic value});

  $HomeFeedPublicCopyWith<$Res> get value;
}

/// @nodoc
class __$$HomeResponseHomeFeedPublicImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseHomeFeedPublicImpl>
    implements _$$HomeResponseHomeFeedPublicImplCopyWith<$Res> {
  __$$HomeResponseHomeFeedPublicImplCopyWithImpl(
      _$HomeResponseHomeFeedPublicImpl _value,
      $Res Function(_$HomeResponseHomeFeedPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$HomeResponseHomeFeedPublicImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as HomeFeedPublic,
    ));
  }

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeFeedPublicCopyWith<$Res> get value {
    return $HomeFeedPublicCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseHomeFeedPublicImpl implements HomeResponseHomeFeedPublic {
  const _$HomeResponseHomeFeedPublicImpl(this.value, {final String? $type})
      : $type = $type ?? 'HomeFeedPublic';

  factory _$HomeResponseHomeFeedPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeResponseHomeFeedPublicImplFromJson(json);

  @override
  final HomeFeedPublic value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeResponse.homeFeedPublic(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseHomeFeedPublicImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseHomeFeedPublicImplCopyWith<_$HomeResponseHomeFeedPublicImpl>
      get copyWith => __$$HomeResponseHomeFeedPublicImplCopyWithImpl<
          _$HomeResponseHomeFeedPublicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(HomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeStatusPublic value) homeStatusPublic,
  }) {
    return homeFeedPublic(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(HomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeStatusPublic value)? homeStatusPublic,
  }) {
    return homeFeedPublic?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(HomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) {
    if (homeFeedPublic != null) {
      return homeFeedPublic(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeResponseFallback value) fallback,
    required TResult Function(HomeResponseHomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeResponseHomeStatusPublic value)
        homeStatusPublic,
  }) {
    return homeFeedPublic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeResponseFallback value)? fallback,
    TResult? Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
  }) {
    return homeFeedPublic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeResponseFallback value)? fallback,
    TResult Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) {
    if (homeFeedPublic != null) {
      return homeFeedPublic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseHomeFeedPublicImplToJson(
      this,
    );
  }
}

abstract class HomeResponseHomeFeedPublic implements HomeResponse {
  const factory HomeResponseHomeFeedPublic(final HomeFeedPublic value) =
      _$HomeResponseHomeFeedPublicImpl;

  factory HomeResponseHomeFeedPublic.fromJson(Map<String, dynamic> json) =
      _$HomeResponseHomeFeedPublicImpl.fromJson;

  HomeFeedPublic get value;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseHomeFeedPublicImplCopyWith<_$HomeResponseHomeFeedPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeResponseHomeStatusPublicImplCopyWith<$Res> {
  factory _$$HomeResponseHomeStatusPublicImplCopyWith(
          _$HomeResponseHomeStatusPublicImpl value,
          $Res Function(_$HomeResponseHomeStatusPublicImpl) then) =
      __$$HomeResponseHomeStatusPublicImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HomeStatusPublic value});

  $HomeStatusPublicCopyWith<$Res> get value;
}

/// @nodoc
class __$$HomeResponseHomeStatusPublicImplCopyWithImpl<$Res>
    extends _$HomeResponseCopyWithImpl<$Res, _$HomeResponseHomeStatusPublicImpl>
    implements _$$HomeResponseHomeStatusPublicImplCopyWith<$Res> {
  __$$HomeResponseHomeStatusPublicImplCopyWithImpl(
      _$HomeResponseHomeStatusPublicImpl _value,
      $Res Function(_$HomeResponseHomeStatusPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$HomeResponseHomeStatusPublicImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as HomeStatusPublic,
    ));
  }

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeStatusPublicCopyWith<$Res> get value {
    return $HomeStatusPublicCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeResponseHomeStatusPublicImpl
    implements HomeResponseHomeStatusPublic {
  const _$HomeResponseHomeStatusPublicImpl(this.value, {final String? $type})
      : $type = $type ?? 'HomeStatusPublic';

  factory _$HomeResponseHomeStatusPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeResponseHomeStatusPublicImplFromJson(json);

  @override
  final HomeStatusPublic value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'HomeResponse.homeStatusPublic(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeResponseHomeStatusPublicImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeResponseHomeStatusPublicImplCopyWith<
          _$HomeResponseHomeStatusPublicImpl>
      get copyWith => __$$HomeResponseHomeStatusPublicImplCopyWithImpl<
          _$HomeResponseHomeStatusPublicImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fallback,
    required TResult Function(HomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeStatusPublic value) homeStatusPublic,
  }) {
    return homeStatusPublic(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fallback,
    TResult? Function(HomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeStatusPublic value)? homeStatusPublic,
  }) {
    return homeStatusPublic?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fallback,
    TResult Function(HomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) {
    if (homeStatusPublic != null) {
      return homeStatusPublic(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeResponseFallback value) fallback,
    required TResult Function(HomeResponseHomeFeedPublic value) homeFeedPublic,
    required TResult Function(HomeResponseHomeStatusPublic value)
        homeStatusPublic,
  }) {
    return homeStatusPublic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeResponseFallback value)? fallback,
    TResult? Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult? Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
  }) {
    return homeStatusPublic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeResponseFallback value)? fallback,
    TResult Function(HomeResponseHomeFeedPublic value)? homeFeedPublic,
    TResult Function(HomeResponseHomeStatusPublic value)? homeStatusPublic,
    required TResult orElse(),
  }) {
    if (homeStatusPublic != null) {
      return homeStatusPublic(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeResponseHomeStatusPublicImplToJson(
      this,
    );
  }
}

abstract class HomeResponseHomeStatusPublic implements HomeResponse {
  const factory HomeResponseHomeStatusPublic(final HomeStatusPublic value) =
      _$HomeResponseHomeStatusPublicImpl;

  factory HomeResponseHomeStatusPublic.fromJson(Map<String, dynamic> json) =
      _$HomeResponseHomeStatusPublicImpl.fromJson;

  HomeStatusPublic get value;

  /// Create a copy of HomeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeResponseHomeStatusPublicImplCopyWith<
          _$HomeResponseHomeStatusPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
