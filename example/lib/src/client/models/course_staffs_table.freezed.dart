// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_staffs_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseStaffsTable _$CourseStaffsTableFromJson(Map<String, dynamic> json) {
  return _CourseStaffsTable.fromJson(json);
}

/// @nodoc
mixin _$CourseStaffsTable {
  /// Employee Id
  @JsonKey(name: 'employee_id')
  int get employeeId => throw _privateConstructorUsedError;

  /// Employee Role
  @JsonKey(name: 'employee_role')
  int get employeeRole => throw _privateConstructorUsedError;

  /// Capacity
  @JsonKey(name: 'capacity')
  int get capacity => throw _privateConstructorUsedError;

  /// Close Editing Employee
  @JsonKey(name: 'close_editing_employee')
  bool get closeEditingEmployee => throw _privateConstructorUsedError;

  /// Course Configuration
  @JsonKey(name: 'course_configuration')
  Map<String, dynamic>? get courseConfiguration =>
      throw _privateConstructorUsedError;

  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Course Id
  @JsonKey(name: 'course_id')
  int get courseId => throw _privateConstructorUsedError;

  /// Creator Id
  @JsonKey(name: 'creator_id')
  int get creatorId => throw _privateConstructorUsedError;

  /// Creation Time
  @JsonKey(name: 'creation_time')
  DateTime get creationTime => throw _privateConstructorUsedError;

  /// Last Modifier Id
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId => throw _privateConstructorUsedError;

  /// Last Modification Time
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime => throw _privateConstructorUsedError;

  /// Is Deleted
  @JsonKey(name: 'is_deleted')
  bool get isDeleted => throw _privateConstructorUsedError;

  /// Deleter Id
  @JsonKey(name: 'deleter_id')
  int? get deleterId => throw _privateConstructorUsedError;

  /// Deletion Time
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime => throw _privateConstructorUsedError;

  /// Serializes this CourseStaffsTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseStaffsTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseStaffsTableCopyWith<CourseStaffsTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStaffsTableCopyWith<$Res> {
  factory $CourseStaffsTableCopyWith(
          CourseStaffsTable value, $Res Function(CourseStaffsTable) then) =
      _$CourseStaffsTableCopyWithImpl<$Res, CourseStaffsTable>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'employee_role') int employeeRole,
      @JsonKey(name: 'capacity') int capacity,
      @JsonKey(name: 'close_editing_employee') bool closeEditingEmployee,
      @JsonKey(name: 'course_configuration')
      Map<String, dynamic>? courseConfiguration,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});
}

/// @nodoc
class _$CourseStaffsTableCopyWithImpl<$Res, $Val extends CourseStaffsTable>
    implements $CourseStaffsTableCopyWith<$Res> {
  _$CourseStaffsTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseStaffsTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? employeeRole = null,
    Object? capacity = null,
    Object? closeEditingEmployee = null,
    Object? courseConfiguration = freezed,
    Object? id = null,
    Object? courseId = null,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
  }) {
    return _then(_value.copyWith(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeRole: null == employeeRole
          ? _value.employeeRole
          : employeeRole // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      closeEditingEmployee: null == closeEditingEmployee
          ? _value.closeEditingEmployee
          : closeEditingEmployee // ignore: cast_nullable_to_non_nullable
              as bool,
      courseConfiguration: freezed == courseConfiguration
          ? _value.courseConfiguration
          : courseConfiguration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModifierId: freezed == lastModifierId
          ? _value.lastModifierId
          : lastModifierId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModificationTime: freezed == lastModificationTime
          ? _value.lastModificationTime
          : lastModificationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deleterId: freezed == deleterId
          ? _value.deleterId
          : deleterId // ignore: cast_nullable_to_non_nullable
              as int?,
      deletionTime: freezed == deletionTime
          ? _value.deletionTime
          : deletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseStaffsTableImplCopyWith<$Res>
    implements $CourseStaffsTableCopyWith<$Res> {
  factory _$$CourseStaffsTableImplCopyWith(_$CourseStaffsTableImpl value,
          $Res Function(_$CourseStaffsTableImpl) then) =
      __$$CourseStaffsTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'employee_role') int employeeRole,
      @JsonKey(name: 'capacity') int capacity,
      @JsonKey(name: 'close_editing_employee') bool closeEditingEmployee,
      @JsonKey(name: 'course_configuration')
      Map<String, dynamic>? courseConfiguration,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'course_id') int courseId,
      @JsonKey(name: 'creator_id') int creatorId,
      @JsonKey(name: 'creation_time') DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') int? lastModifierId,
      @JsonKey(name: 'last_modification_time') DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') bool isDeleted,
      @JsonKey(name: 'deleter_id') int? deleterId,
      @JsonKey(name: 'deletion_time') DateTime? deletionTime});
}

/// @nodoc
class __$$CourseStaffsTableImplCopyWithImpl<$Res>
    extends _$CourseStaffsTableCopyWithImpl<$Res, _$CourseStaffsTableImpl>
    implements _$$CourseStaffsTableImplCopyWith<$Res> {
  __$$CourseStaffsTableImplCopyWithImpl(_$CourseStaffsTableImpl _value,
      $Res Function(_$CourseStaffsTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseStaffsTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? employeeRole = null,
    Object? capacity = null,
    Object? closeEditingEmployee = null,
    Object? courseConfiguration = freezed,
    Object? id = null,
    Object? courseId = null,
    Object? creatorId = null,
    Object? creationTime = null,
    Object? lastModifierId = freezed,
    Object? lastModificationTime = freezed,
    Object? isDeleted = null,
    Object? deleterId = freezed,
    Object? deletionTime = freezed,
  }) {
    return _then(_$CourseStaffsTableImpl(
      employeeId: null == employeeId
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
      employeeRole: null == employeeRole
          ? _value.employeeRole
          : employeeRole // ignore: cast_nullable_to_non_nullable
              as int,
      capacity: null == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as int,
      closeEditingEmployee: null == closeEditingEmployee
          ? _value.closeEditingEmployee
          : closeEditingEmployee // ignore: cast_nullable_to_non_nullable
              as bool,
      courseConfiguration: freezed == courseConfiguration
          ? _value._courseConfiguration
          : courseConfiguration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastModifierId: freezed == lastModifierId
          ? _value.lastModifierId
          : lastModifierId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastModificationTime: freezed == lastModificationTime
          ? _value.lastModificationTime
          : lastModificationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
      deleterId: freezed == deleterId
          ? _value.deleterId
          : deleterId // ignore: cast_nullable_to_non_nullable
              as int?,
      deletionTime: freezed == deletionTime
          ? _value.deletionTime
          : deletionTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CourseStaffsTableImpl extends _CourseStaffsTable {
  const _$CourseStaffsTableImpl(
      {@JsonKey(name: 'employee_id') required this.employeeId,
      @JsonKey(name: 'employee_role') required this.employeeRole,
      @JsonKey(name: 'capacity') required this.capacity,
      @JsonKey(name: 'close_editing_employee')
      required this.closeEditingEmployee,
      @JsonKey(name: 'course_configuration')
      required final Map<String, dynamic>? courseConfiguration,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'creator_id') required this.creatorId,
      @JsonKey(name: 'creation_time') required this.creationTime,
      @JsonKey(name: 'last_modifier_id') required this.lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required this.lastModificationTime,
      @JsonKey(name: 'is_deleted') required this.isDeleted,
      @JsonKey(name: 'deleter_id') required this.deleterId,
      @JsonKey(name: 'deletion_time') required this.deletionTime})
      : _courseConfiguration = courseConfiguration,
        super._();

  factory _$CourseStaffsTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseStaffsTableImplFromJson(json);

  /// Employee Id
  @override
  @JsonKey(name: 'employee_id')
  final int employeeId;

  /// Employee Role
  @override
  @JsonKey(name: 'employee_role')
  final int employeeRole;

  /// Capacity
  @override
  @JsonKey(name: 'capacity')
  final int capacity;

  /// Close Editing Employee
  @override
  @JsonKey(name: 'close_editing_employee')
  final bool closeEditingEmployee;

  /// Course Configuration
  final Map<String, dynamic>? _courseConfiguration;

  /// Course Configuration
  @override
  @JsonKey(name: 'course_configuration')
  Map<String, dynamic>? get courseConfiguration {
    final value = _courseConfiguration;
    if (value == null) return null;
    if (_courseConfiguration is EqualUnmodifiableMapView)
      return _courseConfiguration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Course Id
  @override
  @JsonKey(name: 'course_id')
  final int courseId;

  /// Creator Id
  @override
  @JsonKey(name: 'creator_id')
  final int creatorId;

  /// Creation Time
  @override
  @JsonKey(name: 'creation_time')
  final DateTime creationTime;

  /// Last Modifier Id
  @override
  @JsonKey(name: 'last_modifier_id')
  final int? lastModifierId;

  /// Last Modification Time
  @override
  @JsonKey(name: 'last_modification_time')
  final DateTime? lastModificationTime;

  /// Is Deleted
  @override
  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  /// Deleter Id
  @override
  @JsonKey(name: 'deleter_id')
  final int? deleterId;

  /// Deletion Time
  @override
  @JsonKey(name: 'deletion_time')
  final DateTime? deletionTime;

  @override
  String toString() {
    return 'CourseStaffsTable(employeeId: $employeeId, employeeRole: $employeeRole, capacity: $capacity, closeEditingEmployee: $closeEditingEmployee, courseConfiguration: $courseConfiguration, id: $id, courseId: $courseId, creatorId: $creatorId, creationTime: $creationTime, lastModifierId: $lastModifierId, lastModificationTime: $lastModificationTime, isDeleted: $isDeleted, deleterId: $deleterId, deletionTime: $deletionTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStaffsTableImpl &&
            (identical(other.employeeId, employeeId) ||
                other.employeeId == employeeId) &&
            (identical(other.employeeRole, employeeRole) ||
                other.employeeRole == employeeRole) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.closeEditingEmployee, closeEditingEmployee) ||
                other.closeEditingEmployee == closeEditingEmployee) &&
            const DeepCollectionEquality()
                .equals(other._courseConfiguration, _courseConfiguration) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime) &&
            (identical(other.lastModifierId, lastModifierId) ||
                other.lastModifierId == lastModifierId) &&
            (identical(other.lastModificationTime, lastModificationTime) ||
                other.lastModificationTime == lastModificationTime) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.deleterId, deleterId) ||
                other.deleterId == deleterId) &&
            (identical(other.deletionTime, deletionTime) ||
                other.deletionTime == deletionTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      employeeId,
      employeeRole,
      capacity,
      closeEditingEmployee,
      const DeepCollectionEquality().hash(_courseConfiguration),
      id,
      courseId,
      creatorId,
      creationTime,
      lastModifierId,
      lastModificationTime,
      isDeleted,
      deleterId,
      deletionTime);

  /// Create a copy of CourseStaffsTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStaffsTableImplCopyWith<_$CourseStaffsTableImpl> get copyWith =>
      __$$CourseStaffsTableImplCopyWithImpl<_$CourseStaffsTableImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseStaffsTableImplToJson(
      this,
    );
  }
}

abstract class _CourseStaffsTable extends CourseStaffsTable {
  const factory _CourseStaffsTable(
      {@JsonKey(name: 'employee_id') required final int employeeId,
      @JsonKey(name: 'employee_role') required final int employeeRole,
      @JsonKey(name: 'capacity') required final int capacity,
      @JsonKey(name: 'close_editing_employee')
      required final bool closeEditingEmployee,
      @JsonKey(name: 'course_configuration')
      required final Map<String, dynamic>? courseConfiguration,
      @JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'course_id') required final int courseId,
      @JsonKey(name: 'creator_id') required final int creatorId,
      @JsonKey(name: 'creation_time') required final DateTime creationTime,
      @JsonKey(name: 'last_modifier_id') required final int? lastModifierId,
      @JsonKey(name: 'last_modification_time')
      required final DateTime? lastModificationTime,
      @JsonKey(name: 'is_deleted') required final bool isDeleted,
      @JsonKey(name: 'deleter_id') required final int? deleterId,
      @JsonKey(name: 'deletion_time')
      required final DateTime? deletionTime}) = _$CourseStaffsTableImpl;
  const _CourseStaffsTable._() : super._();

  factory _CourseStaffsTable.fromJson(Map<String, dynamic> json) =
      _$CourseStaffsTableImpl.fromJson;

  /// Employee Id
  @override
  @JsonKey(name: 'employee_id')
  int get employeeId;

  /// Employee Role
  @override
  @JsonKey(name: 'employee_role')
  int get employeeRole;

  /// Capacity
  @override
  @JsonKey(name: 'capacity')
  int get capacity;

  /// Close Editing Employee
  @override
  @JsonKey(name: 'close_editing_employee')
  bool get closeEditingEmployee;

  /// Course Configuration
  @override
  @JsonKey(name: 'course_configuration')
  Map<String, dynamic>? get courseConfiguration;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Course Id
  @override
  @JsonKey(name: 'course_id')
  int get courseId;

  /// Creator Id
  @override
  @JsonKey(name: 'creator_id')
  int get creatorId;

  /// Creation Time
  @override
  @JsonKey(name: 'creation_time')
  DateTime get creationTime;

  /// Last Modifier Id
  @override
  @JsonKey(name: 'last_modifier_id')
  int? get lastModifierId;

  /// Last Modification Time
  @override
  @JsonKey(name: 'last_modification_time')
  DateTime? get lastModificationTime;

  /// Is Deleted
  @override
  @JsonKey(name: 'is_deleted')
  bool get isDeleted;

  /// Deleter Id
  @override
  @JsonKey(name: 'deleter_id')
  int? get deleterId;

  /// Deletion Time
  @override
  @JsonKey(name: 'deletion_time')
  DateTime? get deletionTime;

  /// Create a copy of CourseStaffsTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseStaffsTableImplCopyWith<_$CourseStaffsTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
