// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_student_seamsters_summary_none_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListStudentSeamstersSummaryNoneType
    _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListStudentSeamstersSummaryNoneType.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListStudentSeamstersSummaryNoneType {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListStudentSeamstersSummaryNoneType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummaryNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWith<
          BaseResponseUnionListStudentSeamstersSummaryNoneType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWith<
    $Res> {
  factory $BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWith(
          BaseResponseUnionListStudentSeamstersSummaryNoneType value,
          $Res Function(BaseResponseUnionListStudentSeamstersSummaryNoneType)
              then) =
      _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWithImpl<$Res,
          BaseResponseUnionListStudentSeamstersSummaryNoneType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic>? data});
}

/// @nodoc
class _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListStudentSeamstersSummaryNoneType>
    implements
        $BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWith<$Res> {
  _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummaryNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWith<
        $Res>
    implements
        $BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWith<$Res> {
  factory _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWith(
          _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl value,
          $Res Function(
                  _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl)
              then) =
      __$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<dynamic>? data});
}

/// @nodoc
class __$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWithImpl<
        $Res>
    extends _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeCopyWithImpl<
        $Res, _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl>
    implements
        _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWith<
            $Res> {
  __$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWithImpl(
      _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl _value,
      $Res Function(_$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummaryNoneType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl
    extends _BaseResponseUnionListStudentSeamstersSummaryNoneType {
  const _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required final List<dynamic>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<dynamic>? _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionListStudentSeamstersSummaryNoneType(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummaryNoneType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWith<
          _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl>
      get copyWith =>
          __$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWithImpl<
                  _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListStudentSeamstersSummaryNoneType
    extends BaseResponseUnionListStudentSeamstersSummaryNoneType {
  const factory _BaseResponseUnionListStudentSeamstersSummaryNoneType(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data') required final List<dynamic>? data}) =
      _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl;
  const _BaseResponseUnionListStudentSeamstersSummaryNoneType._() : super._();

  factory _BaseResponseUnionListStudentSeamstersSummaryNoneType.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<dynamic>? get data;

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummaryNoneType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplCopyWith<
          _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
