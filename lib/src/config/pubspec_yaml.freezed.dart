// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubspec_yaml.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PubspecYaml _$PubspecYamlFromJson(Map<String, dynamic> json) {
  return _PubspecYaml.fromJson(json);
}

/// @nodoc
mixin _$PubspecYaml {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this PubspecYaml to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubspecYamlCopyWith<PubspecYaml> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubspecYamlCopyWith<$Res> {
  factory $PubspecYamlCopyWith(
          PubspecYaml value, $Res Function(PubspecYaml) then) =
      _$PubspecYamlCopyWithImpl<$Res, PubspecYaml>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PubspecYamlCopyWithImpl<$Res, $Val extends PubspecYaml>
    implements $PubspecYamlCopyWith<$Res> {
  _$PubspecYamlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubspecYamlImplCopyWith<$Res>
    implements $PubspecYamlCopyWith<$Res> {
  factory _$$PubspecYamlImplCopyWith(
          _$PubspecYamlImpl value, $Res Function(_$PubspecYamlImpl) then) =
      __$$PubspecYamlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PubspecYamlImplCopyWithImpl<$Res>
    extends _$PubspecYamlCopyWithImpl<$Res, _$PubspecYamlImpl>
    implements _$$PubspecYamlImplCopyWith<$Res> {
  __$$PubspecYamlImplCopyWithImpl(
      _$PubspecYamlImpl _value, $Res Function(_$PubspecYamlImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PubspecYamlImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubspecYamlImpl extends _PubspecYaml {
  const _$PubspecYamlImpl({required this.name}) : super._();

  factory _$PubspecYamlImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubspecYamlImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PubspecYaml(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubspecYamlImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubspecYamlImplCopyWith<_$PubspecYamlImpl> get copyWith =>
      __$$PubspecYamlImplCopyWithImpl<_$PubspecYamlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubspecYamlImplToJson(
      this,
    );
  }
}

abstract class _PubspecYaml extends PubspecYaml {
  const factory _PubspecYaml({required final String name}) = _$PubspecYamlImpl;
  const _PubspecYaml._() : super._();

  factory _PubspecYaml.fromJson(Map<String, dynamic> json) =
      _$PubspecYamlImpl.fromJson;

  @override
  String get name;

  /// Create a copy of PubspecYaml
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubspecYamlImplCopyWith<_$PubspecYamlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
