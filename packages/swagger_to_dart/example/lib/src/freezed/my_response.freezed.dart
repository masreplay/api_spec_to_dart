// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MyResponse _$MyResponseFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'create':
      return MyResponseData.fromJson(json);
    case 'update':
      return MyResponseSpecial.fromJson(json);
    case 'delete':
      return MyResponseError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'MyResponse', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MyResponse {
  /// Serializes this MyResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MyResponse);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyResponse()';
  }
}

/// @nodoc
class $MyResponseCopyWith<$Res> {
  $MyResponseCopyWith(MyResponse _, $Res Function(MyResponse) __);
}

/// @nodoc
@JsonSerializable()
class MyResponseData implements MyResponse {
  const MyResponseData(this.create, {final String? $type})
      : $type = $type ?? 'create';
  factory MyResponseData.fromJson(Map<String, dynamic> json) =>
      _$MyResponseDataFromJson(json);

  final CreateOrderLine create;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyResponseDataCopyWith<MyResponseData> get copyWith =>
      _$MyResponseDataCopyWithImpl<MyResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyResponseDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyResponseData &&
            (identical(other.create, create) || other.create == create));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, create);

  @override
  String toString() {
    return 'MyResponse(create: $create)';
  }
}

/// @nodoc
abstract mixin class $MyResponseDataCopyWith<$Res>
    implements $MyResponseCopyWith<$Res> {
  factory $MyResponseDataCopyWith(
          MyResponseData value, $Res Function(MyResponseData) _then) =
      _$MyResponseDataCopyWithImpl;
  @useResult
  $Res call({CreateOrderLine create});

  $CreateOrderLineCopyWith<$Res> get create;
}

/// @nodoc
class _$MyResponseDataCopyWithImpl<$Res>
    implements $MyResponseDataCopyWith<$Res> {
  _$MyResponseDataCopyWithImpl(this._self, this._then);

  final MyResponseData _self;
  final $Res Function(MyResponseData) _then;

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? create = null,
  }) {
    return _then(MyResponseData(
      null == create
          ? _self.create
          : create // ignore: cast_nullable_to_non_nullable
              as CreateOrderLine,
    ));
  }

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CreateOrderLineCopyWith<$Res> get create {
    return $CreateOrderLineCopyWith<$Res>(_self.create, (value) {
      return _then(_self.copyWith(create: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MyResponseSpecial implements MyResponse {
  const MyResponseSpecial(this.update, {final String? $type})
      : $type = $type ?? 'update';
  factory MyResponseSpecial.fromJson(Map<String, dynamic> json) =>
      _$MyResponseSpecialFromJson(json);

  final UpdateOrderLine update;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyResponseSpecialCopyWith<MyResponseSpecial> get copyWith =>
      _$MyResponseSpecialCopyWithImpl<MyResponseSpecial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyResponseSpecialToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyResponseSpecial &&
            (identical(other.update, update) || other.update == update));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, update);

  @override
  String toString() {
    return 'MyResponse.special(update: $update)';
  }
}

/// @nodoc
abstract mixin class $MyResponseSpecialCopyWith<$Res>
    implements $MyResponseCopyWith<$Res> {
  factory $MyResponseSpecialCopyWith(
          MyResponseSpecial value, $Res Function(MyResponseSpecial) _then) =
      _$MyResponseSpecialCopyWithImpl;
  @useResult
  $Res call({UpdateOrderLine update});

  $UpdateOrderLineCopyWith<$Res> get update;
}

/// @nodoc
class _$MyResponseSpecialCopyWithImpl<$Res>
    implements $MyResponseSpecialCopyWith<$Res> {
  _$MyResponseSpecialCopyWithImpl(this._self, this._then);

  final MyResponseSpecial _self;
  final $Res Function(MyResponseSpecial) _then;

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? update = null,
  }) {
    return _then(MyResponseSpecial(
      null == update
          ? _self.update
          : update // ignore: cast_nullable_to_non_nullable
              as UpdateOrderLine,
    ));
  }

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UpdateOrderLineCopyWith<$Res> get update {
    return $UpdateOrderLineCopyWith<$Res>(_self.update, (value) {
      return _then(_self.copyWith(update: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MyResponseError implements MyResponse {
  const MyResponseError(this.delete, {final String? $type})
      : $type = $type ?? 'delete';
  factory MyResponseError.fromJson(Map<String, dynamic> json) =>
      _$MyResponseErrorFromJson(json);

  final DeleteOrderLine delete;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyResponseErrorCopyWith<MyResponseError> get copyWith =>
      _$MyResponseErrorCopyWithImpl<MyResponseError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MyResponseErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyResponseError &&
            (identical(other.delete, delete) || other.delete == delete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, delete);

  @override
  String toString() {
    return 'MyResponse.error(delete: $delete)';
  }
}

/// @nodoc
abstract mixin class $MyResponseErrorCopyWith<$Res>
    implements $MyResponseCopyWith<$Res> {
  factory $MyResponseErrorCopyWith(
          MyResponseError value, $Res Function(MyResponseError) _then) =
      _$MyResponseErrorCopyWithImpl;
  @useResult
  $Res call({DeleteOrderLine delete});

  $DeleteOrderLineCopyWith<$Res> get delete;
}

/// @nodoc
class _$MyResponseErrorCopyWithImpl<$Res>
    implements $MyResponseErrorCopyWith<$Res> {
  _$MyResponseErrorCopyWithImpl(this._self, this._then);

  final MyResponseError _self;
  final $Res Function(MyResponseError) _then;

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? delete = null,
  }) {
    return _then(MyResponseError(
      null == delete
          ? _self.delete
          : delete // ignore: cast_nullable_to_non_nullable
              as DeleteOrderLine,
    ));
  }

  /// Create a copy of MyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeleteOrderLineCopyWith<$Res> get delete {
    return $DeleteOrderLineCopyWith<$Res>(_self.delete, (value) {
      return _then(_self.copyWith(delete: value));
    });
  }
}
