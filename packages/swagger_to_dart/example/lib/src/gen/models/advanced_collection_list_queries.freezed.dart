// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advanced_collection_list_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdvancedCollectionListQueries {
  /// items
  @JsonKey(name: AdvancedCollectionListQueries.itemsKey)
  List<String> get items;

  /// Create a copy of AdvancedCollectionListQueries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdvancedCollectionListQueriesCopyWith<AdvancedCollectionListQueries>
      get copyWith => _$AdvancedCollectionListQueriesCopyWithImpl<
              AdvancedCollectionListQueries>(
          this as AdvancedCollectionListQueries, _$identity);

  /// Serializes this AdvancedCollectionListQueries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdvancedCollectionListQueries &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'AdvancedCollectionListQueries(items: $items)';
  }
}

/// @nodoc
abstract mixin class $AdvancedCollectionListQueriesCopyWith<$Res> {
  factory $AdvancedCollectionListQueriesCopyWith(
          AdvancedCollectionListQueries value,
          $Res Function(AdvancedCollectionListQueries) _then) =
      _$AdvancedCollectionListQueriesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionListQueries.itemsKey)
      List<String> items});
}

/// @nodoc
class _$AdvancedCollectionListQueriesCopyWithImpl<$Res>
    implements $AdvancedCollectionListQueriesCopyWith<$Res> {
  _$AdvancedCollectionListQueriesCopyWithImpl(this._self, this._then);

  final AdvancedCollectionListQueries _self;
  final $Res Function(AdvancedCollectionListQueries) _then;

  /// Create a copy of AdvancedCollectionListQueries
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

@JsonSerializable(converters: convertors)
class _AdvancedCollectionListQueries extends AdvancedCollectionListQueries {
  const _AdvancedCollectionListQueries(
      {@JsonKey(name: AdvancedCollectionListQueries.itemsKey)
      final List<String> items = const ['default']})
      : _items = items,
        super._();
  factory _AdvancedCollectionListQueries.fromJson(Map<String, dynamic> json) =>
      _$AdvancedCollectionListQueriesFromJson(json);

  /// items
  final List<String> _items;

  /// items
  @override
  @JsonKey(name: AdvancedCollectionListQueries.itemsKey)
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// Create a copy of AdvancedCollectionListQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdvancedCollectionListQueriesCopyWith<_AdvancedCollectionListQueries>
      get copyWith => __$AdvancedCollectionListQueriesCopyWithImpl<
          _AdvancedCollectionListQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AdvancedCollectionListQueriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdvancedCollectionListQueries &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'AdvancedCollectionListQueries(items: $items)';
  }
}

/// @nodoc
abstract mixin class _$AdvancedCollectionListQueriesCopyWith<$Res>
    implements $AdvancedCollectionListQueriesCopyWith<$Res> {
  factory _$AdvancedCollectionListQueriesCopyWith(
          _AdvancedCollectionListQueries value,
          $Res Function(_AdvancedCollectionListQueries) _then) =
      __$AdvancedCollectionListQueriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: AdvancedCollectionListQueries.itemsKey)
      List<String> items});
}

/// @nodoc
class __$AdvancedCollectionListQueriesCopyWithImpl<$Res>
    implements _$AdvancedCollectionListQueriesCopyWith<$Res> {
  __$AdvancedCollectionListQueriesCopyWithImpl(this._self, this._then);

  final _AdvancedCollectionListQueries _self;
  final $Res Function(_AdvancedCollectionListQueries) _then;

  /// Create a copy of AdvancedCollectionListQueries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
  }) {
    return _then(_AdvancedCollectionListQueries(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
