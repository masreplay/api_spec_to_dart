// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_student_ekyc_upload_face_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyStudentEkycUploadFaceData _$BodyStudentEkycUploadFaceDataFromJson(
    Map<String, dynamic> json) {
  return _BodyStudentEkycUploadFaceData.fromJson(json);
}

/// @nodoc
mixin _$BodyStudentEkycUploadFaceData {
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  File get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_raw')
  File get fileRaw => throw _privateConstructorUsedError;

  /// Serializes this BodyStudentEkycUploadFaceData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyStudentEkycUploadFaceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyStudentEkycUploadFaceDataCopyWith<BodyStudentEkycUploadFaceData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyStudentEkycUploadFaceDataCopyWith<$Res> {
  factory $BodyStudentEkycUploadFaceDataCopyWith(
          BodyStudentEkycUploadFaceData value,
          $Res Function(BodyStudentEkycUploadFaceData) then) =
      _$BodyStudentEkycUploadFaceDataCopyWithImpl<$Res,
          BodyStudentEkycUploadFaceData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'file') File file,
      @JsonKey(name: 'file_raw') File fileRaw});
}

/// @nodoc
class _$BodyStudentEkycUploadFaceDataCopyWithImpl<$Res,
        $Val extends BodyStudentEkycUploadFaceData>
    implements $BodyStudentEkycUploadFaceDataCopyWith<$Res> {
  _$BodyStudentEkycUploadFaceDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyStudentEkycUploadFaceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? file = freezed,
    Object? fileRaw = freezed,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      fileRaw: freezed == fileRaw
          ? _value.fileRaw
          : fileRaw // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyStudentEkycUploadFaceDataImplCopyWith<$Res>
    implements $BodyStudentEkycUploadFaceDataCopyWith<$Res> {
  factory _$$BodyStudentEkycUploadFaceDataImplCopyWith(
          _$BodyStudentEkycUploadFaceDataImpl value,
          $Res Function(_$BodyStudentEkycUploadFaceDataImpl) then) =
      __$$BodyStudentEkycUploadFaceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data,
      @JsonKey(name: 'file') File file,
      @JsonKey(name: 'file_raw') File fileRaw});
}

/// @nodoc
class __$$BodyStudentEkycUploadFaceDataImplCopyWithImpl<$Res>
    extends _$BodyStudentEkycUploadFaceDataCopyWithImpl<$Res,
        _$BodyStudentEkycUploadFaceDataImpl>
    implements _$$BodyStudentEkycUploadFaceDataImplCopyWith<$Res> {
  __$$BodyStudentEkycUploadFaceDataImplCopyWithImpl(
      _$BodyStudentEkycUploadFaceDataImpl _value,
      $Res Function(_$BodyStudentEkycUploadFaceDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyStudentEkycUploadFaceData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? file = freezed,
    Object? fileRaw = freezed,
  }) {
    return _then(_$BodyStudentEkycUploadFaceDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      fileRaw: freezed == fileRaw
          ? _value.fileRaw
          : fileRaw // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyStudentEkycUploadFaceDataImpl
    implements _BodyStudentEkycUploadFaceData {
  const _$BodyStudentEkycUploadFaceDataImpl(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'file') required this.file,
      @JsonKey(name: 'file_raw') required this.fileRaw});

  factory _$BodyStudentEkycUploadFaceDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyStudentEkycUploadFaceDataImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final String data;
  @override
  @JsonKey(name: 'file')
  final File file;
  @override
  @JsonKey(name: 'file_raw')
  final File fileRaw;

  @override
  String toString() {
    return 'BodyStudentEkycUploadFaceData(data: $data, file: $file, fileRaw: $fileRaw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyStudentEkycUploadFaceDataImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.fileRaw, fileRaw));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      data,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(fileRaw));

  /// Create a copy of BodyStudentEkycUploadFaceData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyStudentEkycUploadFaceDataImplCopyWith<
          _$BodyStudentEkycUploadFaceDataImpl>
      get copyWith => __$$BodyStudentEkycUploadFaceDataImplCopyWithImpl<
          _$BodyStudentEkycUploadFaceDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyStudentEkycUploadFaceDataImplToJson(
      this,
    );
  }
}

abstract class _BodyStudentEkycUploadFaceData
    implements BodyStudentEkycUploadFaceData {
  const factory _BodyStudentEkycUploadFaceData(
          {@JsonKey(name: 'data') required final String data,
          @JsonKey(name: 'file') required final File file,
          @JsonKey(name: 'file_raw') required final File fileRaw}) =
      _$BodyStudentEkycUploadFaceDataImpl;

  factory _BodyStudentEkycUploadFaceData.fromJson(Map<String, dynamic> json) =
      _$BodyStudentEkycUploadFaceDataImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(name: 'file')
  File get file;
  @override
  @JsonKey(name: 'file_raw')
  File get fileRaw;

  /// Create a copy of BodyStudentEkycUploadFaceData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyStudentEkycUploadFaceDataImplCopyWith<
          _$BodyStudentEkycUploadFaceDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
