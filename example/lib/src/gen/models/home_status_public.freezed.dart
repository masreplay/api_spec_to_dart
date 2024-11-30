// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_status_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeStatusPublic _$HomeStatusPublicFromJson(Map<String, dynamic> json) {
  return _HomeStatusPublic.fromJson(json);
}

/// @nodoc
mixin _$HomeStatusPublic {
  /// Type
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Title
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;

  /// Description
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  HomeProcessStatus get status => throw _privateConstructorUsedError;

  /// Serializes this HomeStatusPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeStatusPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStatusPublicCopyWith<HomeStatusPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStatusPublicCopyWith<$Res> {
  factory $HomeStatusPublicCopyWith(
          HomeStatusPublic value, $Res Function(HomeStatusPublic) then) =
      _$HomeStatusPublicCopyWithImpl<$Res, HomeStatusPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') HomeProcessStatus status});
}

/// @nodoc
class _$HomeStatusPublicCopyWithImpl<$Res, $Val extends HomeStatusPublic>
    implements $HomeStatusPublicCopyWith<$Res> {
  _$HomeStatusPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeStatusPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeProcessStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStatusPublicImplCopyWith<$Res>
    implements $HomeStatusPublicCopyWith<$Res> {
  factory _$$HomeStatusPublicImplCopyWith(_$HomeStatusPublicImpl value,
          $Res Function(_$HomeStatusPublicImpl) then) =
      __$$HomeStatusPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'status') HomeProcessStatus status});
}

/// @nodoc
class __$$HomeStatusPublicImplCopyWithImpl<$Res>
    extends _$HomeStatusPublicCopyWithImpl<$Res, _$HomeStatusPublicImpl>
    implements _$$HomeStatusPublicImplCopyWith<$Res> {
  __$$HomeStatusPublicImplCopyWithImpl(_$HomeStatusPublicImpl _value,
      $Res Function(_$HomeStatusPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeStatusPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
  }) {
    return _then(_$HomeStatusPublicImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeProcessStatus,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$HomeStatusPublicImpl extends _HomeStatusPublic {
  const _$HomeStatusPublicImpl(
      {@JsonKey(name: 'type') this.type = 'status',
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'status') this.status = HomeProcessStatus.noStudyProgram})
      : super._();

  factory _$HomeStatusPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeStatusPublicImplFromJson(json);

  /// Type
  @override
  @JsonKey(name: 'type')
  final String type;

  /// Title
  @override
  @JsonKey(name: 'title')
  final String title;

  /// Description
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'status')
  final HomeProcessStatus status;

  @override
  String toString() {
    return 'HomeStatusPublic(type: $type, title: $title, description: $description, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStatusPublicImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, title, description, status);

  /// Create a copy of HomeStatusPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStatusPublicImplCopyWith<_$HomeStatusPublicImpl> get copyWith =>
      __$$HomeStatusPublicImplCopyWithImpl<_$HomeStatusPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeStatusPublicImplToJson(
      this,
    );
  }
}

abstract class _HomeStatusPublic extends HomeStatusPublic {
  const factory _HomeStatusPublic(
          {@JsonKey(name: 'type') final String type,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') required final String? description,
          @JsonKey(name: 'status') final HomeProcessStatus status}) =
      _$HomeStatusPublicImpl;
  const _HomeStatusPublic._() : super._();

  factory _HomeStatusPublic.fromJson(Map<String, dynamic> json) =
      _$HomeStatusPublicImpl.fromJson;

  /// Type
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Title
  @override
  @JsonKey(name: 'title')
  String get title;

  /// Description
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'status')
  HomeProcessStatus get status;

  /// Create a copy of HomeStatusPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStatusPublicImplCopyWith<_$HomeStatusPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
