// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodPublic _$PaymentMethodPublicFromJson(Map<String, dynamic> json) {
  return _PaymentMethodPublic.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodPublic {
  /// Id
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Description
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Url
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  /// Image
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  PaymentMethodEnum get type => throw _privateConstructorUsedError;

  /// Serializes this PaymentMethodPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentMethodPublicCopyWith<PaymentMethodPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodPublicCopyWith<$Res> {
  factory $PaymentMethodPublicCopyWith(
          PaymentMethodPublic value, $Res Function(PaymentMethodPublic) then) =
      _$PaymentMethodPublicCopyWithImpl<$Res, PaymentMethodPublic>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'type') PaymentMethodEnum type});
}

/// @nodoc
class _$PaymentMethodPublicCopyWithImpl<$Res, $Val extends PaymentMethodPublic>
    implements $PaymentMethodPublicCopyWith<$Res> {
  _$PaymentMethodPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? url = null,
    Object? image = null,
    Object? type = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodPublicImplCopyWith<$Res>
    implements $PaymentMethodPublicCopyWith<$Res> {
  factory _$$PaymentMethodPublicImplCopyWith(_$PaymentMethodPublicImpl value,
          $Res Function(_$PaymentMethodPublicImpl) then) =
      __$$PaymentMethodPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'type') PaymentMethodEnum type});
}

/// @nodoc
class __$$PaymentMethodPublicImplCopyWithImpl<$Res>
    extends _$PaymentMethodPublicCopyWithImpl<$Res, _$PaymentMethodPublicImpl>
    implements _$$PaymentMethodPublicImplCopyWith<$Res> {
  __$$PaymentMethodPublicImplCopyWithImpl(_$PaymentMethodPublicImpl _value,
      $Res Function(_$PaymentMethodPublicImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? url = null,
    Object? image = null,
    Object? type = null,
  }) {
    return _then(_$PaymentMethodPublicImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PaymentMethodEnum,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$PaymentMethodPublicImpl extends _PaymentMethodPublic {
  const _$PaymentMethodPublicImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'image') required this.image,
      @JsonKey(name: 'type') required this.type})
      : super._();

  factory _$PaymentMethodPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodPublicImplFromJson(json);

  /// Id
  @override
  @JsonKey(name: 'id')
  final int id;

  /// Name
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Description
  @override
  @JsonKey(name: 'description')
  final String description;

  /// Url
  @override
  @JsonKey(name: 'url')
  final String url;

  /// Image
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'type')
  final PaymentMethodEnum type;

  @override
  String toString() {
    return 'PaymentMethodPublic(id: $id, name: $name, description: $description, url: $url, image: $image, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, url, image, type);

  /// Create a copy of PaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodPublicImplCopyWith<_$PaymentMethodPublicImpl> get copyWith =>
      __$$PaymentMethodPublicImplCopyWithImpl<_$PaymentMethodPublicImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodPublicImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodPublic extends PaymentMethodPublic {
  const factory _PaymentMethodPublic(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'url') required final String url,
          @JsonKey(name: 'image') required final String image,
          @JsonKey(name: 'type') required final PaymentMethodEnum type}) =
      _$PaymentMethodPublicImpl;
  const _PaymentMethodPublic._() : super._();

  factory _PaymentMethodPublic.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodPublicImpl.fromJson;

  /// Id
  @override
  @JsonKey(name: 'id')
  int get id;

  /// Name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Description
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Url
  @override
  @JsonKey(name: 'url')
  String get url;

  /// Image
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'type')
  PaymentMethodEnum get type;

  /// Create a copy of PaymentMethodPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentMethodPublicImplCopyWith<_$PaymentMethodPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
