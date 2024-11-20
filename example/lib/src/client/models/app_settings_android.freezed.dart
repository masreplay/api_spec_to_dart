// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_android.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsAndroid _$AppSettingsAndroidFromJson(Map<String, dynamic> json) {
  return _AppSettingsAndroid.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsAndroid {
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsAndroid to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsAndroid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsAndroidCopyWith<AppSettingsAndroid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsAndroidCopyWith<$Res> {
  factory $AppSettingsAndroidCopyWith(
          AppSettingsAndroid value, $Res Function(AppSettingsAndroid) then) =
      _$AppSettingsAndroidCopyWithImpl<$Res, AppSettingsAndroid>;
  @useResult
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$AppSettingsAndroidCopyWithImpl<$Res, $Val extends AppSettingsAndroid>
    implements $AppSettingsAndroidCopyWith<$Res> {
  _$AppSettingsAndroidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsAndroid
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
abstract class _$$AppSettingsAndroidImplCopyWith<$Res>
    implements $AppSettingsAndroidCopyWith<$Res> {
  factory _$$AppSettingsAndroidImplCopyWith(_$AppSettingsAndroidImpl value,
          $Res Function(_$AppSettingsAndroidImpl) then) =
      __$$AppSettingsAndroidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$AppSettingsAndroidImplCopyWithImpl<$Res>
    extends _$AppSettingsAndroidCopyWithImpl<$Res, _$AppSettingsAndroidImpl>
    implements _$$AppSettingsAndroidImplCopyWith<$Res> {
  __$$AppSettingsAndroidImplCopyWithImpl(_$AppSettingsAndroidImpl _value,
      $Res Function(_$AppSettingsAndroidImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsAndroid
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? url = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AppSettingsAndroidImpl(
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
class _$AppSettingsAndroidImpl extends _AppSettingsAndroid {
  const _$AppSettingsAndroidImpl(
      {@JsonKey(name: 'version') required this.version,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'message') required this.message})
      : super._();

  factory _$AppSettingsAndroidImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsAndroidImplFromJson(json);

  @override
  @JsonKey(name: 'version')
  final String version;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString() {
    return 'AppSettingsAndroid(version: $version, url: $url, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsAndroidImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, version, url, message);

  /// Create a copy of AppSettingsAndroid
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsAndroidImplCopyWith<_$AppSettingsAndroidImpl> get copyWith =>
      __$$AppSettingsAndroidImplCopyWithImpl<_$AppSettingsAndroidImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsAndroidImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsAndroid extends AppSettingsAndroid {
  const factory _AppSettingsAndroid(
          {@JsonKey(name: 'version') required final String version,
          @JsonKey(name: 'url') required final String? url,
          @JsonKey(name: 'message') required final String? message}) =
      _$AppSettingsAndroidImpl;
  const _AppSettingsAndroid._() : super._();

  factory _AppSettingsAndroid.fromJson(Map<String, dynamic> json) =
      _$AppSettingsAndroidImpl.fromJson;

  @override
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Create a copy of AppSettingsAndroid
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsAndroidImplCopyWith<_$AppSettingsAndroidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
