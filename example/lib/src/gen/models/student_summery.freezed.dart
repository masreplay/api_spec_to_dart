// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_summery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentSummery _$StudentSummeryFromJson(Map<String, dynamic> json) {
  return _StudentSummery.fromJson(json);
}

/// @nodoc
mixin _$StudentSummery {
  /// Image Url
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this StudentSummery to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSummery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSummeryCopyWith<StudentSummery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSummeryCopyWith<$Res> {
  factory $StudentSummeryCopyWith(
          StudentSummery value, $Res Function(StudentSummery) then) =
      _$StudentSummeryCopyWithImpl<$Res, StudentSummery>;
  @useResult
  $Res call({@JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class _$StudentSummeryCopyWithImpl<$Res, $Val extends StudentSummery>
    implements $StudentSummeryCopyWith<$Res> {
  _$StudentSummeryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSummery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentSummeryImplCopyWith<$Res>
    implements $StudentSummeryCopyWith<$Res> {
  factory _$$StudentSummeryImplCopyWith(_$StudentSummeryImpl value,
          $Res Function(_$StudentSummeryImpl) then) =
      __$$StudentSummeryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'image_url') String? imageUrl});
}

/// @nodoc
class __$$StudentSummeryImplCopyWithImpl<$Res>
    extends _$StudentSummeryCopyWithImpl<$Res, _$StudentSummeryImpl>
    implements _$$StudentSummeryImplCopyWith<$Res> {
  __$$StudentSummeryImplCopyWithImpl(
      _$StudentSummeryImpl _value, $Res Function(_$StudentSummeryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSummery
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = freezed,
  }) {
    return _then(_$StudentSummeryImpl(
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentSummeryImpl extends _StudentSummery {
  const _$StudentSummeryImpl(
      {@JsonKey(name: 'image_url') required this.imageUrl})
      : super._();

  factory _$StudentSummeryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentSummeryImplFromJson(json);

  /// Image Url
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;

  @override
  String toString() {
    return 'StudentSummery(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSummeryImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  /// Create a copy of StudentSummery
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSummeryImplCopyWith<_$StudentSummeryImpl> get copyWith =>
      __$$StudentSummeryImplCopyWithImpl<_$StudentSummeryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSummeryImplToJson(
      this,
    );
  }
}

abstract class _StudentSummery extends StudentSummery {
  const factory _StudentSummery(
          {@JsonKey(name: 'image_url') required final String? imageUrl}) =
      _$StudentSummeryImpl;
  const _StudentSummery._() : super._();

  factory _StudentSummery.fromJson(Map<String, dynamic> json) =
      _$StudentSummeryImpl.fromJson;

  /// Image Url
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;

  /// Create a copy of StudentSummery
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSummeryImplCopyWith<_$StudentSummeryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
