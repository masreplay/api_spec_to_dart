// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ekyc_download_license_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EkycDownloadLicensePublic _$EkycDownloadLicensePublicFromJson(
    Map<String, dynamic> json) {
  return _EkycDownloadLicensePublic.fromJson(json);
}

/// @nodoc
mixin _$EkycDownloadLicensePublic {
  /// Content
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this EkycDownloadLicensePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EkycDownloadLicensePublicCopyWith<EkycDownloadLicensePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EkycDownloadLicensePublicCopyWith<$Res> {
  factory $EkycDownloadLicensePublicCopyWith(EkycDownloadLicensePublic value,
          $Res Function(EkycDownloadLicensePublic) then) =
      _$EkycDownloadLicensePublicCopyWithImpl<$Res, EkycDownloadLicensePublic>;
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class _$EkycDownloadLicensePublicCopyWithImpl<$Res,
        $Val extends EkycDownloadLicensePublic>
    implements $EkycDownloadLicensePublicCopyWith<$Res> {
  _$EkycDownloadLicensePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EkycDownloadLicensePublicImplCopyWith<$Res>
    implements $EkycDownloadLicensePublicCopyWith<$Res> {
  factory _$$EkycDownloadLicensePublicImplCopyWith(
          _$EkycDownloadLicensePublicImpl value,
          $Res Function(_$EkycDownloadLicensePublicImpl) then) =
      __$$EkycDownloadLicensePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'content') String content});
}

/// @nodoc
class __$$EkycDownloadLicensePublicImplCopyWithImpl<$Res>
    extends _$EkycDownloadLicensePublicCopyWithImpl<$Res,
        _$EkycDownloadLicensePublicImpl>
    implements _$$EkycDownloadLicensePublicImplCopyWith<$Res> {
  __$$EkycDownloadLicensePublicImplCopyWithImpl(
      _$EkycDownloadLicensePublicImpl _value,
      $Res Function(_$EkycDownloadLicensePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of EkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$EkycDownloadLicensePublicImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$EkycDownloadLicensePublicImpl extends _EkycDownloadLicensePublic {
  const _$EkycDownloadLicensePublicImpl(
      {@JsonKey(name: 'content') required this.content})
      : super._();

  factory _$EkycDownloadLicensePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$EkycDownloadLicensePublicImplFromJson(json);

  /// Content
  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'EkycDownloadLicensePublic(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EkycDownloadLicensePublicImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of EkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EkycDownloadLicensePublicImplCopyWith<_$EkycDownloadLicensePublicImpl>
      get copyWith => __$$EkycDownloadLicensePublicImplCopyWithImpl<
          _$EkycDownloadLicensePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EkycDownloadLicensePublicImplToJson(
      this,
    );
  }
}

abstract class _EkycDownloadLicensePublic extends EkycDownloadLicensePublic {
  const factory _EkycDownloadLicensePublic(
          {@JsonKey(name: 'content') required final String content}) =
      _$EkycDownloadLicensePublicImpl;
  const _EkycDownloadLicensePublic._() : super._();

  factory _EkycDownloadLicensePublic.fromJson(Map<String, dynamic> json) =
      _$EkycDownloadLicensePublicImpl.fromJson;

  /// Content
  @override
  @JsonKey(name: 'content')
  String get content;

  /// Create a copy of EkycDownloadLicensePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EkycDownloadLicensePublicImplCopyWith<_$EkycDownloadLicensePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
