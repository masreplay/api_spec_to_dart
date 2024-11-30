// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homework_calender_event_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeworkCalenderEventPublic _$HomeworkCalenderEventPublicFromJson(
    Map<String, dynamic> json) {
  return _HomeworkCalenderEventPublic.fromJson(json);
}

/// @nodoc
mixin _$HomeworkCalenderEventPublic {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Start Date
  @JsonKey(name: 'start_date')
  DateTime? get startDate => throw _privateConstructorUsedError;

  /// Start Date Formatted
  @JsonKey(name: 'start_date_formatted')
  String? get startDateFormatted => throw _privateConstructorUsedError;

  /// End Date
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;

  /// End Date Formatted
  @JsonKey(name: 'end_date_formatted')
  String? get endDateFormatted => throw _privateConstructorUsedError;

  /// Type
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Description
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this HomeworkCalenderEventPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeworkCalenderEventPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeworkCalenderEventPublicCopyWith<HomeworkCalenderEventPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeworkCalenderEventPublicCopyWith<$Res> {
  factory $HomeworkCalenderEventPublicCopyWith(
          HomeworkCalenderEventPublic value,
          $Res Function(HomeworkCalenderEventPublic) then) =
      _$HomeworkCalenderEventPublicCopyWithImpl<$Res,
          HomeworkCalenderEventPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'start_date_formatted') String? startDateFormatted,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'end_date_formatted') String? endDateFormatted,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$HomeworkCalenderEventPublicCopyWithImpl<$Res,
        $Val extends HomeworkCalenderEventPublic>
    implements $HomeworkCalenderEventPublicCopyWith<$Res> {
  _$HomeworkCalenderEventPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeworkCalenderEventPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = freezed,
    Object? startDateFormatted = freezed,
    Object? endDate = freezed,
    Object? endDateFormatted = freezed,
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDateFormatted: freezed == startDateFormatted
          ? _value.startDateFormatted
          : startDateFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateFormatted: freezed == endDateFormatted
          ? _value.endDateFormatted
          : endDateFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeworkCalenderEventPublicImplCopyWith<$Res>
    implements $HomeworkCalenderEventPublicCopyWith<$Res> {
  factory _$$HomeworkCalenderEventPublicImplCopyWith(
          _$HomeworkCalenderEventPublicImpl value,
          $Res Function(_$HomeworkCalenderEventPublicImpl) then) =
      __$$HomeworkCalenderEventPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'start_date') DateTime? startDate,
      @JsonKey(name: 'start_date_formatted') String? startDateFormatted,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'end_date_formatted') String? endDateFormatted,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$HomeworkCalenderEventPublicImplCopyWithImpl<$Res>
    extends _$HomeworkCalenderEventPublicCopyWithImpl<$Res,
        _$HomeworkCalenderEventPublicImpl>
    implements _$$HomeworkCalenderEventPublicImplCopyWith<$Res> {
  __$$HomeworkCalenderEventPublicImplCopyWithImpl(
      _$HomeworkCalenderEventPublicImpl _value,
      $Res Function(_$HomeworkCalenderEventPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeworkCalenderEventPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startDate = freezed,
    Object? startDateFormatted = freezed,
    Object? endDate = freezed,
    Object? endDateFormatted = freezed,
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
  }) {
    return _then(_$HomeworkCalenderEventPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDateFormatted: freezed == startDateFormatted
          ? _value.startDateFormatted
          : startDateFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDateFormatted: freezed == endDateFormatted
          ? _value.endDateFormatted
          : endDateFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeworkCalenderEventPublicImpl extends _HomeworkCalenderEventPublic {
  const _$HomeworkCalenderEventPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'start_date') required this.startDate,
      @JsonKey(name: 'start_date_formatted') required this.startDateFormatted,
      @JsonKey(name: 'end_date') required this.endDate,
      @JsonKey(name: 'end_date_formatted') required this.endDateFormatted,
      @JsonKey(name: 'type') this.type = 'assignment',
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description})
      : super._();

  factory _$HomeworkCalenderEventPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeworkCalenderEventPublicImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Start Date
  @override
  @JsonKey(name: 'start_date')
  final DateTime? startDate;

  /// Start Date Formatted
  @override
  @JsonKey(name: 'start_date_formatted')
  final String? startDateFormatted;

  /// End Date
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;

  /// End Date Formatted
  @override
  @JsonKey(name: 'end_date_formatted')
  final String? endDateFormatted;

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
  String toString() {
    return 'HomeworkCalenderEventPublic(id: $id, startDate: $startDate, startDateFormatted: $startDateFormatted, endDate: $endDate, endDateFormatted: $endDateFormatted, type: $type, title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeworkCalenderEventPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.startDateFormatted, startDateFormatted) ||
                other.startDateFormatted == startDateFormatted) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.endDateFormatted, endDateFormatted) ||
                other.endDateFormatted == endDateFormatted) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, startDate,
      startDateFormatted, endDate, endDateFormatted, type, title, description);

  /// Create a copy of HomeworkCalenderEventPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeworkCalenderEventPublicImplCopyWith<_$HomeworkCalenderEventPublicImpl>
      get copyWith => __$$HomeworkCalenderEventPublicImplCopyWithImpl<
          _$HomeworkCalenderEventPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeworkCalenderEventPublicImplToJson(
      this,
    );
  }
}

abstract class _HomeworkCalenderEventPublic
    extends HomeworkCalenderEventPublic {
  const factory _HomeworkCalenderEventPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'start_date') required final DateTime? startDate,
          @JsonKey(name: 'start_date_formatted')
          required final String? startDateFormatted,
          @JsonKey(name: 'end_date') required final DateTime? endDate,
          @JsonKey(name: 'end_date_formatted')
          required final String? endDateFormatted,
          @JsonKey(name: 'type') final String type,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description}) =
      _$HomeworkCalenderEventPublicImpl;
  const _HomeworkCalenderEventPublic._() : super._();

  factory _HomeworkCalenderEventPublic.fromJson(Map<String, dynamic> json) =
      _$HomeworkCalenderEventPublicImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Start Date
  @override
  @JsonKey(name: 'start_date')
  DateTime? get startDate;

  /// Start Date Formatted
  @override
  @JsonKey(name: 'start_date_formatted')
  String? get startDateFormatted;

  /// End Date
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;

  /// End Date Formatted
  @override
  @JsonKey(name: 'end_date_formatted')
  String? get endDateFormatted;

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

  /// Create a copy of HomeworkCalenderEventPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeworkCalenderEventPublicImplCopyWith<_$HomeworkCalenderEventPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
