// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsResponse _$AppSettingsResponseFromJson(Map<String, dynamic> json) {
  return _AppSettingsResponse.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsResponse {
  @JsonKey(name: 'language')
  String get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'privacy_policy_url')
  String get privacyPolicyUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'terms_of_service_url')
  String get termsOfServiceUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'about_url')
  String get aboutUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'update')
  AppSettingsUpdate get update => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsResponseCopyWith<AppSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsResponseCopyWith<$Res> {
  factory $AppSettingsResponseCopyWith(
          AppSettingsResponse value, $Res Function(AppSettingsResponse) then) =
      _$AppSettingsResponseCopyWithImpl<$Res, AppSettingsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'privacy_policy_url') String privacyPolicyUrl,
      @JsonKey(name: 'terms_of_service_url') String termsOfServiceUrl,
      @JsonKey(name: 'about_url') String aboutUrl,
      @JsonKey(name: 'update') AppSettingsUpdate update,
      @JsonKey(name: 'version') String? version});

  $AppSettingsUpdateCopyWith<$Res> get update;
}

/// @nodoc
class _$AppSettingsResponseCopyWithImpl<$Res, $Val extends AppSettingsResponse>
    implements $AppSettingsResponseCopyWith<$Res> {
  _$AppSettingsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? privacyPolicyUrl = null,
    Object? termsOfServiceUrl = null,
    Object? aboutUrl = null,
    Object? update = null,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyUrl: null == privacyPolicyUrl
          ? _value.privacyPolicyUrl
          : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfServiceUrl: null == termsOfServiceUrl
          ? _value.termsOfServiceUrl
          : termsOfServiceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      aboutUrl: null == aboutUrl
          ? _value.aboutUrl
          : aboutUrl // ignore: cast_nullable_to_non_nullable
              as String,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as AppSettingsUpdate,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of AppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsUpdateCopyWith<$Res> get update {
    return $AppSettingsUpdateCopyWith<$Res>(_value.update, (value) {
      return _then(_value.copyWith(update: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppSettingsResponseImplCopyWith<$Res>
    implements $AppSettingsResponseCopyWith<$Res> {
  factory _$$AppSettingsResponseImplCopyWith(_$AppSettingsResponseImpl value,
          $Res Function(_$AppSettingsResponseImpl) then) =
      __$$AppSettingsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language') String language,
      @JsonKey(name: 'privacy_policy_url') String privacyPolicyUrl,
      @JsonKey(name: 'terms_of_service_url') String termsOfServiceUrl,
      @JsonKey(name: 'about_url') String aboutUrl,
      @JsonKey(name: 'update') AppSettingsUpdate update,
      @JsonKey(name: 'version') String? version});

  @override
  $AppSettingsUpdateCopyWith<$Res> get update;
}

/// @nodoc
class __$$AppSettingsResponseImplCopyWithImpl<$Res>
    extends _$AppSettingsResponseCopyWithImpl<$Res, _$AppSettingsResponseImpl>
    implements _$$AppSettingsResponseImplCopyWith<$Res> {
  __$$AppSettingsResponseImplCopyWithImpl(_$AppSettingsResponseImpl _value,
      $Res Function(_$AppSettingsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? privacyPolicyUrl = null,
    Object? termsOfServiceUrl = null,
    Object? aboutUrl = null,
    Object? update = null,
    Object? version = freezed,
  }) {
    return _then(_$AppSettingsResponseImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      privacyPolicyUrl: null == privacyPolicyUrl
          ? _value.privacyPolicyUrl
          : privacyPolicyUrl // ignore: cast_nullable_to_non_nullable
              as String,
      termsOfServiceUrl: null == termsOfServiceUrl
          ? _value.termsOfServiceUrl
          : termsOfServiceUrl // ignore: cast_nullable_to_non_nullable
              as String,
      aboutUrl: null == aboutUrl
          ? _value.aboutUrl
          : aboutUrl // ignore: cast_nullable_to_non_nullable
              as String,
      update: null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as AppSettingsUpdate,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsResponseImpl implements _AppSettingsResponse {
  const _$AppSettingsResponseImpl(
      {@JsonKey(name: 'language') required this.language,
      @JsonKey(name: 'privacy_policy_url') required this.privacyPolicyUrl,
      @JsonKey(name: 'terms_of_service_url') required this.termsOfServiceUrl,
      @JsonKey(name: 'about_url') required this.aboutUrl,
      @JsonKey(name: 'update') required this.update,
      @JsonKey(name: 'version') required this.version});

  factory _$AppSettingsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsResponseImplFromJson(json);

  @override
  @JsonKey(name: 'language')
  final String language;
  @override
  @JsonKey(name: 'privacy_policy_url')
  final String privacyPolicyUrl;
  @override
  @JsonKey(name: 'terms_of_service_url')
  final String termsOfServiceUrl;
  @override
  @JsonKey(name: 'about_url')
  final String aboutUrl;
  @override
  @JsonKey(name: 'update')
  final AppSettingsUpdate update;
  @override
  @JsonKey(name: 'version')
  final String? version;

  @override
  String toString() {
    return 'AppSettingsResponse(language: $language, privacyPolicyUrl: $privacyPolicyUrl, termsOfServiceUrl: $termsOfServiceUrl, aboutUrl: $aboutUrl, update: $update, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsResponseImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.privacyPolicyUrl, privacyPolicyUrl) ||
                other.privacyPolicyUrl == privacyPolicyUrl) &&
            (identical(other.termsOfServiceUrl, termsOfServiceUrl) ||
                other.termsOfServiceUrl == termsOfServiceUrl) &&
            (identical(other.aboutUrl, aboutUrl) ||
                other.aboutUrl == aboutUrl) &&
            (identical(other.update, update) || other.update == update) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, language, privacyPolicyUrl,
      termsOfServiceUrl, aboutUrl, update, version);

  /// Create a copy of AppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsResponseImplCopyWith<_$AppSettingsResponseImpl> get copyWith =>
      __$$AppSettingsResponseImplCopyWithImpl<_$AppSettingsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsResponseImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsResponse implements AppSettingsResponse {
  const factory _AppSettingsResponse(
          {@JsonKey(name: 'language') required final String language,
          @JsonKey(name: 'privacy_policy_url')
          required final String privacyPolicyUrl,
          @JsonKey(name: 'terms_of_service_url')
          required final String termsOfServiceUrl,
          @JsonKey(name: 'about_url') required final String aboutUrl,
          @JsonKey(name: 'update') required final AppSettingsUpdate update,
          @JsonKey(name: 'version') required final String? version}) =
      _$AppSettingsResponseImpl;

  factory _AppSettingsResponse.fromJson(Map<String, dynamic> json) =
      _$AppSettingsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'language')
  String get language;
  @override
  @JsonKey(name: 'privacy_policy_url')
  String get privacyPolicyUrl;
  @override
  @JsonKey(name: 'terms_of_service_url')
  String get termsOfServiceUrl;
  @override
  @JsonKey(name: 'about_url')
  String get aboutUrl;
  @override
  @JsonKey(name: 'update')
  AppSettingsUpdate get update;
  @override
  @JsonKey(name: 'version')
  String? get version;

  /// Create a copy of AppSettingsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsResponseImplCopyWith<_$AppSettingsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
