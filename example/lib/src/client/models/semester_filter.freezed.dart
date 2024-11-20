// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'semester_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SemesterFilter _$SemesterFilterFromJson(Map<String, dynamic> json) {
  return _SemesterFilter.fromJson(json);
}

/// @nodoc
mixin _$SemesterFilter {
  /// Serializes this SemesterFilter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SemesterFilterCopyWith<$Res> {
  factory $SemesterFilterCopyWith(
          SemesterFilter value, $Res Function(SemesterFilter) then) =
      _$SemesterFilterCopyWithImpl<$Res, SemesterFilter>;
}

/// @nodoc
class _$SemesterFilterCopyWithImpl<$Res, $Val extends SemesterFilter>
    implements $SemesterFilterCopyWith<$Res> {
  _$SemesterFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SemesterFilter
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SemesterFilterImplCopyWith<$Res> {
  factory _$$SemesterFilterImplCopyWith(_$SemesterFilterImpl value,
          $Res Function(_$SemesterFilterImpl) then) =
      __$$SemesterFilterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SemesterFilterImplCopyWithImpl<$Res>
    extends _$SemesterFilterCopyWithImpl<$Res, _$SemesterFilterImpl>
    implements _$$SemesterFilterImplCopyWith<$Res> {
  __$$SemesterFilterImplCopyWithImpl(
      _$SemesterFilterImpl _value, $Res Function(_$SemesterFilterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SemesterFilter
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$SemesterFilterImpl implements _SemesterFilter {
  const _$SemesterFilterImpl();

  factory _$SemesterFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$SemesterFilterImplFromJson(json);

  @override
  String toString() {
    return 'SemesterFilter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SemesterFilterImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$SemesterFilterImplToJson(
      this,
    );
  }
}

abstract class _SemesterFilter implements SemesterFilter {
  const factory _SemesterFilter() = _$SemesterFilterImpl;

  factory _SemesterFilter.fromJson(Map<String, dynamic> json) =
      _$SemesterFilterImpl.fromJson;
}
