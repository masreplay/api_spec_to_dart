// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_user_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentUserPublic _$CommentUserPublicFromJson(Map<String, dynamic> json) {
  return _CommentUserPublic.fromJson(json);
}

/// @nodoc
mixin _$CommentUserPublic {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;

  /// Serializes this CommentUserPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentUserPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentUserPublicCopyWith<CommentUserPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentUserPublicCopyWith<$Res> {
  factory $CommentUserPublicCopyWith(
          CommentUserPublic value, $Res Function(CommentUserPublic) then) =
      _$CommentUserPublicCopyWithImpl<$Res, CommentUserPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class _$CommentUserPublicCopyWithImpl<$Res, $Val extends CommentUserPublic>
    implements $CommentUserPublicCopyWith<$Res> {
  _$CommentUserPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentUserPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
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
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentUserPublicImplCopyWith<$Res>
    implements $CommentUserPublicCopyWith<$Res> {
  factory _$$CommentUserPublicImplCopyWith(_$CommentUserPublicImpl value,
          $Res Function(_$CommentUserPublicImpl) then) =
      __$$CommentUserPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'avatar') String? avatar});
}

/// @nodoc
class __$$CommentUserPublicImplCopyWithImpl<$Res>
    extends _$CommentUserPublicCopyWithImpl<$Res, _$CommentUserPublicImpl>
    implements _$$CommentUserPublicImplCopyWith<$Res> {
  __$$CommentUserPublicImplCopyWithImpl(_$CommentUserPublicImpl _value,
      $Res Function(_$CommentUserPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentUserPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatar = freezed,
  }) {
    return _then(_$CommentUserPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$CommentUserPublicImpl extends _CommentUserPublic {
  const _$CommentUserPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'avatar') required this.avatar})
      : super._();

  factory _$CommentUserPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentUserPublicImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;

  @override
  String toString() {
    return 'CommentUserPublic(id: $id, name: $name, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentUserPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatar);

  /// Create a copy of CommentUserPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentUserPublicImplCopyWith<_$CommentUserPublicImpl> get copyWith =>
      __$$CommentUserPublicImplCopyWithImpl<_$CommentUserPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentUserPublicImplToJson(
      this,
    );
  }
}

abstract class _CommentUserPublic extends CommentUserPublic {
  const factory _CommentUserPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'avatar') required final String? avatar}) =
      _$CommentUserPublicImpl;
  const _CommentUserPublic._() : super._();

  factory _CommentUserPublic.fromJson(Map<String, dynamic> json) =
      _$CommentUserPublicImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;

  /// Create a copy of CommentUserPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentUserPublicImplCopyWith<_$CommentUserPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
