// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_basic_string_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicBasicStringQueries {
  /// text
  @JsonKey(name: BasicBasicStringQueries.textKey)
  String get text;

  /// Create a copy of BasicBasicStringQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BasicBasicStringQueriesCopyWith<BasicBasicStringQueries> get copyWith =>
      _$BasicBasicStringQueriesCopyWithImpl<BasicBasicStringQueries>(
          this as BasicBasicStringQueries, _$identity);

  /// Serializes this BasicBasicStringQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BasicBasicStringQueries &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'BasicBasicStringQueries(text: $text)';
  }
}

/// @nodoc
abstract mixin class $BasicBasicStringQueriesCopyWith<$Res> {
  factory $BasicBasicStringQueriesCopyWith(BasicBasicStringQueries value,
          $Res Function(BasicBasicStringQueries) _then) =
      _$BasicBasicStringQueriesCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: BasicBasicStringQueries.textKey) String text});
}

/// @nodoc
class _$BasicBasicStringQueriesCopyWithImpl<$Res>
    implements $BasicBasicStringQueriesCopyWith<$Res> {
  _$BasicBasicStringQueriesCopyWithImpl(this._self, this._then);

  final BasicBasicStringQueries _self;
  final $Res Function(BasicBasicStringQueries) _then;

  /// Create a copy of BasicBasicStringQueries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_self.copyWith(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: convertors)
class _BasicBasicStringQueries extends BasicBasicStringQueries {
  const _BasicBasicStringQueries(
      {@JsonKey(name: BasicBasicStringQueries.textKey) required this.text})
      : super._();
  factory _BasicBasicStringQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicBasicStringQueriesFromJson(json);

  /// text
  @override
  @JsonKey(name: BasicBasicStringQueries.textKey)
  final String text;

  /// Create a copy of BasicBasicStringQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BasicBasicStringQueriesCopyWith<_BasicBasicStringQueries> get copyWith =>
      __$BasicBasicStringQueriesCopyWithImpl<_BasicBasicStringQueries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BasicBasicStringQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BasicBasicStringQueries &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @override
  String toString() {
    return 'BasicBasicStringQueries(text: $text)';
  }
}

/// @nodoc
abstract mixin class _$BasicBasicStringQueriesCopyWith<$Res>
    implements $BasicBasicStringQueriesCopyWith<$Res> {
  factory _$BasicBasicStringQueriesCopyWith(_BasicBasicStringQueries value,
          $Res Function(_BasicBasicStringQueries) _then) =
      __$BasicBasicStringQueriesCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: BasicBasicStringQueries.textKey) String text});
}

/// @nodoc
class __$BasicBasicStringQueriesCopyWithImpl<$Res>
    implements _$BasicBasicStringQueriesCopyWith<$Res> {
  __$BasicBasicStringQueriesCopyWithImpl(this._self, this._then);

  final _BasicBasicStringQueries _self;
  final $Res Function(_BasicBasicStringQueries) _then;

  /// Create a copy of BasicBasicStringQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? text = null,
  }) {
    return _then(_BasicBasicStringQueries(
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
