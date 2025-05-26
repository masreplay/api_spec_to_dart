// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_tuple_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionTupleQueryParameters {
  /// items
  @JsonKey(name: AdvancedCollectionTupleQueryParameters.itemsKey)
  List<dynamic> get items;

  /// Create a copy of AdvancedCollectionTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedCollectionTupleQueryParametersCopyWith<
    AdvancedCollectionTupleQueryParameters
  >
  get copyWith => _$AdvancedCollectionTupleQueryParametersCopyWithImpl<
    AdvancedCollectionTupleQueryParameters
  >(this as AdvancedCollectionTupleQueryParameters, _$identity);

  /// Serializes this AdvancedCollectionTupleQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedCollectionTupleQueryParameters &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'AdvancedCollectionTupleQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class $AdvancedCollectionTupleQueryParametersCopyWith<$Res> {
  factory $AdvancedCollectionTupleQueryParametersCopyWith(
    AdvancedCollectionTupleQueryParameters value,
    $Res Function(AdvancedCollectionTupleQueryParameters) _then,
  ) = _$AdvancedCollectionTupleQueryParametersCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: AdvancedCollectionTupleQueryParameters.itemsKey)
    List<dynamic> items,
  });
}

/// @nodoc
class _$AdvancedCollectionTupleQueryParametersCopyWithImpl<$Res>
    implements $AdvancedCollectionTupleQueryParametersCopyWith<$Res> {
  _$AdvancedCollectionTupleQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedCollectionTupleQueryParameters _self;
  final $Res Function(AdvancedCollectionTupleQueryParameters) _then;

  /// Create a copy of AdvancedCollectionTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _self.copyWith(
        items:
            null == items
                ? _self.items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _AdvancedCollectionTupleQueryParameters
    extends AdvancedCollectionTupleQueryParameters {
  const _AdvancedCollectionTupleQueryParameters({
    @JsonKey(name: AdvancedCollectionTupleQueryParameters.itemsKey)
    required final List<dynamic> items,
  }) : _items = items,
       super._();
  factory _AdvancedCollectionTupleQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCollectionTupleQueryParametersFromJson(json);

  /// items
  final List<dynamic> _items;

  /// items
  @override
  @JsonKey(name: AdvancedCollectionTupleQueryParameters.itemsKey)
  List<dynamic> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of AdvancedCollectionTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedCollectionTupleQueryParametersCopyWith<
    _AdvancedCollectionTupleQueryParameters
  >
  get copyWith => __$AdvancedCollectionTupleQueryParametersCopyWithImpl<
    _AdvancedCollectionTupleQueryParameters
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedCollectionTupleQueryParametersToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedCollectionTupleQueryParameters &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'AdvancedCollectionTupleQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedCollectionTupleQueryParametersCopyWith<$Res>
    implements $AdvancedCollectionTupleQueryParametersCopyWith<$Res> {
  factory _$AdvancedCollectionTupleQueryParametersCopyWith(
    _AdvancedCollectionTupleQueryParameters value,
    $Res Function(_AdvancedCollectionTupleQueryParameters) _then,
  ) = __$AdvancedCollectionTupleQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: AdvancedCollectionTupleQueryParameters.itemsKey)
    List<dynamic> items,
  });
}

/// @nodoc
class __$AdvancedCollectionTupleQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedCollectionTupleQueryParametersCopyWith<$Res> {
  __$AdvancedCollectionTupleQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedCollectionTupleQueryParameters _self;
  final $Res Function(_AdvancedCollectionTupleQueryParameters) _then;

  /// Create a copy of AdvancedCollectionTupleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? items = null}) {
    return _then(
      _AdvancedCollectionTupleQueryParameters(
        items:
            null == items
                ? _self._items
                : items // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
      ),
    );
  }
}
