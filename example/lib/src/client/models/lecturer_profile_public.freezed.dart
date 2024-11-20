// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_profile_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerProfilePublic _$LecturerProfilePublicFromJson(
    Map<String, dynamic> json) {
  return _LecturerProfilePublic.fromJson(json);
}

/// @nodoc
mixin _$LecturerProfilePublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  Uri? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this LecturerProfilePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerProfilePublicCopyWith<LecturerProfilePublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerProfilePublicCopyWith<$Res> {
  factory $LecturerProfilePublicCopyWith(LecturerProfilePublic value,
          $Res Function(LecturerProfilePublic) then) =
      _$LecturerProfilePublicCopyWithImpl<$Res, LecturerProfilePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'image_url') Uri? imageUrl});
}

/// @nodoc
class _$LecturerProfilePublicCopyWithImpl<$Res,
        $Val extends LecturerProfilePublic>
    implements $LecturerProfilePublicCopyWith<$Res> {
  _$LecturerProfilePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerProfilePublicImplCopyWith<$Res>
    implements $LecturerProfilePublicCopyWith<$Res> {
  factory _$$LecturerProfilePublicImplCopyWith(
          _$LecturerProfilePublicImpl value,
          $Res Function(_$LecturerProfilePublicImpl) then) =
      __$$LecturerProfilePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'full_name') String fullName,
      @JsonKey(name: 'image_url') Uri? imageUrl});
}

/// @nodoc
class __$$LecturerProfilePublicImplCopyWithImpl<$Res>
    extends _$LecturerProfilePublicCopyWithImpl<$Res,
        _$LecturerProfilePublicImpl>
    implements _$$LecturerProfilePublicImplCopyWith<$Res> {
  __$$LecturerProfilePublicImplCopyWithImpl(_$LecturerProfilePublicImpl _value,
      $Res Function(_$LecturerProfilePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$LecturerProfilePublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LecturerProfilePublicImpl implements _LecturerProfilePublic {
  const _$LecturerProfilePublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'full_name') required this.fullName,
      @JsonKey(name: 'image_url') required this.imageUrl});

  factory _$LecturerProfilePublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$LecturerProfilePublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'image_url')
  final Uri? imageUrl;

  @override
  String toString() {
    return 'LecturerProfilePublic(id: $id, fullName: $fullName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerProfilePublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, imageUrl);

  /// Create a copy of LecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerProfilePublicImplCopyWith<_$LecturerProfilePublicImpl>
      get copyWith => __$$LecturerProfilePublicImplCopyWithImpl<
          _$LecturerProfilePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerProfilePublicImplToJson(
      this,
    );
  }
}

abstract class _LecturerProfilePublic implements LecturerProfilePublic {
  const factory _LecturerProfilePublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'full_name') required final String fullName,
          @JsonKey(name: 'image_url') required final Uri? imageUrl}) =
      _$LecturerProfilePublicImpl;

  factory _LecturerProfilePublic.fromJson(Map<String, dynamic> json) =
      _$LecturerProfilePublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'image_url')
  Uri? get imageUrl;

  /// Create a copy of LecturerProfilePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerProfilePublicImplCopyWith<_$LecturerProfilePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
