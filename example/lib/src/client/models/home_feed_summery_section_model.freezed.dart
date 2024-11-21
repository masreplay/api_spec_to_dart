// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_summery_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeedSummerySectionModel _$HomeFeedSummerySectionModelFromJson(
    Map<String, dynamic> json) {
  return _HomeFeedSummerySectionModel.fromJson(json);
}

/// @nodoc
mixin _$HomeFeedSummerySectionModel {
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
  HomeFeedSummerySectionDataPublic get data =>
      throw _privateConstructorUsedError;

  /// Serializes this HomeFeedSummerySectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeFeedSummerySectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeFeedSummerySectionModelCopyWith<HomeFeedSummerySectionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeedSummerySectionModelCopyWith<$Res> {
  factory $HomeFeedSummerySectionModelCopyWith(
          HomeFeedSummerySectionModel value,
          $Res Function(HomeFeedSummerySectionModel) then) =
      _$HomeFeedSummerySectionModelCopyWithImpl<$Res,
          HomeFeedSummerySectionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'data') HomeFeedSummerySectionDataPublic data});

  $HomeFeedSummerySectionDataPublicCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeFeedSummerySectionModelCopyWithImpl<$Res,
        $Val extends HomeFeedSummerySectionModel>
    implements $HomeFeedSummerySectionModelCopyWith<$Res> {
  _$HomeFeedSummerySectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeFeedSummerySectionModel
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
              as HomeFeedSummerySectionDataPublic,
    ) as $Val);
  }

  /// Create a copy of HomeFeedSummerySectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeFeedSummerySectionDataPublicCopyWith<$Res> get data {
    return $HomeFeedSummerySectionDataPublicCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeFeedSummerySectionModelImplCopyWith<$Res>
    implements $HomeFeedSummerySectionModelCopyWith<$Res> {
  factory _$$HomeFeedSummerySectionModelImplCopyWith(
          _$HomeFeedSummerySectionModelImpl value,
          $Res Function(_$HomeFeedSummerySectionModelImpl) then) =
      __$$HomeFeedSummerySectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'data') HomeFeedSummerySectionDataPublic data});

  @override
  $HomeFeedSummerySectionDataPublicCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeFeedSummerySectionModelImplCopyWithImpl<$Res>
    extends _$HomeFeedSummerySectionModelCopyWithImpl<$Res,
        _$HomeFeedSummerySectionModelImpl>
    implements _$$HomeFeedSummerySectionModelImplCopyWith<$Res> {
  __$$HomeFeedSummerySectionModelImplCopyWithImpl(
      _$HomeFeedSummerySectionModelImpl _value,
      $Res Function(_$HomeFeedSummerySectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeFeedSummerySectionModel
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
    return _then(_$HomeFeedSummerySectionModelImpl(
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
              as HomeFeedSummerySectionDataPublic,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeFeedSummerySectionModelImpl extends _HomeFeedSummerySectionModel {
  const _$HomeFeedSummerySectionModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') required this.type = 'summary',
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$HomeFeedSummerySectionModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeFeedSummerySectionModelImplFromJson(json);

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
  final HomeFeedSummerySectionDataPublic data;

  @override
  String toString() {
    return 'HomeFeedSummerySectionModel(id: $id, type: $type, title: $title, description: $description, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeedSummerySectionModelImpl &&
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

  /// Create a copy of HomeFeedSummerySectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFeedSummerySectionModelImplCopyWith<_$HomeFeedSummerySectionModelImpl>
      get copyWith => __$$HomeFeedSummerySectionModelImplCopyWithImpl<
          _$HomeFeedSummerySectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeedSummerySectionModelImplToJson(
      this,
    );
  }
}

abstract class _HomeFeedSummerySectionModel
    extends HomeFeedSummerySectionModel {
  const factory _HomeFeedSummerySectionModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'data')
          required final HomeFeedSummerySectionDataPublic data}) =
      _$HomeFeedSummerySectionModelImpl;
  const _HomeFeedSummerySectionModel._() : super._();

  factory _HomeFeedSummerySectionModel.fromJson(Map<String, dynamic> json) =
      _$HomeFeedSummerySectionModelImpl.fromJson;

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
  HomeFeedSummerySectionDataPublic get data;

  /// Create a copy of HomeFeedSummerySectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeFeedSummerySectionModelImplCopyWith<_$HomeFeedSummerySectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
