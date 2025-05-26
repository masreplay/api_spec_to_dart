// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_router_generic_router_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppRouterGenericRouterItemResponse {
  /// id
  @JsonKey(name: AppRouterGenericRouterItemResponse.idKey)
  int get id;

  /// name
  @JsonKey(name: AppRouterGenericRouterItemResponse.nameKey)
  String get name;

  /// Create a copy of AppRouterGenericRouterItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppRouterGenericRouterItemResponseCopyWith<
          AppRouterGenericRouterItemResponse>
      get copyWith => _$AppRouterGenericRouterItemResponseCopyWithImpl<
              AppRouterGenericRouterItemResponse>(
          this as AppRouterGenericRouterItemResponse, _$identity);

  /// Serializes this AppRouterGenericRouterItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppRouterGenericRouterItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'AppRouterGenericRouterItemResponse(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class $AppRouterGenericRouterItemResponseCopyWith<$Res> {
  factory $AppRouterGenericRouterItemResponseCopyWith(
          AppRouterGenericRouterItemResponse value,
          $Res Function(AppRouterGenericRouterItemResponse) _then) =
      _$AppRouterGenericRouterItemResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AppRouterGenericRouterItemResponse.idKey) int id,
      @JsonKey(name: AppRouterGenericRouterItemResponse.nameKey) String name});
}

/// @nodoc
class _$AppRouterGenericRouterItemResponseCopyWithImpl<$Res>
    implements $AppRouterGenericRouterItemResponseCopyWith<$Res> {
  _$AppRouterGenericRouterItemResponseCopyWithImpl(this._self, this._then);

  final AppRouterGenericRouterItemResponse _self;
  final $Res Function(AppRouterGenericRouterItemResponse) _then;

  /// Create a copy of AppRouterGenericRouterItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _AppRouterGenericRouterItemResponse
    extends AppRouterGenericRouterItemResponse {
  const _AppRouterGenericRouterItemResponse(
      {@JsonKey(name: AppRouterGenericRouterItemResponse.idKey)
      required this.id,
      @JsonKey(name: AppRouterGenericRouterItemResponse.nameKey)
      required this.name})
      : super._();
  factory _AppRouterGenericRouterItemResponse.fromJson(
          Map<String, dynamic> json) =>
      _$AppRouterGenericRouterItemResponseFromJson(json);

  /// id
  @override
  @JsonKey(name: AppRouterGenericRouterItemResponse.idKey)
  final int id;

  /// name
  @override
  @JsonKey(name: AppRouterGenericRouterItemResponse.nameKey)
  final String name;

  /// Create a copy of AppRouterGenericRouterItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppRouterGenericRouterItemResponseCopyWith<
          _AppRouterGenericRouterItemResponse>
      get copyWith => __$AppRouterGenericRouterItemResponseCopyWithImpl<
          _AppRouterGenericRouterItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppRouterGenericRouterItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppRouterGenericRouterItemResponse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @override
  String toString() {
    return 'AppRouterGenericRouterItemResponse(id: $id, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$AppRouterGenericRouterItemResponseCopyWith<$Res>
    implements $AppRouterGenericRouterItemResponseCopyWith<$Res> {
  factory _$AppRouterGenericRouterItemResponseCopyWith(
          _AppRouterGenericRouterItemResponse value,
          $Res Function(_AppRouterGenericRouterItemResponse) _then) =
      __$AppRouterGenericRouterItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AppRouterGenericRouterItemResponse.idKey) int id,
      @JsonKey(name: AppRouterGenericRouterItemResponse.nameKey) String name});
}

/// @nodoc
class __$AppRouterGenericRouterItemResponseCopyWithImpl<$Res>
    implements _$AppRouterGenericRouterItemResponseCopyWith<$Res> {
  __$AppRouterGenericRouterItemResponseCopyWithImpl(this._self, this._then);

  final _AppRouterGenericRouterItemResponse _self;
  final $Res Function(_AppRouterGenericRouterItemResponse) _then;

  /// Create a copy of AppRouterGenericRouterItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_AppRouterGenericRouterItemResponse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}
