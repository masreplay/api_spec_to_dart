// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_feed_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeFeedPublic _$HomeFeedPublicFromJson(Map<String, dynamic> json) {
  return _HomeFeedPublic.fromJson(json);
}

/// @nodoc
mixin _$HomeFeedPublic {
  /// Type
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Sections
  @JsonKey(name: 'sections')
  List<HomeFeedSectionModel> get sections => throw _privateConstructorUsedError;

  /// Serializes this HomeFeedPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeFeedPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeFeedPublicCopyWith<HomeFeedPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFeedPublicCopyWith<$Res> {
  factory $HomeFeedPublicCopyWith(
          HomeFeedPublic value, $Res Function(HomeFeedPublic) then) =
      _$HomeFeedPublicCopyWithImpl<$Res, HomeFeedPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'sections') List<HomeFeedSectionModel> sections});
}

/// @nodoc
class _$HomeFeedPublicCopyWithImpl<$Res, $Val extends HomeFeedPublic>
    implements $HomeFeedPublicCopyWith<$Res> {
  _$HomeFeedPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeFeedPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<HomeFeedSectionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeFeedPublicImplCopyWith<$Res>
    implements $HomeFeedPublicCopyWith<$Res> {
  factory _$$HomeFeedPublicImplCopyWith(_$HomeFeedPublicImpl value,
          $Res Function(_$HomeFeedPublicImpl) then) =
      __$$HomeFeedPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'sections') List<HomeFeedSectionModel> sections});
}

/// @nodoc
class __$$HomeFeedPublicImplCopyWithImpl<$Res>
    extends _$HomeFeedPublicCopyWithImpl<$Res, _$HomeFeedPublicImpl>
    implements _$$HomeFeedPublicImplCopyWith<$Res> {
  __$$HomeFeedPublicImplCopyWithImpl(
      _$HomeFeedPublicImpl _value, $Res Function(_$HomeFeedPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeFeedPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? sections = null,
  }) {
    return _then(_$HomeFeedPublicImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<HomeFeedSectionModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeFeedPublicImpl extends _HomeFeedPublic {
  const _$HomeFeedPublicImpl(
      {@JsonKey(name: 'type') this.type = 'feed',
      @JsonKey(name: 'sections')
      required final List<HomeFeedSectionModel> sections})
      : _sections = sections,
        super._();

  factory _$HomeFeedPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeFeedPublicImplFromJson(json);

  /// Type
  @override
  @JsonKey(name: 'type')
  final String type;

  /// Sections
  final List<HomeFeedSectionModel> _sections;

  /// Sections
  @override
  @JsonKey(name: 'sections')
  List<HomeFeedSectionModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'HomeFeedPublic(type: $type, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFeedPublicImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_sections));

  /// Create a copy of HomeFeedPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFeedPublicImplCopyWith<_$HomeFeedPublicImpl> get copyWith =>
      __$$HomeFeedPublicImplCopyWithImpl<_$HomeFeedPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeFeedPublicImplToJson(
      this,
    );
  }
}

abstract class _HomeFeedPublic extends HomeFeedPublic {
  const factory _HomeFeedPublic(
          {@JsonKey(name: 'type') final String type,
          @JsonKey(name: 'sections')
          required final List<HomeFeedSectionModel> sections}) =
      _$HomeFeedPublicImpl;
  const _HomeFeedPublic._() : super._();

  factory _HomeFeedPublic.fromJson(Map<String, dynamic> json) =
      _$HomeFeedPublicImpl.fromJson;

  /// Type
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Sections
  @override
  @JsonKey(name: 'sections')
  List<HomeFeedSectionModel> get sections;

  /// Create a copy of HomeFeedPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeFeedPublicImplCopyWith<_$HomeFeedPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
