// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response_item_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationResponseItemResponse {
  /// items
  @JsonKey(name: PaginationResponseItemResponse.itemsKey)
  List<AppRouterGenericRouterItemResponse> get items;

  /// total
  @JsonKey(name: PaginationResponseItemResponse.totalKey)
  int get total;

  /// page
  @JsonKey(name: PaginationResponseItemResponse.pageKey)
  int get page;

  /// perPage
  @JsonKey(name: PaginationResponseItemResponse.perPageKey)
  int get perPage;

  /// totalPages
  @JsonKey(name: PaginationResponseItemResponse.totalPagesKey)
  int get totalPages;

  /// Create a copy of PaginationResponseItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaginationResponseItemResponseCopyWith<PaginationResponseItemResponse>
      get copyWith => _$PaginationResponseItemResponseCopyWithImpl<
              PaginationResponseItemResponse>(
          this as PaginationResponseItemResponse, _$identity);

  /// Serializes this PaginationResponseItemResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaginationResponseItemResponse &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      total,
      page,
      perPage,
      totalPages);

  @override
  String toString() {
    return 'PaginationResponseItemResponse(items: $items, total: $total, page: $page, perPage: $perPage, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class $PaginationResponseItemResponseCopyWith<$Res> {
  factory $PaginationResponseItemResponseCopyWith(
          PaginationResponseItemResponse value,
          $Res Function(PaginationResponseItemResponse) _then) =
      _$PaginationResponseItemResponseCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: PaginationResponseItemResponse.itemsKey)
      List<AppRouterGenericRouterItemResponse> items,
      @JsonKey(name: PaginationResponseItemResponse.totalKey) int total,
      @JsonKey(name: PaginationResponseItemResponse.pageKey) int page,
      @JsonKey(name: PaginationResponseItemResponse.perPageKey) int perPage,
      @JsonKey(name: PaginationResponseItemResponse.totalPagesKey)
      int totalPages});
}

/// @nodoc
class _$PaginationResponseItemResponseCopyWithImpl<$Res>
    implements $PaginationResponseItemResponseCopyWith<$Res> {
  _$PaginationResponseItemResponseCopyWithImpl(this._self, this._then);

  final PaginationResponseItemResponse _self;
  final $Res Function(PaginationResponseItemResponse) _then;

  /// Create a copy of PaginationResponseItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AppRouterGenericRouterItemResponse>,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _PaginationResponseItemResponse extends PaginationResponseItemResponse {
  const _PaginationResponseItemResponse(
      {@JsonKey(name: PaginationResponseItemResponse.itemsKey)
      required final List<AppRouterGenericRouterItemResponse> items,
      @JsonKey(name: PaginationResponseItemResponse.totalKey)
      required this.total,
      @JsonKey(name: PaginationResponseItemResponse.pageKey) required this.page,
      @JsonKey(name: PaginationResponseItemResponse.perPageKey)
      required this.perPage,
      @JsonKey(name: PaginationResponseItemResponse.totalPagesKey)
      required this.totalPages})
      : _items = items,
        super._();
  factory _PaginationResponseItemResponse.fromJson(Map<String, dynamic> json) =>
      _$PaginationResponseItemResponseFromJson(json);

  /// items
  final List<AppRouterGenericRouterItemResponse> _items;

  /// items
  @override
  @JsonKey(name: PaginationResponseItemResponse.itemsKey)
  List<AppRouterGenericRouterItemResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  /// total
  @override
  @JsonKey(name: PaginationResponseItemResponse.totalKey)
  final int total;

  /// page
  @override
  @JsonKey(name: PaginationResponseItemResponse.pageKey)
  final int page;

  /// perPage
  @override
  @JsonKey(name: PaginationResponseItemResponse.perPageKey)
  final int perPage;

  /// totalPages
  @override
  @JsonKey(name: PaginationResponseItemResponse.totalPagesKey)
  final int totalPages;

  /// Create a copy of PaginationResponseItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaginationResponseItemResponseCopyWith<_PaginationResponseItemResponse>
      get copyWith => __$PaginationResponseItemResponseCopyWithImpl<
          _PaginationResponseItemResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PaginationResponseItemResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationResponseItemResponse &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      total,
      page,
      perPage,
      totalPages);

  @override
  String toString() {
    return 'PaginationResponseItemResponse(items: $items, total: $total, page: $page, perPage: $perPage, totalPages: $totalPages)';
  }
}

/// @nodoc
abstract mixin class _$PaginationResponseItemResponseCopyWith<$Res>
    implements $PaginationResponseItemResponseCopyWith<$Res> {
  factory _$PaginationResponseItemResponseCopyWith(
          _PaginationResponseItemResponse value,
          $Res Function(_PaginationResponseItemResponse) _then) =
      __$PaginationResponseItemResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: PaginationResponseItemResponse.itemsKey)
      List<AppRouterGenericRouterItemResponse> items,
      @JsonKey(name: PaginationResponseItemResponse.totalKey) int total,
      @JsonKey(name: PaginationResponseItemResponse.pageKey) int page,
      @JsonKey(name: PaginationResponseItemResponse.perPageKey) int perPage,
      @JsonKey(name: PaginationResponseItemResponse.totalPagesKey)
      int totalPages});
}

/// @nodoc
class __$PaginationResponseItemResponseCopyWithImpl<$Res>
    implements _$PaginationResponseItemResponseCopyWith<$Res> {
  __$PaginationResponseItemResponseCopyWithImpl(this._self, this._then);

  final _PaginationResponseItemResponse _self;
  final $Res Function(_PaginationResponseItemResponse) _then;

  /// Create a copy of PaginationResponseItemResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? perPage = null,
    Object? totalPages = null,
  }) {
    return _then(_PaginationResponseItemResponse(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AppRouterGenericRouterItemResponse>,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      perPage: null == perPage
          ? _self.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _self.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}
