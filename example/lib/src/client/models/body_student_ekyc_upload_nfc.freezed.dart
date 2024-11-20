// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_student_ekyc_upload_nfc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyStudentEkycUploadNfc _$BodyStudentEkycUploadNfcFromJson(
    Map<String, dynamic> json) {
  return _BodyStudentEkycUploadNfc.fromJson(json);
}

/// @nodoc
mixin _$BodyStudentEkycUploadNfc {
  @JsonKey(name: 'data')
  String get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'file')
  File get file => throw _privateConstructorUsedError;

  /// Serializes this BodyStudentEkycUploadNfc to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyStudentEkycUploadNfc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyStudentEkycUploadNfcCopyWith<BodyStudentEkycUploadNfc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyStudentEkycUploadNfcCopyWith<$Res> {
  factory $BodyStudentEkycUploadNfcCopyWith(BodyStudentEkycUploadNfc value,
          $Res Function(BodyStudentEkycUploadNfc) then) =
      _$BodyStudentEkycUploadNfcCopyWithImpl<$Res, BodyStudentEkycUploadNfc>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data, @JsonKey(name: 'file') File file});
}

/// @nodoc
class _$BodyStudentEkycUploadNfcCopyWithImpl<$Res,
        $Val extends BodyStudentEkycUploadNfc>
    implements $BodyStudentEkycUploadNfcCopyWith<$Res> {
  _$BodyStudentEkycUploadNfcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyStudentEkycUploadNfc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? file = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyStudentEkycUploadNfcImplCopyWith<$Res>
    implements $BodyStudentEkycUploadNfcCopyWith<$Res> {
  factory _$$BodyStudentEkycUploadNfcImplCopyWith(
          _$BodyStudentEkycUploadNfcImpl value,
          $Res Function(_$BodyStudentEkycUploadNfcImpl) then) =
      __$$BodyStudentEkycUploadNfcImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String data, @JsonKey(name: 'file') File file});
}

/// @nodoc
class __$$BodyStudentEkycUploadNfcImplCopyWithImpl<$Res>
    extends _$BodyStudentEkycUploadNfcCopyWithImpl<$Res,
        _$BodyStudentEkycUploadNfcImpl>
    implements _$$BodyStudentEkycUploadNfcImplCopyWith<$Res> {
  __$$BodyStudentEkycUploadNfcImplCopyWithImpl(
      _$BodyStudentEkycUploadNfcImpl _value,
      $Res Function(_$BodyStudentEkycUploadNfcImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyStudentEkycUploadNfc
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? file = freezed,
  }) {
    return _then(_$BodyStudentEkycUploadNfcImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyStudentEkycUploadNfcImpl implements _BodyStudentEkycUploadNfc {
  const _$BodyStudentEkycUploadNfcImpl(
      {@JsonKey(name: 'data') required this.data,
      @JsonKey(name: 'file') required this.file});

  factory _$BodyStudentEkycUploadNfcImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyStudentEkycUploadNfcImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final String data;
  @override
  @JsonKey(name: 'file')
  final File file;

  @override
  String toString() {
    return 'BodyStudentEkycUploadNfc(data: $data, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyStudentEkycUploadNfcImpl &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, data, const DeepCollectionEquality().hash(file));

  /// Create a copy of BodyStudentEkycUploadNfc
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyStudentEkycUploadNfcImplCopyWith<_$BodyStudentEkycUploadNfcImpl>
      get copyWith => __$$BodyStudentEkycUploadNfcImplCopyWithImpl<
          _$BodyStudentEkycUploadNfcImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyStudentEkycUploadNfcImplToJson(
      this,
    );
  }
}

abstract class _BodyStudentEkycUploadNfc implements BodyStudentEkycUploadNfc {
  const factory _BodyStudentEkycUploadNfc(
          {@JsonKey(name: 'data') required final String data,
          @JsonKey(name: 'file') required final File file}) =
      _$BodyStudentEkycUploadNfcImpl;

  factory _BodyStudentEkycUploadNfc.fromJson(Map<String, dynamic> json) =
      _$BodyStudentEkycUploadNfcImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  String get data;
  @override
  @JsonKey(name: 'file')
  File get file;

  /// Create a copy of BodyStudentEkycUploadNfc
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyStudentEkycUploadNfcImplCopyWith<_$BodyStudentEkycUploadNfcImpl>
      get copyWith => throw _privateConstructorUsedError;
}
