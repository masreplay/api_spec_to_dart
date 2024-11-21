// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_fees_fees_types_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentFeesFeesTypesPublic _$StudentFeesFeesTypesPublicFromJson(
    Map<String, dynamic> json) {
  return _StudentFeesFeesTypesPublic.fromJson(json);
}

/// @nodoc
mixin _$StudentFeesFeesTypesPublic {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this StudentFeesFeesTypesPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentFeesFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentFeesFeesTypesPublicCopyWith<StudentFeesFeesTypesPublic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentFeesFeesTypesPublicCopyWith<$Res> {
  factory $StudentFeesFeesTypesPublicCopyWith(StudentFeesFeesTypesPublic value,
          $Res Function(StudentFeesFeesTypesPublic) then) =
      _$StudentFeesFeesTypesPublicCopyWithImpl<$Res,
          StudentFeesFeesTypesPublic>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$StudentFeesFeesTypesPublicCopyWithImpl<$Res,
        $Val extends StudentFeesFeesTypesPublic>
    implements $StudentFeesFeesTypesPublicCopyWith<$Res> {
  _$StudentFeesFeesTypesPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentFeesFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentFeesFeesTypesPublicImplCopyWith<$Res>
    implements $StudentFeesFeesTypesPublicCopyWith<$Res> {
  factory _$$StudentFeesFeesTypesPublicImplCopyWith(
          _$StudentFeesFeesTypesPublicImpl value,
          $Res Function(_$StudentFeesFeesTypesPublicImpl) then) =
      __$$StudentFeesFeesTypesPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$StudentFeesFeesTypesPublicImplCopyWithImpl<$Res>
    extends _$StudentFeesFeesTypesPublicCopyWithImpl<$Res,
        _$StudentFeesFeesTypesPublicImpl>
    implements _$$StudentFeesFeesTypesPublicImplCopyWith<$Res> {
  __$$StudentFeesFeesTypesPublicImplCopyWithImpl(
      _$StudentFeesFeesTypesPublicImpl _value,
      $Res Function(_$StudentFeesFeesTypesPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentFeesFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$StudentFeesFeesTypesPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentFeesFeesTypesPublicImpl extends _StudentFeesFeesTypesPublic {
  const _$StudentFeesFeesTypesPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name})
      : super._();

  factory _$StudentFeesFeesTypesPublicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentFeesFeesTypesPublicImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Name
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'StudentFeesFeesTypesPublic(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentFeesFeesTypesPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of StudentFeesFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentFeesFeesTypesPublicImplCopyWith<_$StudentFeesFeesTypesPublicImpl>
      get copyWith => __$$StudentFeesFeesTypesPublicImplCopyWithImpl<
          _$StudentFeesFeesTypesPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentFeesFeesTypesPublicImplToJson(
      this,
    );
  }
}

abstract class _StudentFeesFeesTypesPublic extends StudentFeesFeesTypesPublic {
  const factory _StudentFeesFeesTypesPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$StudentFeesFeesTypesPublicImpl;
  const _StudentFeesFeesTypesPublic._() : super._();

  factory _StudentFeesFeesTypesPublic.fromJson(Map<String, dynamic> json) =
      _$StudentFeesFeesTypesPublicImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of StudentFeesFeesTypesPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentFeesFeesTypesPublicImplCopyWith<_$StudentFeesFeesTypesPublicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
