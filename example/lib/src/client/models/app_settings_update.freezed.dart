// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsUpdate _$AppSettingsUpdateFromJson(Map<String, dynamic> json) {
  return _AppSettingsUpdate.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsUpdate {
  @JsonKey(name: 'is_force_update')
  bool get isForceUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'android')
  AppSettingsAndroid get android => throw _privateConstructorUsedError;
  @JsonKey(name: 'ios')
  AppSettingsIos get ios => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsUpdateCopyWith<AppSettingsUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsUpdateCopyWith<$Res> {
  factory $AppSettingsUpdateCopyWith(
          AppSettingsUpdate value, $Res Function(AppSettingsUpdate) then) =
      _$AppSettingsUpdateCopyWithImpl<$Res, AppSettingsUpdate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_force_update') bool isForceUpdate,
      @JsonKey(name: 'android') AppSettingsAndroid android,
      @JsonKey(name: 'ios') AppSettingsIos ios});

  $AppSettingsAndroidCopyWith<$Res> get android;
  $AppSettingsIosCopyWith<$Res> get ios;
}

/// @nodoc
class _$AppSettingsUpdateCopyWithImpl<$Res, $Val extends AppSettingsUpdate>
    implements $AppSettingsUpdateCopyWith<$Res> {
  _$AppSettingsUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isForceUpdate = null,
    Object? android = null,
    Object? ios = null,
  }) {
    return _then(_value.copyWith(
      isForceUpdate: null == isForceUpdate
          ? _value.isForceUpdate
          : isForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      android: null == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as AppSettingsAndroid,
      ios: null == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as AppSettingsIos,
    ) as $Val);
  }

  /// Create a copy of AppSettingsUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsAndroidCopyWith<$Res> get android {
    return $AppSettingsAndroidCopyWith<$Res>(_value.android, (value) {
      return _then(_value.copyWith(android: value) as $Val);
    });
  }

  /// Create a copy of AppSettingsUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsIosCopyWith<$Res> get ios {
    return $AppSettingsIosCopyWith<$Res>(_value.ios, (value) {
      return _then(_value.copyWith(ios: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppSettingsUpdateImplCopyWith<$Res>
    implements $AppSettingsUpdateCopyWith<$Res> {
  factory _$$AppSettingsUpdateImplCopyWith(_$AppSettingsUpdateImpl value,
          $Res Function(_$AppSettingsUpdateImpl) then) =
      __$$AppSettingsUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_force_update') bool isForceUpdate,
      @JsonKey(name: 'android') AppSettingsAndroid android,
      @JsonKey(name: 'ios') AppSettingsIos ios});

  @override
  $AppSettingsAndroidCopyWith<$Res> get android;
  @override
  $AppSettingsIosCopyWith<$Res> get ios;
}

/// @nodoc
class __$$AppSettingsUpdateImplCopyWithImpl<$Res>
    extends _$AppSettingsUpdateCopyWithImpl<$Res, _$AppSettingsUpdateImpl>
    implements _$$AppSettingsUpdateImplCopyWith<$Res> {
  __$$AppSettingsUpdateImplCopyWithImpl(_$AppSettingsUpdateImpl _value,
      $Res Function(_$AppSettingsUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isForceUpdate = null,
    Object? android = null,
    Object? ios = null,
  }) {
    return _then(_$AppSettingsUpdateImpl(
      isForceUpdate: null == isForceUpdate
          ? _value.isForceUpdate
          : isForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool,
      android: null == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as AppSettingsAndroid,
      ios: null == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as AppSettingsIos,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsUpdateImpl implements _AppSettingsUpdate {
  const _$AppSettingsUpdateImpl(
      {@JsonKey(name: 'is_force_update') required this.isForceUpdate,
      @JsonKey(name: 'android') required this.android,
      @JsonKey(name: 'ios') required this.ios});

  factory _$AppSettingsUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsUpdateImplFromJson(json);

  @override
  @JsonKey(name: 'is_force_update')
  final bool isForceUpdate;
  @override
  @JsonKey(name: 'android')
  final AppSettingsAndroid android;
  @override
  @JsonKey(name: 'ios')
  final AppSettingsIos ios;

  @override
  String toString() {
    return 'AppSettingsUpdate(isForceUpdate: $isForceUpdate, android: $android, ios: $ios)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsUpdateImpl &&
            (identical(other.isForceUpdate, isForceUpdate) ||
                other.isForceUpdate == isForceUpdate) &&
            (identical(other.android, android) || other.android == android) &&
            (identical(other.ios, ios) || other.ios == ios));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isForceUpdate, android, ios);

  /// Create a copy of AppSettingsUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsUpdateImplCopyWith<_$AppSettingsUpdateImpl> get copyWith =>
      __$$AppSettingsUpdateImplCopyWithImpl<_$AppSettingsUpdateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsUpdateImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsUpdate implements AppSettingsUpdate {
  const factory _AppSettingsUpdate(
          {@JsonKey(name: 'is_force_update') required final bool isForceUpdate,
          @JsonKey(name: 'android') required final AppSettingsAndroid android,
          @JsonKey(name: 'ios') required final AppSettingsIos ios}) =
      _$AppSettingsUpdateImpl;

  factory _AppSettingsUpdate.fromJson(Map<String, dynamic> json) =
      _$AppSettingsUpdateImpl.fromJson;

  @override
  @JsonKey(name: 'is_force_update')
  bool get isForceUpdate;
  @override
  @JsonKey(name: 'android')
  AppSettingsAndroid get android;
  @override
  @JsonKey(name: 'ios')
  AppSettingsIos get ios;

  /// Create a copy of AppSettingsUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsUpdateImplCopyWith<_$AppSettingsUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
