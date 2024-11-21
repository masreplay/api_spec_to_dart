// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_list_student_selected_courses_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseListStudentSelectedCoursesPublic
    _$BaseResponseListStudentSelectedCoursesPublicFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseListStudentSelectedCoursesPublic.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseListStudentSelectedCoursesPublic {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<StudentSelectedCoursesPublic> get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BaseResponseListStudentSelectedCoursesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseListStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseListStudentSelectedCoursesPublicCopyWith<
          BaseResponseListStudentSelectedCoursesPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseListStudentSelectedCoursesPublicCopyWith<$Res> {
  factory $BaseResponseListStudentSelectedCoursesPublicCopyWith(
          BaseResponseListStudentSelectedCoursesPublic value,
          $Res Function(BaseResponseListStudentSelectedCoursesPublic) then) =
      _$BaseResponseListStudentSelectedCoursesPublicCopyWithImpl<$Res,
          BaseResponseListStudentSelectedCoursesPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<StudentSelectedCoursesPublic> data});
}

/// @nodoc
class _$BaseResponseListStudentSelectedCoursesPublicCopyWithImpl<$Res,
        $Val extends BaseResponseListStudentSelectedCoursesPublic>
    implements $BaseResponseListStudentSelectedCoursesPublicCopyWith<$Res> {
  _$BaseResponseListStudentSelectedCoursesPublicCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseListStudentSelectedCoursesPublic
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
              as List<StudentSelectedCoursesPublic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseListStudentSelectedCoursesPublicImplCopyWith<$Res>
    implements $BaseResponseListStudentSelectedCoursesPublicCopyWith<$Res> {
  factory _$$BaseResponseListStudentSelectedCoursesPublicImplCopyWith(
          _$BaseResponseListStudentSelectedCoursesPublicImpl value,
          $Res Function(_$BaseResponseListStudentSelectedCoursesPublicImpl)
              then) =
      __$$BaseResponseListStudentSelectedCoursesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<StudentSelectedCoursesPublic> data});
}

/// @nodoc
class __$$BaseResponseListStudentSelectedCoursesPublicImplCopyWithImpl<$Res>
    extends _$BaseResponseListStudentSelectedCoursesPublicCopyWithImpl<$Res,
        _$BaseResponseListStudentSelectedCoursesPublicImpl>
    implements
        _$$BaseResponseListStudentSelectedCoursesPublicImplCopyWith<$Res> {
  __$$BaseResponseListStudentSelectedCoursesPublicImplCopyWithImpl(
      _$BaseResponseListStudentSelectedCoursesPublicImpl _value,
      $Res Function(_$BaseResponseListStudentSelectedCoursesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseListStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseResponseListStudentSelectedCoursesPublicImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StudentSelectedCoursesPublic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseListStudentSelectedCoursesPublicImpl
    extends _BaseResponseListStudentSelectedCoursesPublic {
  const _$BaseResponseListStudentSelectedCoursesPublicImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data')
      required final List<StudentSelectedCoursesPublic> data})
      : _data = data,
        super._();

  factory _$BaseResponseListStudentSelectedCoursesPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseListStudentSelectedCoursesPublicImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<StudentSelectedCoursesPublic> _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<StudentSelectedCoursesPublic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseResponseListStudentSelectedCoursesPublic(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseListStudentSelectedCoursesPublicImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseListStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseListStudentSelectedCoursesPublicImplCopyWith<
          _$BaseResponseListStudentSelectedCoursesPublicImpl>
      get copyWith =>
          __$$BaseResponseListStudentSelectedCoursesPublicImplCopyWithImpl<
                  _$BaseResponseListStudentSelectedCoursesPublicImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseListStudentSelectedCoursesPublicImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseListStudentSelectedCoursesPublic
    extends BaseResponseListStudentSelectedCoursesPublic {
  const factory _BaseResponseListStudentSelectedCoursesPublic(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<StudentSelectedCoursesPublic> data}) =
      _$BaseResponseListStudentSelectedCoursesPublicImpl;
  const _BaseResponseListStudentSelectedCoursesPublic._() : super._();

  factory _BaseResponseListStudentSelectedCoursesPublic.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseListStudentSelectedCoursesPublicImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<StudentSelectedCoursesPublic> get data;

  /// Create a copy of BaseResponseListStudentSelectedCoursesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseListStudentSelectedCoursesPublicImplCopyWith<
          _$BaseResponseListStudentSelectedCoursesPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
