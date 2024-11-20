// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_staff_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CourseStaffPublic _$CourseStaffPublicFromJson(Map<String, dynamic> json) {
  return _CourseStaffPublic.fromJson(json);
}

/// @nodoc
mixin _$CourseStaffPublic {
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
  Map<dynamic, dynamic>? get courseConfiguration =>
      throw _privateConstructorUsedError;

  /// Id
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'course')
  CourseTable? get course => throw _privateConstructorUsedError;
  @JsonKey(name: 'employee')
  EmployeePublic? get employee => throw _privateConstructorUsedError;

  /// Serializes this CourseStaffPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CourseStaffPublicCopyWith<CourseStaffPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStaffPublicCopyWith<$Res> {
  factory $CourseStaffPublicCopyWith(
          CourseStaffPublic value, $Res Function(CourseStaffPublic) then) =
      _$CourseStaffPublicCopyWithImpl<$Res, CourseStaffPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'employee_role') int employeeRole,
      @JsonKey(name: 'capacity') int capacity,
      @JsonKey(name: 'close_editing_employee') bool closeEditingEmployee,
      @JsonKey(name: 'course_configuration')
      Map<dynamic, dynamic>? courseConfiguration,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'course') CourseTable? course,
      @JsonKey(name: 'employee') EmployeePublic? employee});

  $CourseTableCopyWith<$Res>? get course;
  $EmployeePublicCopyWith<$Res>? get employee;
}

/// @nodoc
class _$CourseStaffPublicCopyWithImpl<$Res, $Val extends CourseStaffPublic>
    implements $CourseStaffPublicCopyWith<$Res> {
  _$CourseStaffPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? employeeRole = null,
    Object? capacity = null,
    Object? closeEditingEmployee = null,
    Object? courseConfiguration = freezed,
    Object? id = freezed,
    Object? course = freezed,
    Object? employee = freezed,
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
              as Map<dynamic, dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseTable?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeePublic?,
    ) as $Val);
  }

  /// Create a copy of CourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CourseTableCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CourseTableCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value) as $Val);
    });
  }

  /// Create a copy of CourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EmployeePublicCopyWith<$Res>? get employee {
    if (_value.employee == null) {
      return null;
    }

    return $EmployeePublicCopyWith<$Res>(_value.employee!, (value) {
      return _then(_value.copyWith(employee: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CourseStaffPublicImplCopyWith<$Res>
    implements $CourseStaffPublicCopyWith<$Res> {
  factory _$$CourseStaffPublicImplCopyWith(_$CourseStaffPublicImpl value,
          $Res Function(_$CourseStaffPublicImpl) then) =
      __$$CourseStaffPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'employee_id') int employeeId,
      @JsonKey(name: 'employee_role') int employeeRole,
      @JsonKey(name: 'capacity') int capacity,
      @JsonKey(name: 'close_editing_employee') bool closeEditingEmployee,
      @JsonKey(name: 'course_configuration')
      Map<dynamic, dynamic>? courseConfiguration,
      @JsonKey(name: 'id') int? id,
      @JsonKey(name: 'course') CourseTable? course,
      @JsonKey(name: 'employee') EmployeePublic? employee});

  @override
  $CourseTableCopyWith<$Res>? get course;
  @override
  $EmployeePublicCopyWith<$Res>? get employee;
}

/// @nodoc
class __$$CourseStaffPublicImplCopyWithImpl<$Res>
    extends _$CourseStaffPublicCopyWithImpl<$Res, _$CourseStaffPublicImpl>
    implements _$$CourseStaffPublicImplCopyWith<$Res> {
  __$$CourseStaffPublicImplCopyWithImpl(_$CourseStaffPublicImpl _value,
      $Res Function(_$CourseStaffPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of CourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employeeId = null,
    Object? employeeRole = null,
    Object? capacity = null,
    Object? closeEditingEmployee = null,
    Object? courseConfiguration = freezed,
    Object? id = freezed,
    Object? course = freezed,
    Object? employee = freezed,
  }) {
    return _then(_$CourseStaffPublicImpl(
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
              as Map<dynamic, dynamic>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      course: freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as CourseTable?,
      employee: freezed == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeePublic?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CourseStaffPublicImpl extends _CourseStaffPublic {
  const _$CourseStaffPublicImpl(
      {@JsonKey(name: 'employee_id') required this.employeeId,
      @JsonKey(name: 'employee_role') required this.employeeRole,
      @JsonKey(name: 'capacity') required this.capacity,
      @JsonKey(name: 'close_editing_employee')
      required this.closeEditingEmployee,
      @JsonKey(name: 'course_configuration')
      required final Map<dynamic, dynamic>? courseConfiguration,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'course') required this.course,
      @JsonKey(name: 'employee') required this.employee})
      : _courseConfiguration = courseConfiguration,
        super._();

  factory _$CourseStaffPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourseStaffPublicImplFromJson(json);

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
  final Map<dynamic, dynamic>? _courseConfiguration;

  /// Course Configuration
  @override
  @JsonKey(name: 'course_configuration')
  Map<dynamic, dynamic>? get courseConfiguration {
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
  final int? id;
  @override
  @JsonKey(name: 'course')
  final CourseTable? course;
  @override
  @JsonKey(name: 'employee')
  final EmployeePublic? employee;

  @override
  String toString() {
    return 'CourseStaffPublic(employeeId: $employeeId, employeeRole: $employeeRole, capacity: $capacity, closeEditingEmployee: $closeEditingEmployee, courseConfiguration: $courseConfiguration, id: $id, course: $course, employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseStaffPublicImpl &&
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
            (identical(other.course, course) || other.course == course) &&
            (identical(other.employee, employee) ||
                other.employee == employee));
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
      course,
      employee);

  /// Create a copy of CourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseStaffPublicImplCopyWith<_$CourseStaffPublicImpl> get copyWith =>
      __$$CourseStaffPublicImplCopyWithImpl<_$CourseStaffPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourseStaffPublicImplToJson(
      this,
    );
  }
}

abstract class _CourseStaffPublic extends CourseStaffPublic {
  const factory _CourseStaffPublic(
          {@JsonKey(name: 'employee_id') required final int employeeId,
          @JsonKey(name: 'employee_role') required final int employeeRole,
          @JsonKey(name: 'capacity') required final int capacity,
          @JsonKey(name: 'close_editing_employee')
          required final bool closeEditingEmployee,
          @JsonKey(name: 'course_configuration')
          required final Map<dynamic, dynamic>? courseConfiguration,
          @JsonKey(name: 'id') required final int? id,
          @JsonKey(name: 'course') required final CourseTable? course,
          @JsonKey(name: 'employee') required final EmployeePublic? employee}) =
      _$CourseStaffPublicImpl;
  const _CourseStaffPublic._() : super._();

  factory _CourseStaffPublic.fromJson(Map<String, dynamic> json) =
      _$CourseStaffPublicImpl.fromJson;

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
  Map<dynamic, dynamic>? get courseConfiguration;

  /// Id
  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'course')
  CourseTable? get course;
  @override
  @JsonKey(name: 'employee')
  EmployeePublic? get employee;

  /// Create a copy of CourseStaffPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseStaffPublicImplCopyWith<_$CourseStaffPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
