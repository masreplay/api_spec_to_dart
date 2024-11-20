// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nationalisms_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NationalismsPublic _$NationalismsPublicFromJson(Map<String, dynamic> json) {
  return _NationalismsPublic.fromJson(json);
}

/// @nodoc
mixin _$NationalismsPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Serializes this NationalismsPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NationalismsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NationalismsPublicCopyWith<NationalismsPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NationalismsPublicCopyWith<$Res> {
  factory $NationalismsPublicCopyWith(
          NationalismsPublic value, $Res Function(NationalismsPublic) then) =
      _$NationalismsPublicCopyWithImpl<$Res, NationalismsPublic>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class _$NationalismsPublicCopyWithImpl<$Res, $Val extends NationalismsPublic>
    implements $NationalismsPublicCopyWith<$Res> {
  _$NationalismsPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NationalismsPublic
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
abstract class _$$NationalismsPublicImplCopyWith<$Res>
    implements $NationalismsPublicCopyWith<$Res> {
  factory _$$NationalismsPublicImplCopyWith(_$NationalismsPublicImpl value,
          $Res Function(_$NationalismsPublicImpl) then) =
      __$$NationalismsPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$NationalismsPublicImplCopyWithImpl<$Res>
    extends _$NationalismsPublicCopyWithImpl<$Res, _$NationalismsPublicImpl>
    implements _$$NationalismsPublicImplCopyWith<$Res> {
  __$$NationalismsPublicImplCopyWithImpl(_$NationalismsPublicImpl _value,
      $Res Function(_$NationalismsPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of NationalismsPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$NationalismsPublicImpl(
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
@JsonSerializable()
class _$NationalismsPublicImpl implements _NationalismsPublic {
  const _$NationalismsPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name});

  factory _$NationalismsPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$NationalismsPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'NationalismsPublic(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NationalismsPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of NationalismsPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NationalismsPublicImplCopyWith<_$NationalismsPublicImpl> get copyWith =>
      __$$NationalismsPublicImplCopyWithImpl<_$NationalismsPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NationalismsPublicImplToJson(
      this,
    );
  }
}

abstract class _NationalismsPublic implements NationalismsPublic {
  const factory _NationalismsPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name}) =
      _$NationalismsPublicImpl;

  factory _NationalismsPublic.fromJson(Map<String, dynamic> json) =
      _$NationalismsPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Create a copy of NationalismsPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NationalismsPublicImplCopyWith<_$NationalismsPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
