// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_list_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionListQueryParameters {
  /// items
  @JsonKey(name: AdvancedCollectionListQueryParameters.itemsKey)
  List<String> get items;

  /// Create a copy of AdvancedCollectionListQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedCollectionListQueryParametersCopyWith<
          AdvancedCollectionListQueryParameters>
      get copyWith => _$AdvancedCollectionListQueryParametersCopyWithImpl<
              AdvancedCollectionListQueryParameters>(
          this as AdvancedCollectionListQueryParameters, _$identity);

  /// Serializes this AdvancedCollectionListQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedCollectionListQueryParameters &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'AdvancedCollectionListQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class $AdvancedCollectionListQueryParametersCopyWith<$Res> {
  factory $AdvancedCollectionListQueryParametersCopyWith(
          AdvancedCollectionListQueryParameters value,
          $Res Function(AdvancedCollectionListQueryParameters) _then) =
      _$AdvancedCollectionListQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionListQueryParameters.itemsKey)
      List<String> items});
}

/// @nodoc
class _$AdvancedCollectionListQueryParametersCopyWithImpl<$Res>
    implements $AdvancedCollectionListQueryParametersCopyWith<$Res> {
  _$AdvancedCollectionListQueryParametersCopyWithImpl(this._self, this._then);

  final AdvancedCollectionListQueryParameters _self;
  final $Res Function(AdvancedCollectionListQueryParameters) _then;

  /// Create a copy of AdvancedCollectionListQueryParameters
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
class _AdvancedCollectionListQueryParameters
    extends AdvancedCollectionListQueryParameters {
  const _AdvancedCollectionListQueryParameters(
      {@JsonKey(name: AdvancedCollectionListQueryParameters.itemsKey)
      final List<String> items = const ['default']})
      : _items = items,
        super._();
  factory _AdvancedCollectionListQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$AdvancedCollectionListQueryParametersFromJson(json);

  /// items
  final List<String> _items;

  /// items
  @override
  @JsonKey(name: AdvancedCollectionListQueryParameters.itemsKey)
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of AdvancedCollectionListQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedCollectionListQueryParametersCopyWith<
          _AdvancedCollectionListQueryParameters>
      get copyWith => __$AdvancedCollectionListQueryParametersCopyWithImpl<
          _AdvancedCollectionListQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedCollectionListQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedCollectionListQueryParameters &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'AdvancedCollectionListQueryParameters(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedCollectionListQueryParametersCopyWith<$Res>
    implements $AdvancedCollectionListQueryParametersCopyWith<$Res> {
  factory _$AdvancedCollectionListQueryParametersCopyWith(
          _AdvancedCollectionListQueryParameters value,
          $Res Function(_AdvancedCollectionListQueryParameters) _then) =
      __$AdvancedCollectionListQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionListQueryParameters.itemsKey)
      List<String> items});
}

/// @nodoc
class __$AdvancedCollectionListQueryParametersCopyWithImpl<$Res>
    implements _$AdvancedCollectionListQueryParametersCopyWith<$Res> {
  __$AdvancedCollectionListQueryParametersCopyWithImpl(this._self, this._then);

  final _AdvancedCollectionListQueryParameters _self;
  final $Res Function(_AdvancedCollectionListQueryParameters) _then;

  /// Create a copy of AdvancedCollectionListQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(_AdvancedCollectionListQueryParameters(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}
