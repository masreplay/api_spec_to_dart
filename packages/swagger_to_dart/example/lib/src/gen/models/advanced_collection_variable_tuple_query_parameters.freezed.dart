// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_variable_tuple_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionVariableTupleQueryParameters {
  /// items
  @JsonKey(name: AdvancedCollectionVariableTupleQueryParameters.itemsKey)
  List<String> get items;

  /// Create a copy of AdvancedCollectionVariableTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedCollectionVariableTupleQueryParametersCopyWith<
          AdvancedCollectionVariableTupleQueryParameters>
      get copyWith =>
          _$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl<
                  AdvancedCollectionVariableTupleQueryParameters>(
              this as AdvancedCollectionVariableTupleQueryParameters,
              _$identity);

  /// Serializes this AdvancedCollectionVariableTupleQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedCollectionVariableTupleQueryParameters &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'AdvancedCollectionVariableTupleQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class $AdvancedCollectionVariableTupleQueryParametersCopyWith<
    $Res> {
  factory $AdvancedCollectionVariableTupleQueryParametersCopyWith(
          AdvancedCollectionVariableTupleQueryParameters value,
          $Res Function(AdvancedCollectionVariableTupleQueryParameters) _then) =
      _$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionVariableTupleQueryParameters.itemsKey)
      List<String> items});
}

/// @nodoc
class _$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl<$Res>
    implements $AdvancedCollectionVariableTupleQueryParametersCopyWith<$Res> {
  _$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl(
      this._self, this._then);

  final AdvancedCollectionVariableTupleQueryParameters _self;
  final $Res Function(AdvancedCollectionVariableTupleQueryParameters) _then;

  /// Create a copy of AdvancedCollectionVariableTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedCollectionVariableTupleQueryParameters
    extends AdvancedCollectionVariableTupleQueryParameters {
  const _AdvancedCollectionVariableTupleQueryParameters(
      {@JsonKey(name: AdvancedCollectionVariableTupleQueryParameters.itemsKey)
      required final List<String> items})
      : _items = items,
        super._();
  factory _AdvancedCollectionVariableTupleQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedCollectionVariableTupleQueryParametersFromJson(json);

  /// items
  final List<String> _items;

  /// items
  @override
  @JsonKey(name: AdvancedCollectionVariableTupleQueryParameters.itemsKey)
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of AdvancedCollectionVariableTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedCollectionVariableTupleQueryParametersCopyWith<
          _AdvancedCollectionVariableTupleQueryParameters>
      get copyWith =>
          __$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl<
                  _AdvancedCollectionVariableTupleQueryParameters>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedCollectionVariableTupleQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedCollectionVariableTupleQueryParameters &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'AdvancedCollectionVariableTupleQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedCollectionVariableTupleQueryParametersCopyWith<
        $Res>
    implements $AdvancedCollectionVariableTupleQueryParametersCopyWith<$Res> {
  factory _$AdvancedCollectionVariableTupleQueryParametersCopyWith(
          _AdvancedCollectionVariableTupleQueryParameters value,
          $Res Function(_AdvancedCollectionVariableTupleQueryParameters)
              _then) =
      __$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionVariableTupleQueryParameters.itemsKey)
      List<String> items});
}

/// @nodoc
class __$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedCollectionVariableTupleQueryParametersCopyWith<$Res> {
  __$AdvancedCollectionVariableTupleQueryParametersCopyWithImpl(
      this._self, this._then);

  final _AdvancedCollectionVariableTupleQueryParameters _self;
  final $Res Function(_AdvancedCollectionVariableTupleQueryParameters) _then;

  /// Create a copy of AdvancedCollectionVariableTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(_AdvancedCollectionVariableTupleQueryParameters(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}
