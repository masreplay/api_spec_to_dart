// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_year_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudyYearPublic _$StudyYearPublicFromJson(Map<String, dynamic> json) {
  return _StudyYearPublic.fromJson(json);
}

/// @nodoc
mixin _$StudyYearPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String get value => throw _privateConstructorUsedError;

  /// Serializes this StudyYearPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudyYearPublicCopyWith<StudyYearPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyYearPublicCopyWith<$Res> {
  factory $StudyYearPublicCopyWith(
          StudyYearPublic value, $Res Function(StudyYearPublic) then) =
      _$StudyYearPublicCopyWithImpl<$Res, StudyYearPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'value') String value});
}

/// @nodoc
class _$StudyYearPublicCopyWithImpl<$Res, $Val extends StudyYearPublic>
    implements $StudyYearPublicCopyWith<$Res> {
  _$StudyYearPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyYearPublicImplCopyWith<$Res>
    implements $StudyYearPublicCopyWith<$Res> {
  factory _$$StudyYearPublicImplCopyWith(_$StudyYearPublicImpl value,
          $Res Function(_$StudyYearPublicImpl) then) =
      __$$StudyYearPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id, @JsonKey(name: 'value') String value});
}

/// @nodoc
class __$$StudyYearPublicImplCopyWithImpl<$Res>
    extends _$StudyYearPublicCopyWithImpl<$Res, _$StudyYearPublicImpl>
    implements _$$StudyYearPublicImplCopyWith<$Res> {
  __$$StudyYearPublicImplCopyWithImpl(
      _$StudyYearPublicImpl _value, $Res Function(_$StudyYearPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$StudyYearPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudyYearPublicImpl extends _StudyYearPublic {
  const _$StudyYearPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'value') required this.value})
      : super._();

  factory _$StudyYearPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudyYearPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'value')
  final String value;

  @override
  String toString() {
    return 'StudyYearPublic(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyYearPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  /// Create a copy of StudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyYearPublicImplCopyWith<_$StudyYearPublicImpl> get copyWith =>
      __$$StudyYearPublicImplCopyWithImpl<_$StudyYearPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudyYearPublicImplToJson(
      this,
    );
  }
}

abstract class _StudyYearPublic extends StudyYearPublic {
  const factory _StudyYearPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'value') required final String value}) =
      _$StudyYearPublicImpl;
  const _StudyYearPublic._() : super._();

  factory _StudyYearPublic.fromJson(Map<String, dynamic> json) =
      _$StudyYearPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'value')
  String get value;

  /// Create a copy of StudyYearPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudyYearPublicImplCopyWith<_$StudyYearPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
