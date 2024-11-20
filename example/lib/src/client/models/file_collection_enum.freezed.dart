// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_collection_enum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileCollectionEnum _$FileCollectionEnumFromJson(Map<String, dynamic> json) {
  return _FileCollectionEnum.fromJson(json);
}

/// @nodoc
mixin _$FileCollectionEnum {
  /// Serializes this FileCollectionEnum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileCollectionEnumCopyWith<$Res> {
  factory $FileCollectionEnumCopyWith(
          FileCollectionEnum value, $Res Function(FileCollectionEnum) then) =
      _$FileCollectionEnumCopyWithImpl<$Res, FileCollectionEnum>;
}

/// @nodoc
class _$FileCollectionEnumCopyWithImpl<$Res, $Val extends FileCollectionEnum>
    implements $FileCollectionEnumCopyWith<$Res> {
  _$FileCollectionEnumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileCollectionEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FileCollectionEnumImplCopyWith<$Res> {
  factory _$$FileCollectionEnumImplCopyWith(_$FileCollectionEnumImpl value,
          $Res Function(_$FileCollectionEnumImpl) then) =
      __$$FileCollectionEnumImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileCollectionEnumImplCopyWithImpl<$Res>
    extends _$FileCollectionEnumCopyWithImpl<$Res, _$FileCollectionEnumImpl>
    implements _$$FileCollectionEnumImplCopyWith<$Res> {
  __$$FileCollectionEnumImplCopyWithImpl(_$FileCollectionEnumImpl _value,
      $Res Function(_$FileCollectionEnumImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileCollectionEnum
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$FileCollectionEnumImpl extends _FileCollectionEnum {
  const _$FileCollectionEnumImpl() : super._();

  factory _$FileCollectionEnumImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileCollectionEnumImplFromJson(json);

  @override
  String toString() {
    return 'FileCollectionEnum()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FileCollectionEnumImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$FileCollectionEnumImplToJson(
      this,
    );
  }
}

abstract class _FileCollectionEnum extends FileCollectionEnum {
  const factory _FileCollectionEnum() = _$FileCollectionEnumImpl;
  const _FileCollectionEnum._() : super._();

  factory _FileCollectionEnum.fromJson(Map<String, dynamic> json) =
      _$FileCollectionEnumImpl.fromJson;
}
