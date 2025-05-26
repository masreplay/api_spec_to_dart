// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conditional_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConditionalBody {
  /// itemId
  @JsonKey(name: ConditionalBody.itemIdKey)
  int? get itemId;

  /// itemName
  @JsonKey(name: ConditionalBody.itemNameKey)
  String? get itemName;

  /// Create a copy of ConditionalBody
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConditionalBodyCopyWith<ConditionalBody> get copyWith =>
      _$ConditionalBodyCopyWithImpl<ConditionalBody>(
        this as ConditionalBody,
        _$identity,
      );

  /// Serializes this ConditionalBody to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConditionalBody &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, itemName);

  @override
  String toString() {
    return 'ConditionalBody(itemId: $itemId, itemName: $itemName)';
  }
}

/// @nodoc
abstract mixin class $ConditionalBodyCopyWith<$Res> {
  factory $ConditionalBodyCopyWith(
    ConditionalBody value,
    $Res Function(ConditionalBody) _then,
  ) = _$ConditionalBodyCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: ConditionalBody.itemIdKey) int? itemId,
    @JsonKey(name: ConditionalBody.itemNameKey) String? itemName,
  });
}

/// @nodoc
class _$ConditionalBodyCopyWithImpl<$Res>
    implements $ConditionalBodyCopyWith<$Res> {
  _$ConditionalBodyCopyWithImpl(this._self, this._then);

  final ConditionalBody _self;
  final $Res Function(ConditionalBody) _then;

  /// Create a copy of ConditionalBody
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? itemId = freezed, Object? itemName = freezed}) {
    return _then(
      _self.copyWith(
        itemId:
            freezed == itemId
                ? _self.itemId
                : itemId // ignore: cast_nullable_to_non_nullable
                    as int?,
        itemName:
            freezed == itemName
                ? _self.itemName
                : itemName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _ConditionalBody extends ConditionalBody {
  const _ConditionalBody({
    @JsonKey(name: ConditionalBody.itemIdKey) required this.itemId,
    @JsonKey(name: ConditionalBody.itemNameKey) required this.itemName,
  }) : super._();
  factory _ConditionalBody.fromJson(Map<String, dynamic> json) =>
      _$ConditionalBodyFromJson(json);

  /// itemId
  @override
  @JsonKey(name: ConditionalBody.itemIdKey)
  final int? itemId;

  /// itemName
  @override
  @JsonKey(name: ConditionalBody.itemNameKey)
  final String? itemName;

  /// Create a copy of ConditionalBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConditionalBodyCopyWith<_ConditionalBody> get copyWith =>
      __$ConditionalBodyCopyWithImpl<_ConditionalBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConditionalBodyToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConditionalBody &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.itemName, itemName) ||
                other.itemName == itemName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, itemId, itemName);

  @override
  String toString() {
    return 'ConditionalBody(itemId: $itemId, itemName: $itemName)';
  }
}

/// @nodoc
abstract mixin class _$ConditionalBodyCopyWith<$Res>
    implements $ConditionalBodyCopyWith<$Res> {
  factory _$ConditionalBodyCopyWith(
    _ConditionalBody value,
    $Res Function(_ConditionalBody) _then,
  ) = __$ConditionalBodyCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: ConditionalBody.itemIdKey) int? itemId,
    @JsonKey(name: ConditionalBody.itemNameKey) String? itemName,
  });
}

/// @nodoc
class __$ConditionalBodyCopyWithImpl<$Res>
    implements _$ConditionalBodyCopyWith<$Res> {
  __$ConditionalBodyCopyWithImpl(this._self, this._then);

  final _ConditionalBody _self;
  final $Res Function(_ConditionalBody) _then;

  /// Create a copy of ConditionalBody
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? itemId = freezed, Object? itemName = freezed}) {
    return _then(
      _ConditionalBody(
        itemId:
            freezed == itemId
                ? _self.itemId
                : itemId // ignore: cast_nullable_to_non_nullable
                    as int?,
        itemName:
            freezed == itemName
                ? _self.itemName
                : itemName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}
