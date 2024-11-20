// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecture_homeworks_calender_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LectureHomeworksCalenderResponse _$LectureHomeworksCalenderResponseFromJson(
    Map<String, dynamic> json) {
  return _LectureHomeworksCalenderResponse.fromJson(json);
}

/// @nodoc
mixin _$LectureHomeworksCalenderResponse {
  @JsonKey(name: 'events')
  List<dynamic> get events => throw _privateConstructorUsedError;

  /// Serializes this LectureHomeworksCalenderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LectureHomeworksCalenderResponseCopyWith<LectureHomeworksCalenderResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureHomeworksCalenderResponseCopyWith<$Res> {
  factory $LectureHomeworksCalenderResponseCopyWith(
          LectureHomeworksCalenderResponse value,
          $Res Function(LectureHomeworksCalenderResponse) then) =
      _$LectureHomeworksCalenderResponseCopyWithImpl<$Res,
          LectureHomeworksCalenderResponse>;
  @useResult
  $Res call({@JsonKey(name: 'events') List<dynamic> events});
}

/// @nodoc
class _$LectureHomeworksCalenderResponseCopyWithImpl<$Res,
        $Val extends LectureHomeworksCalenderResponse>
    implements $LectureHomeworksCalenderResponseCopyWith<$Res> {
  _$LectureHomeworksCalenderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LectureHomeworksCalenderResponseImplCopyWith<$Res>
    implements $LectureHomeworksCalenderResponseCopyWith<$Res> {
  factory _$$LectureHomeworksCalenderResponseImplCopyWith(
          _$LectureHomeworksCalenderResponseImpl value,
          $Res Function(_$LectureHomeworksCalenderResponseImpl) then) =
      __$$LectureHomeworksCalenderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'events') List<dynamic> events});
}

/// @nodoc
class __$$LectureHomeworksCalenderResponseImplCopyWithImpl<$Res>
    extends _$LectureHomeworksCalenderResponseCopyWithImpl<$Res,
        _$LectureHomeworksCalenderResponseImpl>
    implements _$$LectureHomeworksCalenderResponseImplCopyWith<$Res> {
  __$$LectureHomeworksCalenderResponseImplCopyWithImpl(
      _$LectureHomeworksCalenderResponseImpl _value,
      $Res Function(_$LectureHomeworksCalenderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$LectureHomeworksCalenderResponseImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$LectureHomeworksCalenderResponseImpl
    extends _LectureHomeworksCalenderResponse {
  const _$LectureHomeworksCalenderResponseImpl(
      {@JsonKey(name: 'events') required final List<dynamic> events})
      : _events = events,
        super._();

  factory _$LectureHomeworksCalenderResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LectureHomeworksCalenderResponseImplFromJson(json);

  final List<dynamic> _events;
  @override
  @JsonKey(name: 'events')
  List<dynamic> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'LectureHomeworksCalenderResponse(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LectureHomeworksCalenderResponseImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  /// Create a copy of LectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LectureHomeworksCalenderResponseImplCopyWith<
          _$LectureHomeworksCalenderResponseImpl>
      get copyWith => __$$LectureHomeworksCalenderResponseImplCopyWithImpl<
          _$LectureHomeworksCalenderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LectureHomeworksCalenderResponseImplToJson(
      this,
    );
  }
}

abstract class _LectureHomeworksCalenderResponse
    extends LectureHomeworksCalenderResponse {
  const factory _LectureHomeworksCalenderResponse(
          {@JsonKey(name: 'events') required final List<dynamic> events}) =
      _$LectureHomeworksCalenderResponseImpl;
  const _LectureHomeworksCalenderResponse._() : super._();

  factory _LectureHomeworksCalenderResponse.fromJson(
          Map<String, dynamic> json) =
      _$LectureHomeworksCalenderResponseImpl.fromJson;

  @override
  @JsonKey(name: 'events')
  List<dynamic> get events;

  /// Create a copy of LectureHomeworksCalenderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LectureHomeworksCalenderResponseImplCopyWith<
          _$LectureHomeworksCalenderResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
