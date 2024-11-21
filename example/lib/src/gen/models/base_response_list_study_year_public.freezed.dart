// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_study_year_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListStudyYearPublic _$BaseResponseListStudyYearPublicFromJson(
    Map<String, dynamic> json) {
  return _BaseResponseListStudyYearPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListStudyYearPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<StudyYearPublic> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListStudyYearPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListStudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListStudyYearPublicCopyWith<BaseResponseListStudyYearPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListStudyYearPublicCopyWith<$Res> {
  factory $BaseResponseListStudyYearPublicCopyWith(
          BaseResponseListStudyYearPublic value,
          $Res Function(BaseResponseListStudyYearPublic) then) =
      _$BaseResponseListStudyYearPublicCopyWithImpl<$Res,
          BaseResponseListStudyYearPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<StudyYearPublic> data});
}

/// @nodoc
class _$BaseResponseListStudyYearPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListStudyYearPublic>
    implements $BaseResponseListStudyYearPublicCopyWith<$Res> {
  _$BaseResponseListStudyYearPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListStudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StudyYearPublic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListStudyYearPublicImplCopyWith<$Res>
    implements $BaseResponseListStudyYearPublicCopyWith<$Res> {
  factory _$$BaseResponseListStudyYearPublicImplCopyWith(
          _$BaseResponseListStudyYearPublicImpl value,
          $Res Function(_$BaseResponseListStudyYearPublicImpl) then) =
      __$$BaseResponseListStudyYearPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<StudyYearPublic> data});
}

/// @nodoc
class __$$BaseResponseListStudyYearPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListStudyYearPublicCopyWithImpl<$Res,
        _$BaseResponseListStudyYearPublicImpl>
    implements _$$BaseResponseListStudyYearPublicImplCopyWith<$Res> {
  __$$BaseResponseListStudyYearPublicImplCopyWithImpl(
      _$BaseResponseListStudyYearPublicImpl _value,
      $Res Function(_$BaseResponseListStudyYearPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListStudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListStudyYearPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StudyYearPublic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListStudyYearPublicImpl
    extends _BaseResponseListStudyYearPublic {
  const _$BaseResponseListStudyYearPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<StudyYearPublic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListStudyYearPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListStudyYearPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<StudyYearPublic> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<StudyYearPublic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListStudyYearPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListStudyYearPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListStudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListStudyYearPublicImplCopyWith<
          _$BaseResponseListStudyYearPublicImpl>
      get copyWith => __$$BaseResponseListStudyYearPublicImplCopyWithImpl<
          _$BaseResponseListStudyYearPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListStudyYearPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListStudyYearPublic
    extends BaseResponseListStudyYearPublic {
  const factory _BaseResponseListStudyYearPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<StudyYearPublic> data}) =
      _$BaseResponseListStudyYearPublicImpl;
  const _BaseResponseListStudyYearPublic._() : super._();

  factory _BaseResponseListStudyYearPublic.fromJson(Map<String, dynamic> json) =
      _$BaseResponseListStudyYearPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<StudyYearPublic> get data;

  /// Create a copy of BaseResponseListStudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListStudyYearPublicImplCopyWith<
          _$BaseResponseListStudyYearPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
