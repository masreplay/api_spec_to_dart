// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenApiInfo {
  @JsonKey(name: 'title')
  String get title;
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'version')
  String? get version;

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OpenApiInfoCopyWith<OpenApiInfo> get copyWith =>
      _$OpenApiInfoCopyWithImpl<OpenApiInfo>(this as OpenApiInfo, _$identity);

  /// Serializes this OpenApiInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OpenApiInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, version);

  @override
  String toString() {
    return 'OpenApiInfo(title: $title, description: $description, version: $version)';
  }
}

/// @nodoc
abstract mixin class $OpenApiInfoCopyWith<$Res> {
  factory $OpenApiInfoCopyWith(
    OpenApiInfo value,
    $Res Function(OpenApiInfo) _then,
  ) = _$OpenApiInfoCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'version') String? version,
  });
}

/// @nodoc
class _$OpenApiInfoCopyWithImpl<$Res> implements $OpenApiInfoCopyWith<$Res> {
  _$OpenApiInfoCopyWithImpl(this._self, this._then);

  final OpenApiInfo _self;
  final $Res Function(OpenApiInfo) _then;

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? version = freezed,
  }) {
    return _then(
      _self.copyWith(
        title:
            null == title
                ? _self.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _self.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        version:
            freezed == version
                ? _self.version
                : version // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _OpenApiInfo extends OpenApiInfo {
  const _OpenApiInfo({
    @JsonKey(name: 'title') required this.title,
    @JsonKey(name: 'description') required this.description,
    @JsonKey(name: 'version') required this.version,
  }) : super._();
  factory _OpenApiInfo.fromJson(Map<String, dynamic> json) =>
      _$OpenApiInfoFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'version')
  final String? version;

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OpenApiInfoCopyWith<_OpenApiInfo> get copyWith =>
      __$OpenApiInfoCopyWithImpl<_OpenApiInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OpenApiInfoToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OpenApiInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, version);

  @override
  String toString() {
    return 'OpenApiInfo(title: $title, description: $description, version: $version)';
  }
}

/// @nodoc
abstract mixin class _$OpenApiInfoCopyWith<$Res>
    implements $OpenApiInfoCopyWith<$Res> {
  factory _$OpenApiInfoCopyWith(
    _OpenApiInfo value,
    $Res Function(_OpenApiInfo) _then,
  ) = __$OpenApiInfoCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'title') String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'version') String? version,
  });
}

/// @nodoc
class __$OpenApiInfoCopyWithImpl<$Res> implements _$OpenApiInfoCopyWith<$Res> {
  __$OpenApiInfoCopyWithImpl(this._self, this._then);

  final _OpenApiInfo _self;
  final $Res Function(_OpenApiInfo) _then;

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? version = freezed,
  }) {
    return _then(
      _OpenApiInfo(
        title:
            null == title
                ? _self.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _self.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        version:
            freezed == version
                ? _self.version
                : version // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}
