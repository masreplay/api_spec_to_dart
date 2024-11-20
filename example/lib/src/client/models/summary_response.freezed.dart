// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SummaryResponse _$SummaryResponseFromJson(Map<String, dynamic> json) {
  return _SummaryResponse.fromJson(json);
}

/// @nodoc
mixin _$SummaryResponse {
  @JsonKey(name: 'number_of_collage_subjects')
  int? get numberOfCollageSubjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_units')
  int? get numberOfUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_completed_units')
  int? get numberOfCompletedUnits => throw _privateConstructorUsedError;

  /// Serializes this SummaryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SummaryResponseCopyWith<SummaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryResponseCopyWith<$Res> {
  factory $SummaryResponseCopyWith(
          SummaryResponse value, $Res Function(SummaryResponse) then) =
      _$SummaryResponseCopyWithImpl<$Res, SummaryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'number_of_collage_subjects')
      int? numberOfCollageSubjects,
      @JsonKey(name: 'number_of_units') int? numberOfUnits,
      @JsonKey(name: 'number_of_completed_units') int? numberOfCompletedUnits});
}

/// @nodoc
class _$SummaryResponseCopyWithImpl<$Res, $Val extends SummaryResponse>
    implements $SummaryResponseCopyWith<$Res> {
  _$SummaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfCollageSubjects = freezed,
    Object? numberOfUnits = freezed,
    Object? numberOfCompletedUnits = freezed,
  }) {
    return _then(_value.copyWith(
      numberOfCollageSubjects: freezed == numberOfCollageSubjects
          ? _value.numberOfCollageSubjects
          : numberOfCollageSubjects // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfUnits: freezed == numberOfUnits
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfCompletedUnits: freezed == numberOfCompletedUnits
          ? _value.numberOfCompletedUnits
          : numberOfCompletedUnits // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SummaryResponseImplCopyWith<$Res>
    implements $SummaryResponseCopyWith<$Res> {
  factory _$$SummaryResponseImplCopyWith(_$SummaryResponseImpl value,
          $Res Function(_$SummaryResponseImpl) then) =
      __$$SummaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'number_of_collage_subjects')
      int? numberOfCollageSubjects,
      @JsonKey(name: 'number_of_units') int? numberOfUnits,
      @JsonKey(name: 'number_of_completed_units') int? numberOfCompletedUnits});
}

/// @nodoc
class __$$SummaryResponseImplCopyWithImpl<$Res>
    extends _$SummaryResponseCopyWithImpl<$Res, _$SummaryResponseImpl>
    implements _$$SummaryResponseImplCopyWith<$Res> {
  __$$SummaryResponseImplCopyWithImpl(
      _$SummaryResponseImpl _value, $Res Function(_$SummaryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberOfCollageSubjects = freezed,
    Object? numberOfUnits = freezed,
    Object? numberOfCompletedUnits = freezed,
  }) {
    return _then(_$SummaryResponseImpl(
      numberOfCollageSubjects: freezed == numberOfCollageSubjects
          ? _value.numberOfCollageSubjects
          : numberOfCollageSubjects // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfUnits: freezed == numberOfUnits
          ? _value.numberOfUnits
          : numberOfUnits // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfCompletedUnits: freezed == numberOfCompletedUnits
          ? _value.numberOfCompletedUnits
          : numberOfCompletedUnits // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryResponseImpl implements _SummaryResponse {
  const _$SummaryResponseImpl(
      {@JsonKey(name: 'number_of_collage_subjects')
      required this.numberOfCollageSubjects,
      @JsonKey(name: 'number_of_units') required this.numberOfUnits,
      @JsonKey(name: 'number_of_completed_units')
      required this.numberOfCompletedUnits});

  factory _$SummaryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'number_of_collage_subjects')
  final int? numberOfCollageSubjects;
  @override
  @JsonKey(name: 'number_of_units')
  final int? numberOfUnits;
  @override
  @JsonKey(name: 'number_of_completed_units')
  final int? numberOfCompletedUnits;

  @override
  String toString() {
    return 'SummaryResponse(numberOfCollageSubjects: $numberOfCollageSubjects, numberOfUnits: $numberOfUnits, numberOfCompletedUnits: $numberOfCompletedUnits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryResponseImpl &&
            (identical(
                    other.numberOfCollageSubjects, numberOfCollageSubjects) ||
                other.numberOfCollageSubjects == numberOfCollageSubjects) &&
            (identical(other.numberOfUnits, numberOfUnits) ||
                other.numberOfUnits == numberOfUnits) &&
            (identical(other.numberOfCompletedUnits, numberOfCompletedUnits) ||
                other.numberOfCompletedUnits == numberOfCompletedUnits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, numberOfCollageSubjects,
      numberOfUnits, numberOfCompletedUnits);

  /// Create a copy of SummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryResponseImplCopyWith<_$SummaryResponseImpl> get copyWith =>
      __$$SummaryResponseImplCopyWithImpl<_$SummaryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryResponseImplToJson(
      this,
    );
  }
}

abstract class _SummaryResponse implements SummaryResponse {
  const factory _SummaryResponse(
      {@JsonKey(name: 'number_of_collage_subjects')
      required final int? numberOfCollageSubjects,
      @JsonKey(name: 'number_of_units') required final int? numberOfUnits,
      @JsonKey(name: 'number_of_completed_units')
      required final int? numberOfCompletedUnits}) = _$SummaryResponseImpl;

  factory _SummaryResponse.fromJson(Map<String, dynamic> json) =
      _$SummaryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'number_of_collage_subjects')
  int? get numberOfCollageSubjects;
  @override
  @JsonKey(name: 'number_of_units')
  int? get numberOfUnits;
  @override
  @JsonKey(name: 'number_of_completed_units')
  int? get numberOfCompletedUnits;

  /// Create a copy of SummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SummaryResponseImplCopyWith<_$SummaryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
