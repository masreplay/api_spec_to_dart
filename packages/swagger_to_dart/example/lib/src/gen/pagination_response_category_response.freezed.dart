// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_response_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginationResponseCategoryResponse {

/// items
@JsonKey(name: PaginationResponseCategoryResponse.itemsKey) List<CategoryResponse> get items;/// total
@JsonKey(name: PaginationResponseCategoryResponse.totalKey) int get total;/// page
@JsonKey(name: PaginationResponseCategoryResponse.pageKey) int get page;/// perPage
@JsonKey(name: PaginationResponseCategoryResponse.perPageKey) int get perPage;/// totalPages
@JsonKey(name: PaginationResponseCategoryResponse.totalPagesKey) int get totalPages;
/// Create a copy of PaginationResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginationResponseCategoryResponseCopyWith<PaginationResponseCategoryResponse> get copyWith => _$PaginationResponseCategoryResponseCopyWithImpl<PaginationResponseCategoryResponse>(this as PaginationResponseCategoryResponse, _$identity);

  /// Serializes this PaginationResponseCategoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginationResponseCategoryResponse&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),total,page,perPage,totalPages);

@override
String toString() {
  return 'PaginationResponseCategoryResponse(items: $items, total: $total, page: $page, perPage: $perPage, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginationResponseCategoryResponseCopyWith<$Res>  {
  factory $PaginationResponseCategoryResponseCopyWith(PaginationResponseCategoryResponse value, $Res Function(PaginationResponseCategoryResponse) _then) = _$PaginationResponseCategoryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: PaginationResponseCategoryResponse.itemsKey) List<CategoryResponse> items,@JsonKey(name: PaginationResponseCategoryResponse.totalKey) int total,@JsonKey(name: PaginationResponseCategoryResponse.pageKey) int page,@JsonKey(name: PaginationResponseCategoryResponse.perPageKey) int perPage,@JsonKey(name: PaginationResponseCategoryResponse.totalPagesKey) int totalPages
});




}
/// @nodoc
class _$PaginationResponseCategoryResponseCopyWithImpl<$Res>
    implements $PaginationResponseCategoryResponseCopyWith<$Res> {
  _$PaginationResponseCategoryResponseCopyWithImpl(this._self, this._then);

  final PaginationResponseCategoryResponse _self;
  final $Res Function(PaginationResponseCategoryResponse) _then;

/// Create a copy of PaginationResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? total = null,Object? page = null,Object? perPage = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CategoryResponse>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc

@jsonSerializable
class _PaginationResponseCategoryResponse extends PaginationResponseCategoryResponse {
  const _PaginationResponseCategoryResponse({@JsonKey(name: PaginationResponseCategoryResponse.itemsKey) required final  List<CategoryResponse> items, @JsonKey(name: PaginationResponseCategoryResponse.totalKey) required this.total, @JsonKey(name: PaginationResponseCategoryResponse.pageKey) required this.page, @JsonKey(name: PaginationResponseCategoryResponse.perPageKey) required this.perPage, @JsonKey(name: PaginationResponseCategoryResponse.totalPagesKey) required this.totalPages}): _items = items,super._();
  factory _PaginationResponseCategoryResponse.fromJson(Map<String, dynamic> json) => _$PaginationResponseCategoryResponseFromJson(json);

/// items
 final  List<CategoryResponse> _items;
/// items
@override@JsonKey(name: PaginationResponseCategoryResponse.itemsKey) List<CategoryResponse> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// total
@override@JsonKey(name: PaginationResponseCategoryResponse.totalKey) final  int total;
/// page
@override@JsonKey(name: PaginationResponseCategoryResponse.pageKey) final  int page;
/// perPage
@override@JsonKey(name: PaginationResponseCategoryResponse.perPageKey) final  int perPage;
/// totalPages
@override@JsonKey(name: PaginationResponseCategoryResponse.totalPagesKey) final  int totalPages;

/// Create a copy of PaginationResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginationResponseCategoryResponseCopyWith<_PaginationResponseCategoryResponse> get copyWith => __$PaginationResponseCategoryResponseCopyWithImpl<_PaginationResponseCategoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginationResponseCategoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginationResponseCategoryResponse&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),total,page,perPage,totalPages);

@override
String toString() {
  return 'PaginationResponseCategoryResponse(items: $items, total: $total, page: $page, perPage: $perPage, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginationResponseCategoryResponseCopyWith<$Res> implements $PaginationResponseCategoryResponseCopyWith<$Res> {
  factory _$PaginationResponseCategoryResponseCopyWith(_PaginationResponseCategoryResponse value, $Res Function(_PaginationResponseCategoryResponse) _then) = __$PaginationResponseCategoryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: PaginationResponseCategoryResponse.itemsKey) List<CategoryResponse> items,@JsonKey(name: PaginationResponseCategoryResponse.totalKey) int total,@JsonKey(name: PaginationResponseCategoryResponse.pageKey) int page,@JsonKey(name: PaginationResponseCategoryResponse.perPageKey) int perPage,@JsonKey(name: PaginationResponseCategoryResponse.totalPagesKey) int totalPages
});




}
/// @nodoc
class __$PaginationResponseCategoryResponseCopyWithImpl<$Res>
    implements _$PaginationResponseCategoryResponseCopyWith<$Res> {
  __$PaginationResponseCategoryResponseCopyWithImpl(this._self, this._then);

  final _PaginationResponseCategoryResponse _self;
  final $Res Function(_PaginationResponseCategoryResponse) _then;

/// Create a copy of PaginationResponseCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? total = null,Object? page = null,Object? perPage = null,Object? totalPages = null,}) {
  return _then(_PaginationResponseCategoryResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CategoryResponse>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
