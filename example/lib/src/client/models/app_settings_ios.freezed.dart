// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_ios.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsIos _$AppSettingsIosFromJson(Map<String, dynamic> json) {
  return _AppSettingsIos.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsIos {
  /// Version
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;

  /// Url
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsIos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsIos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsIosCopyWith<AppSettingsIos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsIosCopyWith<$Res> {
  factory $AppSettingsIosCopyWith(
          AppSettingsIos value, $Res Function(AppSettingsIos) then) =
      _$AppSettingsIosCopyWithImpl<$Res, AppSettingsIos>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$AppSettingsIosCopyWithImpl<$Res, $Val extends AppSettingsIos>
    implements $AppSettingsIosCopyWith<$Res> {
  _$AppSettingsIosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsIos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? url = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsIosImplCopyWith<$Res>
    implements $AppSettingsIosCopyWith<$Res> {
  factory _$$AppSettingsIosImplCopyWith(_$AppSettingsIosImpl value,
          $Res Function(_$AppSettingsIosImpl) then) =
      __$$AppSettingsIosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$AppSettingsIosImplCopyWithImpl<$Res>
    extends _$AppSettingsIosCopyWithImpl<$Res, _$AppSettingsIosImpl>
    implements _$$AppSettingsIosImplCopyWith<$Res> {
  __$$AppSettingsIosImplCopyWithImpl(
      _$AppSettingsIosImpl _value, $Res Function(_$AppSettingsIosImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsIos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? url = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AppSettingsIosImpl(
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$AppSettingsIosImpl extends _AppSettingsIos {
  const _$AppSettingsIosImpl(
      {@JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'message') required this.message})
      : super._();

  factory _$AppSettingsIosImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsIosImplFromJson(json);

  /// Version
  @override
  @JsonKey(name: 'version')
  final String version;

  /// Url
  @override
  @JsonKey(name: 'url')
  final String? url;

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AppSettingsIos(version: $version, url: $url, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsIosImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, url, message);

  /// Create a copy of AppSettingsIos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsIosImplCopyWith<_$AppSettingsIosImpl> get copyWith =>
      __$$AppSettingsIosImplCopyWithImpl<_$AppSettingsIosImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsIosImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsIos extends AppSettingsIos {
  const factory _AppSettingsIos(
          {@JsonKey(name: 'version') required final String version,
          @JsonKey(name: 'url') required final String? url,
          @JsonKey(name: 'message') required final String? message}) =
      _$AppSettingsIosImpl;
  const _AppSettingsIos._() : super._();

  factory _AppSettingsIos.fromJson(Map<String, dynamic> json) =
      _$AppSettingsIosImpl.fromJson;

  /// Version
  @override
  @JsonKey(name: 'version')
  String get version;

  /// Url
  @override
  @JsonKey(name: 'url')
  String? get url;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AppSettingsIos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsIosImplCopyWith<_$AppSettingsIosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
