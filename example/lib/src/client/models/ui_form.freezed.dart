// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UIForm _$UIFormFromJson(Map<String, dynamic> json) {
  return _UIForm.fromJson(json);
}

/// @nodoc
mixin _$UIForm {
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'fields')
  List<dynamic> get fields => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'submit_text')
  String get submitText => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancel_text')
  String get cancelText => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_message')
  String get successMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'error_message')
  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'doc')
  String? get doc => throw _privateConstructorUsedError;

  /// Serializes this UIForm to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UIForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UIFormCopyWith<UIForm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIFormCopyWith<$Res> {
  factory $UIFormCopyWith(UIForm value, $Res Function(UIForm) then) =
      _$UIFormCopyWithImpl<$Res, UIForm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'fields') List<dynamic> fields,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'submit_text') String submitText,
      @JsonKey(name: 'cancel_text') String cancelText,
      @JsonKey(name: 'success_message') String successMessage,
      @JsonKey(name: 'error_message') String errorMessage,
      @JsonKey(name: 'doc') String? doc});
}

/// @nodoc
class _$UIFormCopyWithImpl<$Res, $Val extends UIForm>
    implements $UIFormCopyWith<$Res> {
  _$UIFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UIForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? fields = null,
    Object? title = null,
    Object? description = freezed,
    Object? submitText = null,
    Object? cancelText = null,
    Object? successMessage = null,
    Object? errorMessage = null,
    Object? doc = freezed,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      submitText: null == submitText
          ? _value.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelText: null == cancelText
          ? _value.cancelText
          : cancelText // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      doc: freezed == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UIFormImplCopyWith<$Res> implements $UIFormCopyWith<$Res> {
  factory _$$UIFormImplCopyWith(
          _$UIFormImpl value, $Res Function(_$UIFormImpl) then) =
      __$$UIFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'fields') List<dynamic> fields,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'submit_text') String submitText,
      @JsonKey(name: 'cancel_text') String cancelText,
      @JsonKey(name: 'success_message') String successMessage,
      @JsonKey(name: 'error_message') String errorMessage,
      @JsonKey(name: 'doc') String? doc});
}

/// @nodoc
class __$$UIFormImplCopyWithImpl<$Res>
    extends _$UIFormCopyWithImpl<$Res, _$UIFormImpl>
    implements _$$UIFormImplCopyWith<$Res> {
  __$$UIFormImplCopyWithImpl(
      _$UIFormImpl _value, $Res Function(_$UIFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of UIForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? fields = null,
    Object? title = null,
    Object? description = freezed,
    Object? submitText = null,
    Object? cancelText = null,
    Object? successMessage = null,
    Object? errorMessage = null,
    Object? doc = freezed,
  }) {
    return _then(_$UIFormImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      submitText: null == submitText
          ? _value.submitText
          : submitText // ignore: cast_nullable_to_non_nullable
              as String,
      cancelText: null == cancelText
          ? _value.cancelText
          : cancelText // ignore: cast_nullable_to_non_nullable
              as String,
      successMessage: null == successMessage
          ? _value.successMessage
          : successMessage // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      doc: freezed == doc
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _$UIFormImpl extends _UIForm {
  const _$UIFormImpl(
      {@JsonKey(name: 'key') required this.key,
      @JsonKey(name: 'fields') required final List<dynamic> fields,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'submit_text') required this.submitText,
      @JsonKey(name: 'cancel_text') required this.cancelText,
      @JsonKey(name: 'success_message') required this.successMessage,
      @JsonKey(name: 'error_message') required this.errorMessage,
      @JsonKey(name: 'doc') required this.doc})
      : _fields = fields,
        super._();

  factory _$UIFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$UIFormImplFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String key;
  final List<dynamic> _fields;
  @override
  @JsonKey(name: 'fields')
  List<dynamic> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'submit_text')
  final String submitText;
  @override
  @JsonKey(name: 'cancel_text')
  final String cancelText;
  @override
  @JsonKey(name: 'success_message')
  final String successMessage;
  @override
  @JsonKey(name: 'error_message')
  final String errorMessage;
  @override
  @JsonKey(name: 'doc')
  final String? doc;

  @override
  String toString() {
    return 'UIForm(key: $key, fields: $fields, title: $title, description: $description, submitText: $submitText, cancelText: $cancelText, successMessage: $successMessage, errorMessage: $errorMessage, doc: $doc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UIFormImpl &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.submitText, submitText) ||
                other.submitText == submitText) &&
            (identical(other.cancelText, cancelText) ||
                other.cancelText == cancelText) &&
            (identical(other.successMessage, successMessage) ||
                other.successMessage == successMessage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.doc, doc) || other.doc == doc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      const DeepCollectionEquality().hash(_fields),
      title,
      description,
      submitText,
      cancelText,
      successMessage,
      errorMessage,
      doc);

  /// Create a copy of UIForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UIFormImplCopyWith<_$UIFormImpl> get copyWith =>
      __$$UIFormImplCopyWithImpl<_$UIFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UIFormImplToJson(
      this,
    );
  }
}

abstract class _UIForm extends UIForm {
  const factory _UIForm(
      {@JsonKey(name: 'key') required final String key,
      @JsonKey(name: 'fields') required final List<dynamic> fields,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') required final String? description,
      @JsonKey(name: 'submit_text') required final String submitText,
      @JsonKey(name: 'cancel_text') required final String cancelText,
      @JsonKey(name: 'success_message') required final String successMessage,
      @JsonKey(name: 'error_message') required final String errorMessage,
      @JsonKey(name: 'doc') required final String? doc}) = _$UIFormImpl;
  const _UIForm._() : super._();

  factory _UIForm.fromJson(Map<String, dynamic> json) = _$UIFormImpl.fromJson;

  @override
  @JsonKey(name: 'key')
  String get key;
  @override
  @JsonKey(name: 'fields')
  List<dynamic> get fields;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'submit_text')
  String get submitText;
  @override
  @JsonKey(name: 'cancel_text')
  String get cancelText;
  @override
  @JsonKey(name: 'success_message')
  String get successMessage;
  @override
  @JsonKey(name: 'error_message')
  String get errorMessage;
  @override
  @JsonKey(name: 'doc')
  String? get doc;

  /// Create a copy of UIForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UIFormImplCopyWith<_$UIFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
