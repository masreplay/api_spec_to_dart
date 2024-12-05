// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_api_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenApiInfo _$OpenApiInfoFromJson(Map<String, dynamic> json) {
  return _OpenApiInfo.fromJson(json);
}

/// @nodoc
mixin _$OpenApiInfo {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String? get version => throw _privateConstructorUsedError;

  /// Serializes this OpenApiInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenApiInfoCopyWith<OpenApiInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenApiInfoCopyWith<$Res> {
  factory $OpenApiInfoCopyWith(
          OpenApiInfo value, $Res Function(OpenApiInfo) then) =
      _$OpenApiInfoCopyWithImpl<$Res, OpenApiInfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class _$OpenApiInfoCopyWithImpl<$Res, $Val extends OpenApiInfo>
    implements $OpenApiInfoCopyWith<$Res> {
  _$OpenApiInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? version = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenApiInfoImplCopyWith<$Res>
    implements $OpenApiInfoCopyWith<$Res> {
  factory _$$OpenApiInfoImplCopyWith(
          _$OpenApiInfoImpl value, $Res Function(_$OpenApiInfoImpl) then) =
      __$$OpenApiInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'version') String? version});
}

/// @nodoc
class __$$OpenApiInfoImplCopyWithImpl<$Res>
    extends _$OpenApiInfoCopyWithImpl<$Res, _$OpenApiInfoImpl>
    implements _$$OpenApiInfoImplCopyWith<$Res> {
  __$$OpenApiInfoImplCopyWithImpl(
      _$OpenApiInfoImpl _value, $Res Function(_$OpenApiInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? version = freezed,
  }) {
    return _then(_$OpenApiInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenApiInfoImpl extends _OpenApiInfo {
  const _$OpenApiInfoImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'version') required this.version})
      : super._();

  factory _$OpenApiInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenApiInfoImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'version')
  final String? version;

  @override
  String toString() {
    return 'OpenApiInfo(title: $title, description: $description, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenApiInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, version);

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenApiInfoImplCopyWith<_$OpenApiInfoImpl> get copyWith =>
      __$$OpenApiInfoImplCopyWithImpl<_$OpenApiInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenApiInfoImplToJson(
      this,
    );
  }
}

abstract class _OpenApiInfo extends OpenApiInfo {
  const factory _OpenApiInfo(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'version') required final String? version}) =
      _$OpenApiInfoImpl;
  const _OpenApiInfo._() : super._();

  factory _OpenApiInfo.fromJson(Map<String, dynamic> json) =
      _$OpenApiInfoImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'version')
  String? get version;

  /// Create a copy of OpenApiInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenApiInfoImplCopyWith<_$OpenApiInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
