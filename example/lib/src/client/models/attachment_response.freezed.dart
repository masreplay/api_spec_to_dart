// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attachment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttachmentResponse _$AttachmentResponseFromJson(Map<String, dynamic> json) {
  return _AttachmentResponse.fromJson(json);
}

/// @nodoc
mixin _$AttachmentResponse {
  @JsonKey(name: 'attachment_name')
  String? get attachmentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sign_url')
  String? get signUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size')
  int? get fileSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_mim_type')
  String? get fileMimType => throw _privateConstructorUsedError;

  /// Serializes this AttachmentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentResponseCopyWith<AttachmentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentResponseCopyWith<$Res> {
  factory $AttachmentResponseCopyWith(
          AttachmentResponse value, $Res Function(AttachmentResponse) then) =
      _$AttachmentResponseCopyWithImpl<$Res, AttachmentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'attachment_name') String? attachmentName,
      @JsonKey(name: 'sign_url') String? signUrl,
      @JsonKey(name: 'file_size') int? fileSize,
      @JsonKey(name: 'file_mim_type') String? fileMimType});
}

/// @nodoc
class _$AttachmentResponseCopyWithImpl<$Res, $Val extends AttachmentResponse>
    implements $AttachmentResponseCopyWith<$Res> {
  _$AttachmentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentName = freezed,
    Object? signUrl = freezed,
    Object? fileSize = freezed,
    Object? fileMimType = freezed,
  }) {
    return _then(_value.copyWith(
      attachmentName: freezed == attachmentName
          ? _value.attachmentName
          : attachmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileMimType: freezed == fileMimType
          ? _value.fileMimType
          : fileMimType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentResponseImplCopyWith<$Res>
    implements $AttachmentResponseCopyWith<$Res> {
  factory _$$AttachmentResponseImplCopyWith(_$AttachmentResponseImpl value,
          $Res Function(_$AttachmentResponseImpl) then) =
      __$$AttachmentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'attachment_name') String? attachmentName,
      @JsonKey(name: 'sign_url') String? signUrl,
      @JsonKey(name: 'file_size') int? fileSize,
      @JsonKey(name: 'file_mim_type') String? fileMimType});
}

/// @nodoc
class __$$AttachmentResponseImplCopyWithImpl<$Res>
    extends _$AttachmentResponseCopyWithImpl<$Res, _$AttachmentResponseImpl>
    implements _$$AttachmentResponseImplCopyWith<$Res> {
  __$$AttachmentResponseImplCopyWithImpl(_$AttachmentResponseImpl _value,
      $Res Function(_$AttachmentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attachmentName = freezed,
    Object? signUrl = freezed,
    Object? fileSize = freezed,
    Object? fileMimType = freezed,
  }) {
    return _then(_$AttachmentResponseImpl(
      attachmentName: freezed == attachmentName
          ? _value.attachmentName
          : attachmentName // ignore: cast_nullable_to_non_nullable
              as String?,
      signUrl: freezed == signUrl
          ? _value.signUrl
          : signUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
      fileMimType: freezed == fileMimType
          ? _value.fileMimType
          : fileMimType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$AttachmentResponseImpl extends _AttachmentResponse {
  const _$AttachmentResponseImpl(
      {@JsonKey(name: 'attachment_name') required this.attachmentName,
      @JsonKey(name: 'sign_url') required this.signUrl,
      @JsonKey(name: 'file_size') required this.fileSize,
      @JsonKey(name: 'file_mim_type') required this.fileMimType})
      : super._();

  factory _$AttachmentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentResponseImplFromJson(json);

  @override
  @JsonKey(name: 'attachment_name')
  final String? attachmentName;
  @override
  @JsonKey(name: 'sign_url')
  final String? signUrl;
  @override
  @JsonKey(name: 'file_size')
  final int? fileSize;
  @override
  @JsonKey(name: 'file_mim_type')
  final String? fileMimType;

  @override
  String toString() {
    return 'AttachmentResponse(attachmentName: $attachmentName, signUrl: $signUrl, fileSize: $fileSize, fileMimType: $fileMimType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentResponseImpl &&
            (identical(other.attachmentName, attachmentName) ||
                other.attachmentName == attachmentName) &&
            (identical(other.signUrl, signUrl) || other.signUrl == signUrl) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.fileMimType, fileMimType) ||
                other.fileMimType == fileMimType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, attachmentName, signUrl, fileSize, fileMimType);

  /// Create a copy of AttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentResponseImplCopyWith<_$AttachmentResponseImpl> get copyWith =>
      __$$AttachmentResponseImplCopyWithImpl<_$AttachmentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentResponseImplToJson(
      this,
    );
  }
}

abstract class _AttachmentResponse extends AttachmentResponse {
  const factory _AttachmentResponse(
      {@JsonKey(name: 'attachment_name') required final String? attachmentName,
      @JsonKey(name: 'sign_url') required final String? signUrl,
      @JsonKey(name: 'file_size') required final int? fileSize,
      @JsonKey(name: 'file_mim_type')
      required final String? fileMimType}) = _$AttachmentResponseImpl;
  const _AttachmentResponse._() : super._();

  factory _AttachmentResponse.fromJson(Map<String, dynamic> json) =
      _$AttachmentResponseImpl.fromJson;

  @override
  @JsonKey(name: 'attachment_name')
  String? get attachmentName;
  @override
  @JsonKey(name: 'sign_url')
  String? get signUrl;
  @override
  @JsonKey(name: 'file_size')
  int? get fileSize;
  @override
  @JsonKey(name: 'file_mim_type')
  String? get fileMimType;

  /// Create a copy of AttachmentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentResponseImplCopyWith<_$AttachmentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
