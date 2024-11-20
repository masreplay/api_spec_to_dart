// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilePublic _$FilePublicFromJson(Map<String, dynamic> json) {
  return _FilePublic.fromJson(json);
}

/// @nodoc
mixin _$FilePublic {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Url
  @JsonKey(name: 'url')
  Uri get url => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Content Type
  @JsonKey(name: 'content_type')
  String get contentType => throw _privateConstructorUsedError;

  /// Size
  @JsonKey(name: 'size')
  int get size => throw _privateConstructorUsedError;

  /// Serializes this FilePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilePublicCopyWith<FilePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilePublicCopyWith<$Res> {
  factory $FilePublicCopyWith(
          FilePublic value, $Res Function(FilePublic) then) =
      _$FilePublicCopyWithImpl<$Res, FilePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'url') Uri url,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'size') int size});
}

/// @nodoc
class _$FilePublicCopyWithImpl<$Res, $Val extends FilePublic>
    implements $FilePublicCopyWith<$Res> {
  _$FilePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? contentType = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilePublicImplCopyWith<$Res>
    implements $FilePublicCopyWith<$Res> {
  factory _$$FilePublicImplCopyWith(
          _$FilePublicImpl value, $Res Function(_$FilePublicImpl) then) =
      __$$FilePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'url') Uri url,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'content_type') String contentType,
      @JsonKey(name: 'size') int size});
}

/// @nodoc
class __$$FilePublicImplCopyWithImpl<$Res>
    extends _$FilePublicCopyWithImpl<$Res, _$FilePublicImpl>
    implements _$$FilePublicImplCopyWith<$Res> {
  __$$FilePublicImplCopyWithImpl(
      _$FilePublicImpl _value, $Res Function(_$FilePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? name = null,
    Object? contentType = null,
    Object? size = null,
  }) {
    return _then(_$FilePublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$FilePublicImpl extends _FilePublic {
  const _$FilePublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'content_type') required this.contentType,
      @JsonKey(name: 'size') required this.size})
      : super._();

  factory _$FilePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilePublicImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Url
  @override
  @JsonKey(name: 'url')
  final Uri url;

  /// Name
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Content Type
  @override
  @JsonKey(name: 'content_type')
  final String contentType;

  /// Size
  @override
  @JsonKey(name: 'size')
  final int size;

  @override
  String toString() {
    return 'FilePublic(id: $id, url: $url, name: $name, contentType: $contentType, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilePublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, url, name, contentType, size);

  /// Create a copy of FilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilePublicImplCopyWith<_$FilePublicImpl> get copyWith =>
      __$$FilePublicImplCopyWithImpl<_$FilePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilePublicImplToJson(
      this,
    );
  }
}

abstract class _FilePublic extends FilePublic {
  const factory _FilePublic(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'url') required final Uri url,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'content_type') required final String contentType,
      @JsonKey(name: 'size') required final int size}) = _$FilePublicImpl;
  const _FilePublic._() : super._();

  factory _FilePublic.fromJson(Map<String, dynamic> json) =
      _$FilePublicImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Url
  @override
  @JsonKey(name: 'url')
  Uri get url;

  /// Name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Content Type
  @override
  @JsonKey(name: 'content_type')
  String get contentType;

  /// Size
  @override
  @JsonKey(name: 'size')
  int get size;

  /// Create a copy of FilePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilePublicImplCopyWith<_$FilePublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
