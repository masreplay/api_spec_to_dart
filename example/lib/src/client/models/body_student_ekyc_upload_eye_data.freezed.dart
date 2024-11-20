// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_student_ekyc_upload_eye_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyStudentEkycUploadEyeData _$BodyStudentEkycUploadEyeDataFromJson(
    Map<String, dynamic> json) {
  return _BodyStudentEkycUploadEyeData.fromJson(json);
}

/// @nodoc
mixin _$BodyStudentEkycUploadEyeData {
  @JsonKey(name: 'file_raw')
  File get fileRaw => throw _privateConstructorUsedError;

  /// Serializes this BodyStudentEkycUploadEyeData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyStudentEkycUploadEyeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyStudentEkycUploadEyeDataCopyWith<BodyStudentEkycUploadEyeData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyStudentEkycUploadEyeDataCopyWith<$Res> {
  factory $BodyStudentEkycUploadEyeDataCopyWith(
          BodyStudentEkycUploadEyeData value,
          $Res Function(BodyStudentEkycUploadEyeData) then) =
      _$BodyStudentEkycUploadEyeDataCopyWithImpl<$Res,
          BodyStudentEkycUploadEyeData>;
  @useResult
  $Res call({@JsonKey(name: 'file_raw') File fileRaw});
}

/// @nodoc
class _$BodyStudentEkycUploadEyeDataCopyWithImpl<$Res,
        $Val extends BodyStudentEkycUploadEyeData>
    implements $BodyStudentEkycUploadEyeDataCopyWith<$Res> {
  _$BodyStudentEkycUploadEyeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyStudentEkycUploadEyeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileRaw = null,
  }) {
    return _then(_value.copyWith(
      fileRaw: null == fileRaw
          ? _value.fileRaw
          : fileRaw // ignore: cast_nullable_to_non_nullable
              as File,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyStudentEkycUploadEyeDataImplCopyWith<$Res>
    implements $BodyStudentEkycUploadEyeDataCopyWith<$Res> {
  factory _$$BodyStudentEkycUploadEyeDataImplCopyWith(
          _$BodyStudentEkycUploadEyeDataImpl value,
          $Res Function(_$BodyStudentEkycUploadEyeDataImpl) then) =
      __$$BodyStudentEkycUploadEyeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'file_raw') File fileRaw});
}

/// @nodoc
class __$$BodyStudentEkycUploadEyeDataImplCopyWithImpl<$Res>
    extends _$BodyStudentEkycUploadEyeDataCopyWithImpl<$Res,
        _$BodyStudentEkycUploadEyeDataImpl>
    implements _$$BodyStudentEkycUploadEyeDataImplCopyWith<$Res> {
  __$$BodyStudentEkycUploadEyeDataImplCopyWithImpl(
      _$BodyStudentEkycUploadEyeDataImpl _value,
      $Res Function(_$BodyStudentEkycUploadEyeDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyStudentEkycUploadEyeData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileRaw = null,
  }) {
    return _then(_$BodyStudentEkycUploadEyeDataImpl(
      fileRaw: null == fileRaw
          ? _value.fileRaw
          : fileRaw // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BodyStudentEkycUploadEyeDataImpl extends _BodyStudentEkycUploadEyeData {
  const _$BodyStudentEkycUploadEyeDataImpl(
      {@JsonKey(name: 'file_raw') required this.fileRaw})
      : super._();

  factory _$BodyStudentEkycUploadEyeDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BodyStudentEkycUploadEyeDataImplFromJson(json);

  @override
  @JsonKey(name: 'file_raw')
  final File fileRaw;

  @override
  String toString() {
    return 'BodyStudentEkycUploadEyeData(fileRaw: $fileRaw)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyStudentEkycUploadEyeDataImpl &&
            (identical(other.fileRaw, fileRaw) || other.fileRaw == fileRaw));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileRaw);

  /// Create a copy of BodyStudentEkycUploadEyeData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyStudentEkycUploadEyeDataImplCopyWith<
          _$BodyStudentEkycUploadEyeDataImpl>
      get copyWith => __$$BodyStudentEkycUploadEyeDataImplCopyWithImpl<
          _$BodyStudentEkycUploadEyeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyStudentEkycUploadEyeDataImplToJson(
      this,
    );
  }
}

abstract class _BodyStudentEkycUploadEyeData
    extends BodyStudentEkycUploadEyeData {
  const factory _BodyStudentEkycUploadEyeData(
          {@JsonKey(name: 'file_raw') required final File fileRaw}) =
      _$BodyStudentEkycUploadEyeDataImpl;
  const _BodyStudentEkycUploadEyeData._() : super._();

  factory _BodyStudentEkycUploadEyeData.fromJson(Map<String, dynamic> json) =
      _$BodyStudentEkycUploadEyeDataImpl.fromJson;

  @override
  @JsonKey(name: 'file_raw')
  File get fileRaw;

  /// Create a copy of BodyStudentEkycUploadEyeData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyStudentEkycUploadEyeDataImplCopyWith<
          _$BodyStudentEkycUploadEyeDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
