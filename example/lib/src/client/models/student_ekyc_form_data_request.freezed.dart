// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_ekyc_form_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StudentEkycFormDataRequest _$StudentEkycFormDataRequestFromJson(
    Map<String, dynamic> json) {
  return _StudentEkycFormDataRequest.fromJson(json);
}

/// @nodoc
mixin _$StudentEkycFormDataRequest {
  /// Ekyc Extra
  @JsonKey(name: 'ekyc_extra')
  Map<dynamic, dynamic> get ekycExtra => throw _privateConstructorUsedError;

  /// Serializes this StudentEkycFormDataRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentEkycFormDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentEkycFormDataRequestCopyWith<StudentEkycFormDataRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEkycFormDataRequestCopyWith<$Res> {
  factory $StudentEkycFormDataRequestCopyWith(StudentEkycFormDataRequest value,
          $Res Function(StudentEkycFormDataRequest) then) =
      _$StudentEkycFormDataRequestCopyWithImpl<$Res,
          StudentEkycFormDataRequest>;
  @useResult
  $Res call({@JsonKey(name: 'ekyc_extra') Map<dynamic, dynamic> ekycExtra});
}

/// @nodoc
class _$StudentEkycFormDataRequestCopyWithImpl<$Res,
        $Val extends StudentEkycFormDataRequest>
    implements $StudentEkycFormDataRequestCopyWith<$Res> {
  _$StudentEkycFormDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentEkycFormDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ekycExtra = null,
  }) {
    return _then(_value.copyWith(
      ekycExtra: null == ekycExtra
          ? _value.ekycExtra
          : ekycExtra // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentEkycFormDataRequestImplCopyWith<$Res>
    implements $StudentEkycFormDataRequestCopyWith<$Res> {
  factory _$$StudentEkycFormDataRequestImplCopyWith(
          _$StudentEkycFormDataRequestImpl value,
          $Res Function(_$StudentEkycFormDataRequestImpl) then) =
      __$$StudentEkycFormDataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'ekyc_extra') Map<dynamic, dynamic> ekycExtra});
}

/// @nodoc
class __$$StudentEkycFormDataRequestImplCopyWithImpl<$Res>
    extends _$StudentEkycFormDataRequestCopyWithImpl<$Res,
        _$StudentEkycFormDataRequestImpl>
    implements _$$StudentEkycFormDataRequestImplCopyWith<$Res> {
  __$$StudentEkycFormDataRequestImplCopyWithImpl(
      _$StudentEkycFormDataRequestImpl _value,
      $Res Function(_$StudentEkycFormDataRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of StudentEkycFormDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ekycExtra = null,
  }) {
    return _then(_$StudentEkycFormDataRequestImpl(
      ekycExtra: null == ekycExtra
          ? _value._ekycExtra
          : ekycExtra // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$StudentEkycFormDataRequestImpl extends _StudentEkycFormDataRequest {
  const _$StudentEkycFormDataRequestImpl(
      {@JsonKey(name: 'ekyc_extra')
      required final Map<dynamic, dynamic> ekycExtra})
      : _ekycExtra = ekycExtra,
        super._();

  factory _$StudentEkycFormDataRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StudentEkycFormDataRequestImplFromJson(json);

  /// Ekyc Extra
  final Map<dynamic, dynamic> _ekycExtra;

  /// Ekyc Extra
  @override
  @JsonKey(name: 'ekyc_extra')
  Map<dynamic, dynamic> get ekycExtra {
    if (_ekycExtra is EqualUnmodifiableMapView) return _ekycExtra;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_ekycExtra);
  }

  @override
  String toString() {
    return 'StudentEkycFormDataRequest(ekycExtra: $ekycExtra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentEkycFormDataRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._ekycExtra, _ekycExtra));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ekycExtra));

  /// Create a copy of StudentEkycFormDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentEkycFormDataRequestImplCopyWith<_$StudentEkycFormDataRequestImpl>
      get copyWith => __$$StudentEkycFormDataRequestImplCopyWithImpl<
          _$StudentEkycFormDataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentEkycFormDataRequestImplToJson(
      this,
    );
  }
}

abstract class _StudentEkycFormDataRequest extends StudentEkycFormDataRequest {
  const factory _StudentEkycFormDataRequest(
          {@JsonKey(name: 'ekyc_extra')
          required final Map<dynamic, dynamic> ekycExtra}) =
      _$StudentEkycFormDataRequestImpl;
  const _StudentEkycFormDataRequest._() : super._();

  factory _StudentEkycFormDataRequest.fromJson(Map<String, dynamic> json) =
      _$StudentEkycFormDataRequestImpl.fromJson;

  /// Ekyc Extra
  @override
  @JsonKey(name: 'ekyc_extra')
  Map<dynamic, dynamic> get ekycExtra;

  /// Create a copy of StudentEkycFormDataRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentEkycFormDataRequestImplCopyWith<_$StudentEkycFormDataRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
