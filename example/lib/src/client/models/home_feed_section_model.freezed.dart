// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeedSectionModel _$HomeFeedSectionModelFromJson(Map<String, dynamic> json) {
  return _HomeFeedSectionModel.fromJson(json);
}

/// @nodoc
mixin _$HomeFeedSectionModel {
  /// Serializes this HomeFeedSectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeedSectionModelCopyWith<$Res> {
  factory $HomeFeedSectionModelCopyWith(HomeFeedSectionModel value,
          $Res Function(HomeFeedSectionModel) then) =
      _$HomeFeedSectionModelCopyWithImpl<$Res, HomeFeedSectionModel>;
}

/// @nodoc
class _$HomeFeedSectionModelCopyWithImpl<$Res,
        $Val extends HomeFeedSectionModel>
    implements $HomeFeedSectionModelCopyWith<$Res> {
  _$HomeFeedSectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeFeedSectionModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeFeedSectionModelImplCopyWith<$Res> {
  factory _$$HomeFeedSectionModelImplCopyWith(_$HomeFeedSectionModelImpl value,
          $Res Function(_$HomeFeedSectionModelImpl) then) =
      __$$HomeFeedSectionModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeFeedSectionModelImplCopyWithImpl<$Res>
    extends _$HomeFeedSectionModelCopyWithImpl<$Res, _$HomeFeedSectionModelImpl>
    implements _$$HomeFeedSectionModelImplCopyWith<$Res> {
  __$$HomeFeedSectionModelImplCopyWithImpl(_$HomeFeedSectionModelImpl _value,
      $Res Function(_$HomeFeedSectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeFeedSectionModel
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeFeedSectionModelImpl extends _HomeFeedSectionModel {
  const _$HomeFeedSectionModelImpl() : super._();

  factory _$HomeFeedSectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeFeedSectionModelImplFromJson(json);

  @override
  String toString() {
    return 'HomeFeedSectionModel()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeedSectionModelImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeedSectionModelImplToJson(
      this,
    );
  }
}

abstract class _HomeFeedSectionModel extends HomeFeedSectionModel {
  const factory _HomeFeedSectionModel() = _$HomeFeedSectionModelImpl;
  const _HomeFeedSectionModel._() : super._();

  factory _HomeFeedSectionModel.fromJson(Map<String, dynamic> json) =
      _$HomeFeedSectionModelImpl.fromJson;
}
