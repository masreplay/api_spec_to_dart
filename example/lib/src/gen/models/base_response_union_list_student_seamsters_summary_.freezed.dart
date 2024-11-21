// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_list_student_seamsters_summary_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionListStudentSeamstersSummary
    _$BaseResponseUnionListStudentSeamstersSummaryFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionListStudentSeamstersSummary.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionListStudentSeamstersSummary {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  /// Data
  @JsonKey(name: 'data')
  List<StudentSeamstersSummary>? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionListStudentSeamstersSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionListStudentSeamstersSummaryCopyWith<
          BaseResponseUnionListStudentSeamstersSummary>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionListStudentSeamstersSummaryCopyWith<$Res> {
  factory $BaseResponseUnionListStudentSeamstersSummaryCopyWith(
          BaseResponseUnionListStudentSeamstersSummary value,
          $Res Function(BaseResponseUnionListStudentSeamstersSummary) then) =
      _$BaseResponseUnionListStudentSeamstersSummaryCopyWithImpl<$Res,
          BaseResponseUnionListStudentSeamstersSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<StudentSeamstersSummary>? data});
}

/// @nodoc
class _$BaseResponseUnionListStudentSeamstersSummaryCopyWithImpl<$Res,
        $Val extends BaseResponseUnionListStudentSeamstersSummary>
    implements $BaseResponseUnionListStudentSeamstersSummaryCopyWith<$Res> {
  _$BaseResponseUnionListStudentSeamstersSummaryCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummary
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
              as List<StudentSeamstersSummary>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWith<$Res>
    implements $BaseResponseUnionListStudentSeamstersSummaryCopyWith<$Res> {
  factory _$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWith(
          _$BaseResponseUnionListStudentSeamstersSummaryImpl value,
          $Res Function(_$BaseResponseUnionListStudentSeamstersSummaryImpl)
              then) =
      __$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') List<StudentSeamstersSummary>? data});
}

/// @nodoc
class __$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionListStudentSeamstersSummaryCopyWithImpl<$Res,
        _$BaseResponseUnionListStudentSeamstersSummaryImpl>
    implements
        _$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWith<$Res> {
  __$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWithImpl(
      _$BaseResponseUnionListStudentSeamstersSummaryImpl _value,
      $Res Function(_$BaseResponseUnionListStudentSeamstersSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionListStudentSeamstersSummaryImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StudentSeamstersSummary>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionListStudentSeamstersSummaryImpl
    extends _BaseResponseUnionListStudentSeamstersSummary {
  const _$BaseResponseUnionListStudentSeamstersSummaryImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data')
      required final List<StudentSeamstersSummary>? data})
      : _data = data,
        super._();

  factory _$BaseResponseUnionListStudentSeamstersSummaryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionListStudentSeamstersSummaryImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;

  /// Data
  final List<StudentSeamstersSummary>? _data;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<StudentSeamstersSummary>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BaseResponseUnionListStudentSeamstersSummary(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionListStudentSeamstersSummaryImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWith<
          _$BaseResponseUnionListStudentSeamstersSummaryImpl>
      get copyWith =>
          __$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWithImpl<
                  _$BaseResponseUnionListStudentSeamstersSummaryImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionListStudentSeamstersSummaryImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionListStudentSeamstersSummary
    extends BaseResponseUnionListStudentSeamstersSummary {
  const factory _BaseResponseUnionListStudentSeamstersSummary(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final List<StudentSeamstersSummary>? data}) =
      _$BaseResponseUnionListStudentSeamstersSummaryImpl;
  const _BaseResponseUnionListStudentSeamstersSummary._() : super._();

  factory _BaseResponseUnionListStudentSeamstersSummary.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionListStudentSeamstersSummaryImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;

  /// Data
  @override
  @JsonKey(name: 'data')
  List<StudentSeamstersSummary>? get data;

  /// Create a copy of BaseResponseUnionListStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionListStudentSeamstersSummaryImplCopyWith<
          _$BaseResponseUnionListStudentSeamstersSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
