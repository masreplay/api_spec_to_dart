// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_select_form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UISelectFormField _$UISelectFormFieldFromJson(Map<String, dynamic> json) {
  return _UISelectFormField.fromJson(json);
}

/// @nodoc
mixin _$UISelectFormField {
  /// Key
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;

  /// Name
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  /// Hint
  @JsonKey(name: 'hint')
  String? get hint => throw _privateConstructorUsedError;

  /// Is Required
  @JsonKey(name: 'is_required')
  bool get isRequired => throw _privateConstructorUsedError;

  /// Read Only
  @JsonKey(name: 'read_only')
  bool get readOnly => throw _privateConstructorUsedError;

  /// Doc
  @JsonKey(name: 'doc')
  String? get doc => throw _privateConstructorUsedError;

  /// Type
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  /// Options
  @JsonKey(name: 'options')
  List<UISelectFormFieldOption> get options =>
      throw _privateConstructorUsedError;

  /// Default Value
  @JsonKey(name: 'default_value')
  String? get defaultValue => throw _privateConstructorUsedError;

  /// Example
  @JsonKey(name: 'example')
  String? get example => throw _privateConstructorUsedError;

  /// Serializes this UISelectFormField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UISelectFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UISelectFormFieldCopyWith<UISelectFormField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UISelectFormFieldCopyWith<$Res> {
  factory $UISelectFormFieldCopyWith(
          UISelectFormField value, $Res Function(UISelectFormField) then) =
      _$UISelectFormFieldCopyWithImpl<$Res, UISelectFormField>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'hint') String? hint,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'read_only') bool readOnly,
      @JsonKey(name: 'doc') String? doc,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'options') List<UISelectFormFieldOption> options,
      @JsonKey(name: 'default_value') String? defaultValue,
      @JsonKey(name: 'example') String? example});
}

/// @nodoc
class _$UISelectFormFieldCopyWithImpl<$Res, $Val extends UISelectFormField>
    implements $UISelectFormFieldCopyWith<$Res> {
  _$UISelectFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UISelectFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? hint = freezed,
    Object? isRequired = null,
    Object? readOnly = null,
    Object? doc = freezed,
    Object? type = null,
    Object? options = null,
    Object? defaultValue = freezed,
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      readOnly: null == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      doc: freezed == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<UISelectFormFieldOption>,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UISelectFormFieldImplCopyWith<$Res>
    implements $UISelectFormFieldCopyWith<$Res> {
  factory _$$UISelectFormFieldImplCopyWith(_$UISelectFormFieldImpl value,
          $Res Function(_$UISelectFormFieldImpl) then) =
      __$$UISelectFormFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'hint') String? hint,
      @JsonKey(name: 'is_required') bool isRequired,
      @JsonKey(name: 'read_only') bool readOnly,
      @JsonKey(name: 'doc') String? doc,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'options') List<UISelectFormFieldOption> options,
      @JsonKey(name: 'default_value') String? defaultValue,
      @JsonKey(name: 'example') String? example});
}

/// @nodoc
class __$$UISelectFormFieldImplCopyWithImpl<$Res>
    extends _$UISelectFormFieldCopyWithImpl<$Res, _$UISelectFormFieldImpl>
    implements _$$UISelectFormFieldImplCopyWith<$Res> {
  __$$UISelectFormFieldImplCopyWithImpl(_$UISelectFormFieldImpl _value,
      $Res Function(_$UISelectFormFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of UISelectFormField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? name = null,
    Object? hint = freezed,
    Object? isRequired = null,
    Object? readOnly = null,
    Object? doc = freezed,
    Object? type = null,
    Object? options = null,
    Object? defaultValue = freezed,
    Object? example = freezed,
  }) {
    return _then(_$UISelectFormFieldImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      readOnly: null == readOnly
          ? _value.readOnly
          : readOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      doc: freezed == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<UISelectFormFieldOption>,
      defaultValue: freezed == defaultValue
          ? _value.defaultValue
          : defaultValue // ignore: cast_nullable_to_non_nullable
              as String?,
      example: freezed == example
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$UISelectFormFieldImpl extends _UISelectFormField {
  const _$UISelectFormFieldImpl(
      {@JsonKey(name: 'key') required this.key,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'hint') required this.hint,
      @JsonKey(name: 'is_required') required this.isRequired,
      @JsonKey(name: 'read_only') required this.readOnly = false,
      @JsonKey(name: 'doc') required this.doc,
      @JsonKey(name: 'type') required this.type = select,
      @JsonKey(name: 'options')
      required final List<UISelectFormFieldOption> options = const [],
      @JsonKey(name: 'default_value') required this.defaultValue,
      @JsonKey(name: 'example') required this.example})
      : _options = options,
        super._();

  factory _$UISelectFormFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$UISelectFormFieldImplFromJson(json);

  /// Key
  @override
  @JsonKey(name: 'key')
  final String key;

  /// Name
  @override
  @JsonKey(name: 'name')
  final String name;

  /// Hint
  @override
  @JsonKey(name: 'hint')
  final String? hint;

  /// Is Required
  @override
  @JsonKey(name: 'is_required')
  final bool isRequired;

  /// Read Only
  @override
  @JsonKey(name: 'read_only')
  final bool readOnly;

  /// Doc
  @override
  @JsonKey(name: 'doc')
  final String? doc;

  /// Type
  @override
  @JsonKey(name: 'type')
  final String type;

  /// Options
  final List<UISelectFormFieldOption> _options;

  /// Options
  @override
  @JsonKey(name: 'options')
  List<UISelectFormFieldOption> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  /// Default Value
  @override
  @JsonKey(name: 'default_value')
  final String? defaultValue;

  /// Example
  @override
  @JsonKey(name: 'example')
  final String? example;

  @override
  String toString() {
    return 'UISelectFormField(key: $key, name: $name, hint: $hint, isRequired: $isRequired, readOnly: $readOnly, doc: $doc, type: $type, options: $options, defaultValue: $defaultValue, example: $example)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UISelectFormFieldImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.readOnly, readOnly) ||
                other.readOnly == readOnly) &&
            (identical(other.doc, doc) || other.doc == doc) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.defaultValue, defaultValue) ||
                other.defaultValue == defaultValue) &&
            (identical(other.example, example) || other.example == example));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      name,
      hint,
      isRequired,
      readOnly,
      doc,
      type,
      const DeepCollectionEquality().hash(_options),
      defaultValue,
      example);

  /// Create a copy of UISelectFormField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UISelectFormFieldImplCopyWith<_$UISelectFormFieldImpl> get copyWith =>
      __$$UISelectFormFieldImplCopyWithImpl<_$UISelectFormFieldImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UISelectFormFieldImplToJson(
      this,
    );
  }
}

abstract class _UISelectFormField extends UISelectFormField {
  const factory _UISelectFormField(
          {@JsonKey(name: 'key') required final String key,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'hint') required final String? hint,
          @JsonKey(name: 'is_required') required final bool isRequired,
          @JsonKey(name: 'read_only') required final bool readOnly,
          @JsonKey(name: 'doc') required final String? doc,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'options')
          required final List<UISelectFormFieldOption> options,
          @JsonKey(name: 'default_value') required final String? defaultValue,
          @JsonKey(name: 'example') required final String? example}) =
      _$UISelectFormFieldImpl;
  const _UISelectFormField._() : super._();

  factory _UISelectFormField.fromJson(Map<String, dynamic> json) =
      _$UISelectFormFieldImpl.fromJson;

  /// Key
  @override
  @JsonKey(name: 'key')
  String get key;

  /// Name
  @override
  @JsonKey(name: 'name')
  String get name;

  /// Hint
  @override
  @JsonKey(name: 'hint')
  String? get hint;

  /// Is Required
  @override
  @JsonKey(name: 'is_required')
  bool get isRequired;

  /// Read Only
  @override
  @JsonKey(name: 'read_only')
  bool get readOnly;

  /// Doc
  @override
  @JsonKey(name: 'doc')
  String? get doc;

  /// Type
  @override
  @JsonKey(name: 'type')
  String get type;

  /// Options
  @override
  @JsonKey(name: 'options')
  List<UISelectFormFieldOption> get options;

  /// Default Value
  @override
  @JsonKey(name: 'default_value')
  String? get defaultValue;

  /// Example
  @override
  @JsonKey(name: 'example')
  String? get example;

  /// Create a copy of UISelectFormField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UISelectFormFieldImplCopyWith<_$UISelectFormFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
