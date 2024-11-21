// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mark_as_read_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkAsReadQueries _$MarkAsReadQueriesFromJson(Map<String, dynamic> json) {
  return _MarkAsReadQueries.fromJson(json);
}

/// @nodoc
mixin _$MarkAsReadQueries {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Serializes this MarkAsReadQueries to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkAsReadQueriesCopyWith<MarkAsReadQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkAsReadQueriesCopyWith<$Res> {
  factory $MarkAsReadQueriesCopyWith(
          MarkAsReadQueries value, $Res Function(MarkAsReadQueries) then) =
      _$MarkAsReadQueriesCopyWithImpl<$Res, MarkAsReadQueries>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class _$MarkAsReadQueriesCopyWithImpl<$Res, $Val extends MarkAsReadQueries>
    implements $MarkAsReadQueriesCopyWith<$Res> {
  _$MarkAsReadQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkAsReadQueriesImplCopyWith<$Res>
    implements $MarkAsReadQueriesCopyWith<$Res> {
  factory _$$MarkAsReadQueriesImplCopyWith(_$MarkAsReadQueriesImpl value,
          $Res Function(_$MarkAsReadQueriesImpl) then) =
      __$$MarkAsReadQueriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class __$$MarkAsReadQueriesImplCopyWithImpl<$Res>
    extends _$MarkAsReadQueriesCopyWithImpl<$Res, _$MarkAsReadQueriesImpl>
    implements _$$MarkAsReadQueriesImplCopyWith<$Res> {
  __$$MarkAsReadQueriesImplCopyWithImpl(_$MarkAsReadQueriesImpl _value,
      $Res Function(_$MarkAsReadQueriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$MarkAsReadQueriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$MarkAsReadQueriesImpl extends _MarkAsReadQueries {
  const _$MarkAsReadQueriesImpl({@JsonKey(name: 'id') required this.id})
      : super._();

  factory _$MarkAsReadQueriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkAsReadQueriesImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  @override
  String toString() {
    return 'MarkAsReadQueries(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAsReadQueriesImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of MarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkAsReadQueriesImplCopyWith<_$MarkAsReadQueriesImpl> get copyWith =>
      __$$MarkAsReadQueriesImplCopyWithImpl<_$MarkAsReadQueriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkAsReadQueriesImplToJson(
      this,
    );
  }
}

abstract class _MarkAsReadQueries extends MarkAsReadQueries {
  const factory _MarkAsReadQueries(
      {@JsonKey(name: 'id') required final int id}) = _$MarkAsReadQueriesImpl;
  const _MarkAsReadQueries._() : super._();

  factory _MarkAsReadQueries.fromJson(Map<String, dynamic> json) =
      _$MarkAsReadQueriesImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Create a copy of MarkAsReadQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkAsReadQueriesImplCopyWith<_$MarkAsReadQueriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
