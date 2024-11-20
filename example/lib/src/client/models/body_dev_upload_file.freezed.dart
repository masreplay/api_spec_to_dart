// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_dev_upload_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyDevUploadFile _$BodyDevUploadFileFromJson(Map<String, dynamic> json) {
  return _BodyDevUploadFile.fromJson(json);
}

/// @nodoc
mixin _$BodyDevUploadFile {
  @JsonKey(name: 'file')
  File get file => throw _privateConstructorUsedError;

  /// Serializes this BodyDevUploadFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyDevUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyDevUploadFileCopyWith<BodyDevUploadFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyDevUploadFileCopyWith<$Res> {
  factory $BodyDevUploadFileCopyWith(
          BodyDevUploadFile value, $Res Function(BodyDevUploadFile) then) =
      _$BodyDevUploadFileCopyWithImpl<$Res, BodyDevUploadFile>;
  @useResult
  $Res call({@JsonKey(name: 'file') File file});
}

/// @nodoc
class _$BodyDevUploadFileCopyWithImpl<$Res, $Val extends BodyDevUploadFile>
    implements $BodyDevUploadFileCopyWith<$Res> {
  _$BodyDevUploadFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyDevUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyDevUploadFileImplCopyWith<$Res>
    implements $BodyDevUploadFileCopyWith<$Res> {
  factory _$$BodyDevUploadFileImplCopyWith(_$BodyDevUploadFileImpl value,
          $Res Function(_$BodyDevUploadFileImpl) then) =
      __$$BodyDevUploadFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'file') File file});
}

/// @nodoc
class __$$BodyDevUploadFileImplCopyWithImpl<$Res>
    extends _$BodyDevUploadFileCopyWithImpl<$Res, _$BodyDevUploadFileImpl>
    implements _$$BodyDevUploadFileImplCopyWith<$Res> {
  __$$BodyDevUploadFileImplCopyWithImpl(_$BodyDevUploadFileImpl _value,
      $Res Function(_$BodyDevUploadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyDevUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$BodyDevUploadFileImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BodyDevUploadFileImpl extends _BodyDevUploadFile {
  const _$BodyDevUploadFileImpl({@JsonKey(name: 'file') required this.file})
      : super._();

  factory _$BodyDevUploadFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyDevUploadFileImplFromJson(json);

  @override
  @JsonKey(name: 'file')
  final File file;

  @override
  String toString() {
    return 'BodyDevUploadFile(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyDevUploadFileImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of BodyDevUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyDevUploadFileImplCopyWith<_$BodyDevUploadFileImpl> get copyWith =>
      __$$BodyDevUploadFileImplCopyWithImpl<_$BodyDevUploadFileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyDevUploadFileImplToJson(
      this,
    );
  }
}

abstract class _BodyDevUploadFile extends BodyDevUploadFile {
  const factory _BodyDevUploadFile(
          {@JsonKey(name: 'file') required final File file}) =
      _$BodyDevUploadFileImpl;
  const _BodyDevUploadFile._() : super._();

  factory _BodyDevUploadFile.fromJson(Map<String, dynamic> json) =
      _$BodyDevUploadFileImpl.fromJson;

  @override
  @JsonKey(name: 'file')
  File get file;

  /// Create a copy of BodyDevUploadFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyDevUploadFileImplCopyWith<_$BodyDevUploadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
