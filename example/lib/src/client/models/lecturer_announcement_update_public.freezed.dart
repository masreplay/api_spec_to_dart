// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_announcement_update_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LecturerAnnouncementUpdatePublic _$LecturerAnnouncementUpdatePublicFromJson(
    Map<String, dynamic> json) {
  return _LecturerAnnouncementUpdatePublic.fromJson(json);
}

/// @nodoc
mixin _$LecturerAnnouncementUpdatePublic {
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this LecturerAnnouncementUpdatePublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LecturerAnnouncementUpdatePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LecturerAnnouncementUpdatePublicCopyWith<LecturerAnnouncementUpdatePublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerAnnouncementUpdatePublicCopyWith<$Res> {
  factory $LecturerAnnouncementUpdatePublicCopyWith(
          LecturerAnnouncementUpdatePublic value,
          $Res Function(LecturerAnnouncementUpdatePublic) then) =
      _$LecturerAnnouncementUpdatePublicCopyWithImpl<$Res,
          LecturerAnnouncementUpdatePublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$LecturerAnnouncementUpdatePublicCopyWithImpl<$Res,
        $Val extends LecturerAnnouncementUpdatePublic>
    implements $LecturerAnnouncementUpdatePublicCopyWith<$Res> {
  _$LecturerAnnouncementUpdatePublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LecturerAnnouncementUpdatePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LecturerAnnouncementUpdatePublicImplCopyWith<$Res>
    implements $LecturerAnnouncementUpdatePublicCopyWith<$Res> {
  factory _$$LecturerAnnouncementUpdatePublicImplCopyWith(
          _$LecturerAnnouncementUpdatePublicImpl value,
          $Res Function(_$LecturerAnnouncementUpdatePublicImpl) then) =
      __$$LecturerAnnouncementUpdatePublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$LecturerAnnouncementUpdatePublicImplCopyWithImpl<$Res>
    extends _$LecturerAnnouncementUpdatePublicCopyWithImpl<$Res,
        _$LecturerAnnouncementUpdatePublicImpl>
    implements _$$LecturerAnnouncementUpdatePublicImplCopyWith<$Res> {
  __$$LecturerAnnouncementUpdatePublicImplCopyWithImpl(
      _$LecturerAnnouncementUpdatePublicImpl _value,
      $Res Function(_$LecturerAnnouncementUpdatePublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of LecturerAnnouncementUpdatePublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$LecturerAnnouncementUpdatePublicImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LecturerAnnouncementUpdatePublicImpl
    implements _LecturerAnnouncementUpdatePublic {
  const _$LecturerAnnouncementUpdatePublicImpl(
      {@JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description});

  factory _$LecturerAnnouncementUpdatePublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LecturerAnnouncementUpdatePublicImplFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'LecturerAnnouncementUpdatePublic(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LecturerAnnouncementUpdatePublicImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  /// Create a copy of LecturerAnnouncementUpdatePublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LecturerAnnouncementUpdatePublicImplCopyWith<
          _$LecturerAnnouncementUpdatePublicImpl>
      get copyWith => __$$LecturerAnnouncementUpdatePublicImplCopyWithImpl<
          _$LecturerAnnouncementUpdatePublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LecturerAnnouncementUpdatePublicImplToJson(
      this,
    );
  }
}

abstract class _LecturerAnnouncementUpdatePublic
    implements LecturerAnnouncementUpdatePublic {
  const factory _LecturerAnnouncementUpdatePublic(
          {@JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description}) =
      _$LecturerAnnouncementUpdatePublicImpl;

  factory _LecturerAnnouncementUpdatePublic.fromJson(
          Map<String, dynamic> json) =
      _$LecturerAnnouncementUpdatePublicImpl.fromJson;

  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;

  /// Create a copy of LecturerAnnouncementUpdatePublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LecturerAnnouncementUpdatePublicImplCopyWith<
          _$LecturerAnnouncementUpdatePublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
