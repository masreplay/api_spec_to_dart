// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Summary _$SummaryFromJson(Map<String, dynamic> json) {
  return _Summary.fromJson(json);
}

/// @nodoc
mixin _$Summary {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_number_of_units')
  num? get totalNumberOfUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_number_of_units')
  int get currentNumberOfUnits => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_number_of_subjects')
  int get currentNumberOfSubjects => throw _privateConstructorUsedError;

  /// Serializes this Summary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SummaryCopyWith<Summary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryCopyWith<$Res> {
  factory $SummaryCopyWith(Summary value, $Res Function(Summary) then) =
      _$SummaryCopyWithImpl<$Res, Summary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'total_number_of_units') num? totalNumberOfUnits,
      @JsonKey(name: 'current_number_of_units') int currentNumberOfUnits,
      @JsonKey(name: 'current_number_of_subjects')
      int currentNumberOfSubjects});
}

/// @nodoc
class _$SummaryCopyWithImpl<$Res, $Val extends Summary>
    implements $SummaryCopyWith<$Res> {
  _$SummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isActive = freezed,
    Object? totalNumberOfUnits = freezed,
    Object? currentNumberOfUnits = null,
    Object? currentNumberOfSubjects = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalNumberOfUnits: freezed == totalNumberOfUnits
          ? _value.totalNumberOfUnits
          : totalNumberOfUnits // ignore: cast_nullable_to_non_nullable
              as num?,
      currentNumberOfUnits: null == currentNumberOfUnits
          ? _value.currentNumberOfUnits
          : currentNumberOfUnits // ignore: cast_nullable_to_non_nullable
              as int,
      currentNumberOfSubjects: null == currentNumberOfSubjects
          ? _value.currentNumberOfSubjects
          : currentNumberOfSubjects // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SummaryImplCopyWith<$Res> implements $SummaryCopyWith<$Res> {
  factory _$$SummaryImplCopyWith(
          _$SummaryImpl value, $Res Function(_$SummaryImpl) then) =
      __$$SummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'total_number_of_units') num? totalNumberOfUnits,
      @JsonKey(name: 'current_number_of_units') int currentNumberOfUnits,
      @JsonKey(name: 'current_number_of_subjects')
      int currentNumberOfSubjects});
}

/// @nodoc
class __$$SummaryImplCopyWithImpl<$Res>
    extends _$SummaryCopyWithImpl<$Res, _$SummaryImpl>
    implements _$$SummaryImplCopyWith<$Res> {
  __$$SummaryImplCopyWithImpl(
      _$SummaryImpl _value, $Res Function(_$SummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? isActive = freezed,
    Object? totalNumberOfUnits = freezed,
    Object? currentNumberOfUnits = null,
    Object? currentNumberOfSubjects = null,
  }) {
    return _then(_$SummaryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalNumberOfUnits: freezed == totalNumberOfUnits
          ? _value.totalNumberOfUnits
          : totalNumberOfUnits // ignore: cast_nullable_to_non_nullable
              as num?,
      currentNumberOfUnits: null == currentNumberOfUnits
          ? _value.currentNumberOfUnits
          : currentNumberOfUnits // ignore: cast_nullable_to_non_nullable
              as int,
      currentNumberOfSubjects: null == currentNumberOfSubjects
          ? _value.currentNumberOfSubjects
          : currentNumberOfSubjects // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryImpl implements _Summary {
  const _$SummaryImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'total_number_of_units') required this.totalNumberOfUnits,
      @JsonKey(name: 'current_number_of_units')
      required this.currentNumberOfUnits = 0,
      @JsonKey(name: 'current_number_of_subjects')
      required this.currentNumberOfSubjects = 0});

  factory _$SummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'total_number_of_units')
  final num? totalNumberOfUnits;
  @override
  @JsonKey(name: 'current_number_of_units')
  final int currentNumberOfUnits;
  @override
  @JsonKey(name: 'current_number_of_subjects')
  final int currentNumberOfSubjects;

  @override
  String toString() {
    return 'Summary(id: $id, title: $title, isActive: $isActive, totalNumberOfUnits: $totalNumberOfUnits, currentNumberOfUnits: $currentNumberOfUnits, currentNumberOfSubjects: $currentNumberOfSubjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.totalNumberOfUnits, totalNumberOfUnits) ||
                other.totalNumberOfUnits == totalNumberOfUnits) &&
            (identical(other.currentNumberOfUnits, currentNumberOfUnits) ||
                other.currentNumberOfUnits == currentNumberOfUnits) &&
            (identical(
                    other.currentNumberOfSubjects, currentNumberOfSubjects) ||
                other.currentNumberOfSubjects == currentNumberOfSubjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, isActive,
      totalNumberOfUnits, currentNumberOfUnits, currentNumberOfSubjects);

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      __$$SummaryImplCopyWithImpl<_$SummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryImplToJson(
      this,
    );
  }
}

abstract class _Summary implements Summary {
  const factory _Summary(
      {@JsonKey(name: 'id') required final int? id,
      @JsonKey(name: 'title') required final String? title,
      @JsonKey(name: 'is_active') required final bool? isActive,
      @JsonKey(name: 'total_number_of_units')
      required final num? totalNumberOfUnits,
      @JsonKey(name: 'current_number_of_units')
      required final int currentNumberOfUnits,
      @JsonKey(name: 'current_number_of_subjects')
      required final int currentNumberOfSubjects}) = _$SummaryImpl;

  factory _Summary.fromJson(Map<String, dynamic> json) = _$SummaryImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'total_number_of_units')
  num? get totalNumberOfUnits;
  @override
  @JsonKey(name: 'current_number_of_units')
  int get currentNumberOfUnits;
  @override
  @JsonKey(name: 'current_number_of_subjects')
  int get currentNumberOfSubjects;

  /// Create a copy of Summary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SummaryImplCopyWith<_$SummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
