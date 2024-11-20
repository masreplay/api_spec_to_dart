// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_seamsters_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentSeamstersSummary _$StudentSeamstersSummaryFromJson(
    Map<String, dynamic> json) {
  return _StudentSeamstersSummary.fromJson(json);
}

/// @nodoc
mixin _$StudentSeamstersSummary {
  /// Id
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Is Active
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;

  /// Is Enabled
  @JsonKey(name: 'is_enabled')
  bool? get isEnabled => throw _privateConstructorUsedError;

  /// Total Number Of Units
  @JsonKey(name: 'total_number_of_units')
  num? get totalNumberOfUnits => throw _privateConstructorUsedError;

  /// Current Number Of Units
  @JsonKey(name: 'current_number_of_units')
  int get currentNumberOfUnits => throw _privateConstructorUsedError;

  /// Current Number Of Subjects
  @JsonKey(name: 'current_number_of_subjects')
  int get currentNumberOfSubjects => throw _privateConstructorUsedError;

  /// Current Subjects
  @JsonKey(name: 'current_subjects')
  List<dynamic> get currentSubjects => throw _privateConstructorUsedError;

  /// Previous Subjects
  @JsonKey(name: 'previous_subjects')
  List<dynamic> get previousSubjects => throw _privateConstructorUsedError;

  /// Serializes this StudentSeamstersSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentSeamstersSummaryCopyWith<StudentSeamstersSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentSeamstersSummaryCopyWith<$Res> {
  factory $StudentSeamstersSummaryCopyWith(StudentSeamstersSummary value,
          $Res Function(StudentSeamstersSummary) then) =
      _$StudentSeamstersSummaryCopyWithImpl<$Res, StudentSeamstersSummary>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_enabled') bool? isEnabled,
      @JsonKey(name: 'total_number_of_units') num? totalNumberOfUnits,
      @JsonKey(name: 'current_number_of_units') int currentNumberOfUnits,
      @JsonKey(name: 'current_number_of_subjects') int currentNumberOfSubjects,
      @JsonKey(name: 'current_subjects') List<dynamic> currentSubjects,
      @JsonKey(name: 'previous_subjects') List<dynamic> previousSubjects});
}

/// @nodoc
class _$StudentSeamstersSummaryCopyWithImpl<$Res,
        $Val extends StudentSeamstersSummary>
    implements $StudentSeamstersSummaryCopyWith<$Res> {
  _$StudentSeamstersSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
    Object? isEnabled = freezed,
    Object? totalNumberOfUnits = freezed,
    Object? currentNumberOfUnits = null,
    Object? currentNumberOfSubjects = null,
    Object? currentSubjects = null,
    Object? previousSubjects = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
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
      currentSubjects: null == currentSubjects
          ? _value.currentSubjects
          : currentSubjects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      previousSubjects: null == previousSubjects
          ? _value.previousSubjects
          : previousSubjects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentSeamstersSummaryImplCopyWith<$Res>
    implements $StudentSeamstersSummaryCopyWith<$Res> {
  factory _$$StudentSeamstersSummaryImplCopyWith(
          _$StudentSeamstersSummaryImpl value,
          $Res Function(_$StudentSeamstersSummaryImpl) then) =
      __$$StudentSeamstersSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'is_enabled') bool? isEnabled,
      @JsonKey(name: 'total_number_of_units') num? totalNumberOfUnits,
      @JsonKey(name: 'current_number_of_units') int currentNumberOfUnits,
      @JsonKey(name: 'current_number_of_subjects') int currentNumberOfSubjects,
      @JsonKey(name: 'current_subjects') List<dynamic> currentSubjects,
      @JsonKey(name: 'previous_subjects') List<dynamic> previousSubjects});
}

/// @nodoc
class __$$StudentSeamstersSummaryImplCopyWithImpl<$Res>
    extends _$StudentSeamstersSummaryCopyWithImpl<$Res,
        _$StudentSeamstersSummaryImpl>
    implements _$$StudentSeamstersSummaryImplCopyWith<$Res> {
  __$$StudentSeamstersSummaryImplCopyWithImpl(
      _$StudentSeamstersSummaryImpl _value,
      $Res Function(_$StudentSeamstersSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
    Object? isEnabled = freezed,
    Object? totalNumberOfUnits = freezed,
    Object? currentNumberOfUnits = null,
    Object? currentNumberOfSubjects = null,
    Object? currentSubjects = null,
    Object? previousSubjects = null,
  }) {
    return _then(_$StudentSeamstersSummaryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
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
      currentSubjects: null == currentSubjects
          ? _value._currentSubjects
          : currentSubjects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      previousSubjects: null == previousSubjects
          ? _value._previousSubjects
          : previousSubjects // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentSeamstersSummaryImpl extends _StudentSeamstersSummary {
  const _$StudentSeamstersSummaryImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'is_active') required this.isActive,
      @JsonKey(name: 'is_enabled') required this.isEnabled,
      @JsonKey(name: 'total_number_of_units') required this.totalNumberOfUnits,
      @JsonKey(name: 'current_number_of_units')
      required this.currentNumberOfUnits = 0,
      @JsonKey(name: 'current_number_of_subjects')
      required this.currentNumberOfSubjects = 0,
      @JsonKey(name: 'current_subjects')
      required final List<dynamic> currentSubjects,
      @JsonKey(name: 'previous_subjects')
      required final List<dynamic> previousSubjects})
      : _currentSubjects = currentSubjects,
        _previousSubjects = previousSubjects,
        super._();

  factory _$StudentSeamstersSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentSeamstersSummaryImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int? id;

  /// Name
  @override
  @JsonKey(name: 'name')
  final String? name;

  /// Is Active
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;

  /// Is Enabled
  @override
  @JsonKey(name: 'is_enabled')
  final bool? isEnabled;

  /// Total Number Of Units
  @override
  @JsonKey(name: 'total_number_of_units')
  final num? totalNumberOfUnits;

  /// Current Number Of Units
  @override
  @JsonKey(name: 'current_number_of_units')
  final int currentNumberOfUnits;

  /// Current Number Of Subjects
  @override
  @JsonKey(name: 'current_number_of_subjects')
  final int currentNumberOfSubjects;

  /// Current Subjects
  final List<dynamic> _currentSubjects;

  /// Current Subjects
  @override
  @JsonKey(name: 'current_subjects')
  List<dynamic> get currentSubjects {
    if (_currentSubjects is EqualUnmodifiableListView) return _currentSubjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentSubjects);
  }

  /// Previous Subjects
  final List<dynamic> _previousSubjects;

  /// Previous Subjects
  @override
  @JsonKey(name: 'previous_subjects')
  List<dynamic> get previousSubjects {
    if (_previousSubjects is EqualUnmodifiableListView)
      return _previousSubjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousSubjects);
  }

  @override
  String toString() {
    return 'StudentSeamstersSummary(id: $id, name: $name, isActive: $isActive, isEnabled: $isEnabled, totalNumberOfUnits: $totalNumberOfUnits, currentNumberOfUnits: $currentNumberOfUnits, currentNumberOfSubjects: $currentNumberOfSubjects, currentSubjects: $currentSubjects, previousSubjects: $previousSubjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentSeamstersSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.totalNumberOfUnits, totalNumberOfUnits) ||
                other.totalNumberOfUnits == totalNumberOfUnits) &&
            (identical(other.currentNumberOfUnits, currentNumberOfUnits) ||
                other.currentNumberOfUnits == currentNumberOfUnits) &&
            (identical(
                    other.currentNumberOfSubjects, currentNumberOfSubjects) ||
                other.currentNumberOfSubjects == currentNumberOfSubjects) &&
            const DeepCollectionEquality()
                .equals(other._currentSubjects, _currentSubjects) &&
            const DeepCollectionEquality()
                .equals(other._previousSubjects, _previousSubjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      isActive,
      isEnabled,
      totalNumberOfUnits,
      currentNumberOfUnits,
      currentNumberOfSubjects,
      const DeepCollectionEquality().hash(_currentSubjects),
      const DeepCollectionEquality().hash(_previousSubjects));

  /// Create a copy of StudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentSeamstersSummaryImplCopyWith<_$StudentSeamstersSummaryImpl>
      get copyWith => __$$StudentSeamstersSummaryImplCopyWithImpl<
          _$StudentSeamstersSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentSeamstersSummaryImplToJson(
      this,
    );
  }
}

abstract class _StudentSeamstersSummary extends StudentSeamstersSummary {
  const factory _StudentSeamstersSummary(
          {@JsonKey(name: 'id') required final int? id,
          @JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'is_active') required final bool? isActive,
          @JsonKey(name: 'is_enabled') required final bool? isEnabled,
          @JsonKey(name: 'total_number_of_units')
          required final num? totalNumberOfUnits,
          @JsonKey(name: 'current_number_of_units')
          required final int currentNumberOfUnits,
          @JsonKey(name: 'current_number_of_subjects')
          required final int currentNumberOfSubjects,
          @JsonKey(name: 'current_subjects')
          required final List<dynamic> currentSubjects,
          @JsonKey(name: 'previous_subjects')
          required final List<dynamic> previousSubjects}) =
      _$StudentSeamstersSummaryImpl;
  const _StudentSeamstersSummary._() : super._();

  factory _StudentSeamstersSummary.fromJson(Map<String, dynamic> json) =
      _$StudentSeamstersSummaryImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int? get id;

  /// Name
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Is Active
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;

  /// Is Enabled
  @override
  @JsonKey(name: 'is_enabled')
  bool? get isEnabled;

  /// Total Number Of Units
  @override
  @JsonKey(name: 'total_number_of_units')
  num? get totalNumberOfUnits;

  /// Current Number Of Units
  @override
  @JsonKey(name: 'current_number_of_units')
  int get currentNumberOfUnits;

  /// Current Number Of Subjects
  @override
  @JsonKey(name: 'current_number_of_subjects')
  int get currentNumberOfSubjects;

  /// Current Subjects
  @override
  @JsonKey(name: 'current_subjects')
  List<dynamic> get currentSubjects;

  /// Previous Subjects
  @override
  @JsonKey(name: 'previous_subjects')
  List<dynamic> get previousSubjects;

  /// Create a copy of StudentSeamstersSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentSeamstersSummaryImplCopyWith<_$StudentSeamstersSummaryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
