// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_files_upload_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyFilesUploadFile _$BodyFilesUploadFileFromJson(Map<String, dynamic> json) {
  return _BodyFilesUploadFile.fromJson(json);
}

/// @nodoc
mixin _$BodyFilesUploadFile {
  /// File
  @JsonKey(name: 'file')
  File get file => throw _privateConstructorUsedError;

  /// Entity Id
  @JsonKey(name: 'entity_id')
  int? get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'collection')
  FileCollectionEnum get collection => throw _privateConstructorUsedError;

  /// Serializes this BodyFilesUploadFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyFilesUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyFilesUploadFileCopyWith<BodyFilesUploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyFilesUploadFileCopyWith<$Res> {
  factory $BodyFilesUploadFileCopyWith(
          BodyFilesUploadFile value, $Res Function(BodyFilesUploadFile) then) =
      _$BodyFilesUploadFileCopyWithImpl<$Res, BodyFilesUploadFile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'file') File file,
      @JsonKey(name: 'entity_id') int? entityId,
      @JsonKey(name: 'collection') FileCollectionEnum collection});
}

/// @nodoc
class _$BodyFilesUploadFileCopyWithImpl<$Res, $Val extends BodyFilesUploadFile>
    implements $BodyFilesUploadFileCopyWith<$Res> {
  _$BodyFilesUploadFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyFilesUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? entityId = freezed,
    Object? collection = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as int?,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as FileCollectionEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyFilesUploadFileImplCopyWith<$Res>
    implements $BodyFilesUploadFileCopyWith<$Res> {
  factory _$$BodyFilesUploadFileImplCopyWith(_$BodyFilesUploadFileImpl value,
          $Res Function(_$BodyFilesUploadFileImpl) then) =
      __$$BodyFilesUploadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'file') File file,
      @JsonKey(name: 'entity_id') int? entityId,
      @JsonKey(name: 'collection') FileCollectionEnum collection});
}

/// @nodoc
class __$$BodyFilesUploadFileImplCopyWithImpl<$Res>
    extends _$BodyFilesUploadFileCopyWithImpl<$Res, _$BodyFilesUploadFileImpl>
    implements _$$BodyFilesUploadFileImplCopyWith<$Res> {
  __$$BodyFilesUploadFileImplCopyWithImpl(_$BodyFilesUploadFileImpl _value,
      $Res Function(_$BodyFilesUploadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyFilesUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? entityId = freezed,
    Object? collection = null,
  }) {
    return _then(_$BodyFilesUploadFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      entityId: freezed == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as int?,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as FileCollectionEnum,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BodyFilesUploadFileImpl extends _BodyFilesUploadFile {
  const _$BodyFilesUploadFileImpl(
      {@JsonKey(name: 'file') required this.file,
      @JsonKey(name: 'entity_id') required this.entityId,
      @JsonKey(name: 'collection') required this.collection})
      : super._();

  factory _$BodyFilesUploadFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyFilesUploadFileImplFromJson(json);

  /// File
  @override
  @JsonKey(name: 'file')
  final File file;

  /// Entity Id
  @override
  @JsonKey(name: 'entity_id')
  final int? entityId;
  @override
  @JsonKey(name: 'collection')
  final FileCollectionEnum collection;

  @override
  String toString() {
    return 'BodyFilesUploadFile(file: $file, entityId: $entityId, collection: $collection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyFilesUploadFileImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.collection, collection) ||
                other.collection == collection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, entityId, collection);

  /// Create a copy of BodyFilesUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyFilesUploadFileImplCopyWith<_$BodyFilesUploadFileImpl> get copyWith =>
      __$$BodyFilesUploadFileImplCopyWithImpl<_$BodyFilesUploadFileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyFilesUploadFileImplToJson(
      this,
    );
  }
}

abstract class _BodyFilesUploadFile extends BodyFilesUploadFile {
  const factory _BodyFilesUploadFile(
          {@JsonKey(name: 'file') required final File file,
          @JsonKey(name: 'entity_id') required final int? entityId,
          @JsonKey(name: 'collection')
          required final FileCollectionEnum collection}) =
      _$BodyFilesUploadFileImpl;
  const _BodyFilesUploadFile._() : super._();

  factory _BodyFilesUploadFile.fromJson(Map<String, dynamic> json) =
      _$BodyFilesUploadFileImpl.fromJson;

  /// File
  @override
  @JsonKey(name: 'file')
  File get file;

  /// Entity Id
  @override
  @JsonKey(name: 'entity_id')
  int? get entityId;
  @override
  @JsonKey(name: 'collection')
  FileCollectionEnum get collection;

  /// Create a copy of BodyFilesUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyFilesUploadFileImplCopyWith<_$BodyFilesUploadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
