// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_types_with_validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllTypesWithValidation {
  int get intValue;
  double get floatValue;
  String get strValue;
  bool get boolValue;
  String get emailValue;
  String get urlValue;
  List<String> get listValue;

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllTypesWithValidationCopyWith<AllTypesWithValidation> get copyWith =>
      _$AllTypesWithValidationCopyWithImpl<AllTypesWithValidation>(
          this as AllTypesWithValidation, _$identity);

  /// Serializes this AllTypesWithValidation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllTypesWithValidation &&
            (identical(other.intValue, intValue) ||
                other.intValue == intValue) &&
            (identical(other.floatValue, floatValue) ||
                other.floatValue == floatValue) &&
            (identical(other.strValue, strValue) ||
                other.strValue == strValue) &&
            (identical(other.boolValue, boolValue) ||
                other.boolValue == boolValue) &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.urlValue, urlValue) ||
                other.urlValue == urlValue) &&
            const DeepCollectionEquality().equals(other.listValue, listValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      intValue,
      floatValue,
      strValue,
      boolValue,
      emailValue,
      urlValue,
      const DeepCollectionEquality().hash(listValue));

  @override
  String toString() {
    return 'AllTypesWithValidation(intValue: $intValue, floatValue: $floatValue, strValue: $strValue, boolValue: $boolValue, emailValue: $emailValue, urlValue: $urlValue, listValue: $listValue)';
  }
}

/// @nodoc
abstract mixin class $AllTypesWithValidationCopyWith<$Res> {
  factory $AllTypesWithValidationCopyWith(AllTypesWithValidation value,
          $Res Function(AllTypesWithValidation) _then) =
      _$AllTypesWithValidationCopyWithImpl;
  @useResult
  $Res call(
      {int intValue,
      double floatValue,
      String strValue,
      bool boolValue,
      String emailValue,
      String urlValue,
      List<String> listValue});
}

/// @nodoc
class _$AllTypesWithValidationCopyWithImpl<$Res>
    implements $AllTypesWithValidationCopyWith<$Res> {
  _$AllTypesWithValidationCopyWithImpl(this._self, this._then);

  final AllTypesWithValidation _self;
  final $Res Function(AllTypesWithValidation) _then;

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intValue = null,
    Object? floatValue = null,
    Object? strValue = null,
    Object? boolValue = null,
    Object? emailValue = null,
    Object? urlValue = null,
    Object? listValue = null,
  }) {
    return _then(_self.copyWith(
      intValue: null == intValue
          ? _self.intValue
          : intValue // ignore: cast_nullable_to_non_nullable
              as int,
      floatValue: null == floatValue
          ? _self.floatValue
          : floatValue // ignore: cast_nullable_to_non_nullable
              as double,
      strValue: null == strValue
          ? _self.strValue
          : strValue // ignore: cast_nullable_to_non_nullable
              as String,
      boolValue: null == boolValue
          ? _self.boolValue
          : boolValue // ignore: cast_nullable_to_non_nullable
              as bool,
      emailValue: null == emailValue
          ? _self.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      urlValue: null == urlValue
          ? _self.urlValue
          : urlValue // ignore: cast_nullable_to_non_nullable
              as String,
      listValue: null == listValue
          ? _self.listValue
          : listValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: Convertors.convertors)
class _AllTypesWithValidation implements AllTypesWithValidation {
  const _AllTypesWithValidation(
      {required this.intValue,
      required this.floatValue,
      required this.strValue,
      required this.boolValue,
      required this.emailValue,
      required this.urlValue,
      required final List<String> listValue})
      : _listValue = listValue;
  factory _AllTypesWithValidation.fromJson(Map<String, dynamic> json) =>
      _$AllTypesWithValidationFromJson(json);

  @override
  final int intValue;
  @override
  final double floatValue;
  @override
  final String strValue;
  @override
  final bool boolValue;
  @override
  final String emailValue;
  @override
  final String urlValue;
  final List<String> _listValue;
  @override
  List<String> get listValue {
    if (_listValue is EqualUnmodifiableListView) return _listValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listValue);
  }

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllTypesWithValidationCopyWith<_AllTypesWithValidation> get copyWith =>
      __$AllTypesWithValidationCopyWithImpl<_AllTypesWithValidation>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllTypesWithValidationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllTypesWithValidation &&
            (identical(other.intValue, intValue) ||
                other.intValue == intValue) &&
            (identical(other.floatValue, floatValue) ||
                other.floatValue == floatValue) &&
            (identical(other.strValue, strValue) ||
                other.strValue == strValue) &&
            (identical(other.boolValue, boolValue) ||
                other.boolValue == boolValue) &&
            (identical(other.emailValue, emailValue) ||
                other.emailValue == emailValue) &&
            (identical(other.urlValue, urlValue) ||
                other.urlValue == urlValue) &&
            const DeepCollectionEquality()
                .equals(other._listValue, _listValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      intValue,
      floatValue,
      strValue,
      boolValue,
      emailValue,
      urlValue,
      const DeepCollectionEquality().hash(_listValue));

  @override
  String toString() {
    return 'AllTypesWithValidation(intValue: $intValue, floatValue: $floatValue, strValue: $strValue, boolValue: $boolValue, emailValue: $emailValue, urlValue: $urlValue, listValue: $listValue)';
  }
}

/// @nodoc
abstract mixin class _$AllTypesWithValidationCopyWith<$Res>
    implements $AllTypesWithValidationCopyWith<$Res> {
  factory _$AllTypesWithValidationCopyWith(_AllTypesWithValidation value,
          $Res Function(_AllTypesWithValidation) _then) =
      __$AllTypesWithValidationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int intValue,
      double floatValue,
      String strValue,
      bool boolValue,
      String emailValue,
      String urlValue,
      List<String> listValue});
}

/// @nodoc
class __$AllTypesWithValidationCopyWithImpl<$Res>
    implements _$AllTypesWithValidationCopyWith<$Res> {
  __$AllTypesWithValidationCopyWithImpl(this._self, this._then);

  final _AllTypesWithValidation _self;
  final $Res Function(_AllTypesWithValidation) _then;

  /// Create a copy of AllTypesWithValidation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? intValue = null,
    Object? floatValue = null,
    Object? strValue = null,
    Object? boolValue = null,
    Object? emailValue = null,
    Object? urlValue = null,
    Object? listValue = null,
  }) {
    return _then(_AllTypesWithValidation(
      intValue: null == intValue
          ? _self.intValue
          : intValue // ignore: cast_nullable_to_non_nullable
              as int,
      floatValue: null == floatValue
          ? _self.floatValue
          : floatValue // ignore: cast_nullable_to_non_nullable
              as double,
      strValue: null == strValue
          ? _self.strValue
          : strValue // ignore: cast_nullable_to_non_nullable
              as String,
      boolValue: null == boolValue
          ? _self.boolValue
          : boolValue // ignore: cast_nullable_to_non_nullable
              as bool,
      emailValue: null == emailValue
          ? _self.emailValue
          : emailValue // ignore: cast_nullable_to_non_nullable
              as String,
      urlValue: null == urlValue
          ? _self.urlValue
          : urlValue // ignore: cast_nullable_to_non_nullable
              as String,
      listValue: null == listValue
          ? _self._listValue
          : listValue // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
