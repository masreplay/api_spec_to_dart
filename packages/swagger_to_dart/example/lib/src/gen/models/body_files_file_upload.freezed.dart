// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_files_file_upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyFilesFileUpload {
  /// file
  @JsonKey(name: BodyFilesFileUpload.fileKey)
  String get file;

  /// description
  @JsonKey(name: BodyFilesFileUpload.descriptionKey)
  String? get description;

  /// Create a copy of BodyFilesFileUpload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyFilesFileUploadCopyWith<BodyFilesFileUpload> get copyWith =>
      _$BodyFilesFileUploadCopyWithImpl<BodyFilesFileUpload>(
          this as BodyFilesFileUpload, _$identity);

  /// Serializes this BodyFilesFileUpload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyFilesFileUpload &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, description);

  @override
  String toString() {
    return 'BodyFilesFileUpload(file: $file, description: $description)';
  }
}

/// @nodoc
abstract mixin class $BodyFilesFileUploadCopyWith<$Res> {
  factory $BodyFilesFileUploadCopyWith(
          BodyFilesFileUpload value, $Res Function(BodyFilesFileUpload) _then) =
      _$BodyFilesFileUploadCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: BodyFilesFileUpload.fileKey) String file,
      @JsonKey(name: BodyFilesFileUpload.descriptionKey) String? description});
}

/// @nodoc
class _$BodyFilesFileUploadCopyWithImpl<$Res>
    implements $BodyFilesFileUploadCopyWith<$Res> {
  _$BodyFilesFileUploadCopyWithImpl(this._self, this._then);

  final BodyFilesFileUpload _self;
  final $Res Function(BodyFilesFileUpload) _then;

  /// Create a copy of BodyFilesFileUpload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _BodyFilesFileUpload extends BodyFilesFileUpload {
  const _BodyFilesFileUpload(
      {@JsonKey(name: BodyFilesFileUpload.fileKey) required this.file,
      @JsonKey(name: BodyFilesFileUpload.descriptionKey)
      required this.description})
      : super._();
  factory _BodyFilesFileUpload.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFileUploadFromJson(json);

  /// file
  @override
  @JsonKey(name: BodyFilesFileUpload.fileKey)
  final String file;

  /// description
  @override
  @JsonKey(name: BodyFilesFileUpload.descriptionKey)
  final String? description;

  /// Create a copy of BodyFilesFileUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyFilesFileUploadCopyWith<_BodyFilesFileUpload> get copyWith =>
      __$BodyFilesFileUploadCopyWithImpl<_BodyFilesFileUpload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyFilesFileUploadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyFilesFileUpload &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file, description);

  @override
  String toString() {
    return 'BodyFilesFileUpload(file: $file, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$BodyFilesFileUploadCopyWith<$Res>
    implements $BodyFilesFileUploadCopyWith<$Res> {
  factory _$BodyFilesFileUploadCopyWith(_BodyFilesFileUpload value,
          $Res Function(_BodyFilesFileUpload) _then) =
      __$BodyFilesFileUploadCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: BodyFilesFileUpload.fileKey) String file,
      @JsonKey(name: BodyFilesFileUpload.descriptionKey) String? description});
}

/// @nodoc
class __$BodyFilesFileUploadCopyWithImpl<$Res>
    implements _$BodyFilesFileUploadCopyWith<$Res> {
  __$BodyFilesFileUploadCopyWithImpl(this._self, this._then);

  final _BodyFilesFileUpload _self;
  final $Res Function(_BodyFilesFileUpload) _then;

  /// Create a copy of BodyFilesFileUpload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? file = null,
    Object? description = freezed,
  }) {
    return _then(_BodyFilesFileUpload(
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}
