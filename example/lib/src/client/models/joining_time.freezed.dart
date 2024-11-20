// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joining_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoiningTime _$JoiningTimeFromJson(Map<String, dynamic> json) {
  return _JoiningTime.fromJson(json);
}

/// @nodoc
mixin _$JoiningTime {
  @JsonKey(name: 'joining_time')
  DateTime? get joiningTime => throw _privateConstructorUsedError;

  /// Serializes this JoiningTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JoiningTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JoiningTimeCopyWith<JoiningTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoiningTimeCopyWith<$Res> {
  factory $JoiningTimeCopyWith(
          JoiningTime value, $Res Function(JoiningTime) then) =
      _$JoiningTimeCopyWithImpl<$Res, JoiningTime>;
  @useResult
  $Res call({@JsonKey(name: 'joining_time') DateTime? joiningTime});
}

/// @nodoc
class _$JoiningTimeCopyWithImpl<$Res, $Val extends JoiningTime>
    implements $JoiningTimeCopyWith<$Res> {
  _$JoiningTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoiningTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joiningTime = freezed,
  }) {
    return _then(_value.copyWith(
      joiningTime: freezed == joiningTime
          ? _value.joiningTime
          : joiningTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoiningTimeImplCopyWith<$Res>
    implements $JoiningTimeCopyWith<$Res> {
  factory _$$JoiningTimeImplCopyWith(
          _$JoiningTimeImpl value, $Res Function(_$JoiningTimeImpl) then) =
      __$$JoiningTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'joining_time') DateTime? joiningTime});
}

/// @nodoc
class __$$JoiningTimeImplCopyWithImpl<$Res>
    extends _$JoiningTimeCopyWithImpl<$Res, _$JoiningTimeImpl>
    implements _$$JoiningTimeImplCopyWith<$Res> {
  __$$JoiningTimeImplCopyWithImpl(
      _$JoiningTimeImpl _value, $Res Function(_$JoiningTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoiningTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joiningTime = freezed,
  }) {
    return _then(_$JoiningTimeImpl(
      joiningTime: freezed == joiningTime
          ? _value.joiningTime
          : joiningTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoiningTimeImpl implements _JoiningTime {
  const _$JoiningTimeImpl(
      {@JsonKey(name: 'joining_time') required this.joiningTime});

  factory _$JoiningTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoiningTimeImplFromJson(json);

  @override
  @JsonKey(name: 'joining_time')
  final DateTime? joiningTime;

  @override
  String toString() {
    return 'JoiningTime(joiningTime: $joiningTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoiningTimeImpl &&
            (identical(other.joiningTime, joiningTime) ||
                other.joiningTime == joiningTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, joiningTime);

  /// Create a copy of JoiningTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoiningTimeImplCopyWith<_$JoiningTimeImpl> get copyWith =>
      __$$JoiningTimeImplCopyWithImpl<_$JoiningTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoiningTimeImplToJson(
      this,
    );
  }
}

abstract class _JoiningTime implements JoiningTime {
  const factory _JoiningTime(
      {@JsonKey(name: 'joining_time')
      required final DateTime? joiningTime}) = _$JoiningTimeImpl;

  factory _JoiningTime.fromJson(Map<String, dynamic> json) =
      _$JoiningTimeImpl.fromJson;

  @override
  @JsonKey(name: 'joining_time')
  DateTime? get joiningTime;

  /// Create a copy of JoiningTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoiningTimeImplCopyWith<_$JoiningTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
