// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_study_program_section_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeedStudyProgramSectionPublic _$HomeFeedStudyProgramSectionPublicFromJson(
    Map<String, dynamic> json) {
  return _HomeFeedStudyProgramSectionPublic.fromJson(json);
}

/// @nodoc
mixin _$HomeFeedStudyProgramSectionPublic {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Type
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Description
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  HomeFeedStudyProgramSectionDataPublic get data =>
      throw _privateConstructorUsedError;

  /// Serializes this HomeFeedStudyProgramSectionPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeFeedStudyProgramSectionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeFeedStudyProgramSectionPublicCopyWith<HomeFeedStudyProgramSectionPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeedStudyProgramSectionPublicCopyWith<$Res> {
  factory $HomeFeedStudyProgramSectionPublicCopyWith(
          HomeFeedStudyProgramSectionPublic value,
          $Res Function(HomeFeedStudyProgramSectionPublic) then) =
      _$HomeFeedStudyProgramSectionPublicCopyWithImpl<$Res,
          HomeFeedStudyProgramSectionPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'data') HomeFeedStudyProgramSectionDataPublic data});

  $HomeFeedStudyProgramSectionDataPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeFeedStudyProgramSectionPublicCopyWithImpl<$Res,
        $Val extends HomeFeedStudyProgramSectionPublic>
    implements $HomeFeedStudyProgramSectionPublicCopyWith<$Res> {
  _$HomeFeedStudyProgramSectionPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeFeedStudyProgramSectionPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeFeedStudyProgramSectionDataPublic,
    ) as $Val);
  }

  /// Create a copy of HomeFeedStudyProgramSectionPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeFeedStudyProgramSectionDataPublicCopyWith<$Res> get data {
    return $HomeFeedStudyProgramSectionDataPublicCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeFeedStudyProgramSectionPublicImplCopyWith<$Res>
    implements $HomeFeedStudyProgramSectionPublicCopyWith<$Res> {
  factory _$$HomeFeedStudyProgramSectionPublicImplCopyWith(
          _$HomeFeedStudyProgramSectionPublicImpl value,
          $Res Function(_$HomeFeedStudyProgramSectionPublicImpl) then) =
      __$$HomeFeedStudyProgramSectionPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'data') HomeFeedStudyProgramSectionDataPublic data});

  @override
  $HomeFeedStudyProgramSectionDataPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeFeedStudyProgramSectionPublicImplCopyWithImpl<$Res>
    extends _$HomeFeedStudyProgramSectionPublicCopyWithImpl<$Res,
        _$HomeFeedStudyProgramSectionPublicImpl>
    implements _$$HomeFeedStudyProgramSectionPublicImplCopyWith<$Res> {
  __$$HomeFeedStudyProgramSectionPublicImplCopyWithImpl(
      _$HomeFeedStudyProgramSectionPublicImpl _value,
      $Res Function(_$HomeFeedStudyProgramSectionPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeFeedStudyProgramSectionPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
    Object? data = null,
  }) {
    return _then(_$HomeFeedStudyProgramSectionPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeFeedStudyProgramSectionDataPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeFeedStudyProgramSectionPublicImpl
    extends _HomeFeedStudyProgramSectionPublic {
  const _$HomeFeedStudyProgramSectionPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') required this.type = 'study_program',
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$HomeFeedStudyProgramSectionPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeFeedStudyProgramSectionPublicImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Type
  @override
  @JsonKey(name: 'type')
  final String type;

  /// Title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Description
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'data')
  final HomeFeedStudyProgramSectionDataPublic data;

  @override
  String toString() {
    return 'HomeFeedStudyProgramSectionPublic(id: $id, type: $type, title: $title, description: $description, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeedStudyProgramSectionPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, title, description, data);

  /// Create a copy of HomeFeedStudyProgramSectionPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFeedStudyProgramSectionPublicImplCopyWith<
          _$HomeFeedStudyProgramSectionPublicImpl>
      get copyWith => __$$HomeFeedStudyProgramSectionPublicImplCopyWithImpl<
          _$HomeFeedStudyProgramSectionPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeedStudyProgramSectionPublicImplToJson(
      this,
    );
  }
}

abstract class _HomeFeedStudyProgramSectionPublic
    extends HomeFeedStudyProgramSectionPublic {
  const factory _HomeFeedStudyProgramSectionPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'data')
          required final HomeFeedStudyProgramSectionDataPublic data}) =
      _$HomeFeedStudyProgramSectionPublicImpl;
  const _HomeFeedStudyProgramSectionPublic._() : super._();

  factory _HomeFeedStudyProgramSectionPublic.fromJson(
          Map<String, dynamic> json) =
      _$HomeFeedStudyProgramSectionPublicImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Type
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Description
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'data')
  HomeFeedStudyProgramSectionDataPublic get data;

  /// Create a copy of HomeFeedStudyProgramSectionPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeFeedStudyProgramSectionPublicImplCopyWith<
          _$HomeFeedStudyProgramSectionPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
