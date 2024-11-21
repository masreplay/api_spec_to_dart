// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_union_student_seamsters_summary_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseUnionStudentSeamstersSummary
    _$BaseResponseUnionStudentSeamstersSummaryFromJson(
        Map<String, dynamic> json) {
  return _BaseResponseUnionStudentSeamstersSummary.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseUnionStudentSeamstersSummary {
  /// Message
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  StudentSeamstersSummary? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseResponseUnionStudentSeamstersSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseResponseUnionStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseResponseUnionStudentSeamstersSummaryCopyWith<
          BaseResponseUnionStudentSeamstersSummary>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseUnionStudentSeamstersSummaryCopyWith<$Res> {
  factory $BaseResponseUnionStudentSeamstersSummaryCopyWith(
          BaseResponseUnionStudentSeamstersSummary value,
          $Res Function(BaseResponseUnionStudentSeamstersSummary) then) =
      _$BaseResponseUnionStudentSeamstersSummaryCopyWithImpl<$Res,
          BaseResponseUnionStudentSeamstersSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSeamstersSummary? data});

  $StudentSeamstersSummaryCopyWith<$Res>? get data;
}

/// @nodoc
class _$BaseResponseUnionStudentSeamstersSummaryCopyWithImpl<$Res,
        $Val extends BaseResponseUnionStudentSeamstersSummary>
    implements $BaseResponseUnionStudentSeamstersSummaryCopyWith<$Res> {
  _$BaseResponseUnionStudentSeamstersSummaryCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseResponseUnionStudentSeamstersSummary
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
              as StudentSeamstersSummary?,
    ) as $Val);
  }

  /// Create a copy of BaseResponseUnionStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentSeamstersSummaryCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $StudentSeamstersSummaryCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BaseResponseUnionStudentSeamstersSummaryImplCopyWith<$Res>
    implements $BaseResponseUnionStudentSeamstersSummaryCopyWith<$Res> {
  factory _$$BaseResponseUnionStudentSeamstersSummaryImplCopyWith(
          _$BaseResponseUnionStudentSeamstersSummaryImpl value,
          $Res Function(_$BaseResponseUnionStudentSeamstersSummaryImpl) then) =
      __$$BaseResponseUnionStudentSeamstersSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') StudentSeamstersSummary? data});

  @override
  $StudentSeamstersSummaryCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BaseResponseUnionStudentSeamstersSummaryImplCopyWithImpl<$Res>
    extends _$BaseResponseUnionStudentSeamstersSummaryCopyWithImpl<$Res,
        _$BaseResponseUnionStudentSeamstersSummaryImpl>
    implements _$$BaseResponseUnionStudentSeamstersSummaryImplCopyWith<$Res> {
  __$$BaseResponseUnionStudentSeamstersSummaryImplCopyWithImpl(
      _$BaseResponseUnionStudentSeamstersSummaryImpl _value,
      $Res Function(_$BaseResponseUnionStudentSeamstersSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseResponseUnionStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseResponseUnionStudentSeamstersSummaryImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as StudentSeamstersSummary?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$BaseResponseUnionStudentSeamstersSummaryImpl
    extends _BaseResponseUnionStudentSeamstersSummary {
  const _$BaseResponseUnionStudentSeamstersSummaryImpl(
      {@JsonKey(name: 'message') required this.message,
      @JsonKey(name: 'data') required this.data})
      : super._();

  factory _$BaseResponseUnionStudentSeamstersSummaryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BaseResponseUnionStudentSeamstersSummaryImplFromJson(json);

  /// Message
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final StudentSeamstersSummary? data;

  @override
  String toString() {
    return 'BaseResponseUnionStudentSeamstersSummary(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseUnionStudentSeamstersSummaryImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  /// Create a copy of BaseResponseUnionStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseUnionStudentSeamstersSummaryImplCopyWith<
          _$BaseResponseUnionStudentSeamstersSummaryImpl>
      get copyWith =>
          __$$BaseResponseUnionStudentSeamstersSummaryImplCopyWithImpl<
              _$BaseResponseUnionStudentSeamstersSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseUnionStudentSeamstersSummaryImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseUnionStudentSeamstersSummary
    extends BaseResponseUnionStudentSeamstersSummary {
  const factory _BaseResponseUnionStudentSeamstersSummary(
          {@JsonKey(name: 'message') required final String? message,
          @JsonKey(name: 'data')
          required final StudentSeamstersSummary? data}) =
      _$BaseResponseUnionStudentSeamstersSummaryImpl;
  const _BaseResponseUnionStudentSeamstersSummary._() : super._();

  factory _BaseResponseUnionStudentSeamstersSummary.fromJson(
          Map<String, dynamic> json) =
      _$BaseResponseUnionStudentSeamstersSummaryImpl.fromJson;

  /// Message
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  StudentSeamstersSummary? get data;

  /// Create a copy of BaseResponseUnionStudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseResponseUnionStudentSeamstersSummaryImplCopyWith<
          _$BaseResponseUnionStudentSeamstersSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
