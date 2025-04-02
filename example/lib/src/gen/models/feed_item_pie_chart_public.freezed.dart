// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_item_pie_chart_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedItemPieChartPublic {

/// type
@JsonKey(name: FeedItemPieChartPublic.type_Key) String get type_;/// title, Title of the pie chart
@JsonKey(name: FeedItemPieChartPublic.titleKey) String get title;/// data, Data points for the pie chart. Each value represents a slice of the pie.
@JsonKey(name: FeedItemPieChartPublic.dataKey) List<double> get data;/// labels, Optional labels for each slice of the pie chart.
@JsonKey(name: FeedItemPieChartPublic.labelsKey) List<String> get labels;
/// Create a copy of FeedItemPieChartPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedItemPieChartPublicCopyWith<FeedItemPieChartPublic> get copyWith => _$FeedItemPieChartPublicCopyWithImpl<FeedItemPieChartPublic>(this as FeedItemPieChartPublic, _$identity);

  /// Serializes this FeedItemPieChartPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedItemPieChartPublic&&(identical(other.type_, type_) || other.type_ == type_)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.labels, labels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type_,title,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(labels));

@override
String toString() {
  return 'FeedItemPieChartPublic(type_: $type_, title: $title, data: $data, labels: $labels)';
}


}

/// @nodoc
abstract mixin class $FeedItemPieChartPublicCopyWith<$Res>  {
  factory $FeedItemPieChartPublicCopyWith(FeedItemPieChartPublic value, $Res Function(FeedItemPieChartPublic) _then) = _$FeedItemPieChartPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: FeedItemPieChartPublic.type_Key) String type_,@JsonKey(name: FeedItemPieChartPublic.titleKey) String title,@JsonKey(name: FeedItemPieChartPublic.dataKey) List<double> data,@JsonKey(name: FeedItemPieChartPublic.labelsKey) List<String> labels
});




}
/// @nodoc
class _$FeedItemPieChartPublicCopyWithImpl<$Res>
    implements $FeedItemPieChartPublicCopyWith<$Res> {
  _$FeedItemPieChartPublicCopyWithImpl(this._self, this._then);

  final FeedItemPieChartPublic _self;
  final $Res Function(FeedItemPieChartPublic) _then;

/// Create a copy of FeedItemPieChartPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type_ = null,Object? title = null,Object? data = null,Object? labels = null,}) {
  return _then(_self.copyWith(
type_: null == type_ ? _self.type_ : type_ // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<double>,labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _FeedItemPieChartPublic extends FeedItemPieChartPublic {
  const _FeedItemPieChartPublic({@JsonKey(name: FeedItemPieChartPublic.type_Key) this.type_ = 'pie_chart', @JsonKey(name: FeedItemPieChartPublic.titleKey) this.title = 'Pie Chart', @JsonKey(name: FeedItemPieChartPublic.dataKey) required final  List<double> data, @JsonKey(name: FeedItemPieChartPublic.labelsKey) final  List<String> labels = const []}): _data = data,_labels = labels,super._();
  factory _FeedItemPieChartPublic.fromJson(Map<String, dynamic> json) => _$FeedItemPieChartPublicFromJson(json);

/// type
@override@JsonKey(name: FeedItemPieChartPublic.type_Key) final  String type_;
/// title, Title of the pie chart
@override@JsonKey(name: FeedItemPieChartPublic.titleKey) final  String title;
/// data, Data points for the pie chart. Each value represents a slice of the pie.
 final  List<double> _data;
/// data, Data points for the pie chart. Each value represents a slice of the pie.
@override@JsonKey(name: FeedItemPieChartPublic.dataKey) List<double> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

/// labels, Optional labels for each slice of the pie chart.
 final  List<String> _labels;
/// labels, Optional labels for each slice of the pie chart.
@override@JsonKey(name: FeedItemPieChartPublic.labelsKey) List<String> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}


/// Create a copy of FeedItemPieChartPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedItemPieChartPublicCopyWith<_FeedItemPieChartPublic> get copyWith => __$FeedItemPieChartPublicCopyWithImpl<_FeedItemPieChartPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedItemPieChartPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedItemPieChartPublic&&(identical(other.type_, type_) || other.type_ == type_)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._labels, _labels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type_,title,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_labels));

@override
String toString() {
  return 'FeedItemPieChartPublic(type_: $type_, title: $title, data: $data, labels: $labels)';
}


}

/// @nodoc
abstract mixin class _$FeedItemPieChartPublicCopyWith<$Res> implements $FeedItemPieChartPublicCopyWith<$Res> {
  factory _$FeedItemPieChartPublicCopyWith(_FeedItemPieChartPublic value, $Res Function(_FeedItemPieChartPublic) _then) = __$FeedItemPieChartPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: FeedItemPieChartPublic.type_Key) String type_,@JsonKey(name: FeedItemPieChartPublic.titleKey) String title,@JsonKey(name: FeedItemPieChartPublic.dataKey) List<double> data,@JsonKey(name: FeedItemPieChartPublic.labelsKey) List<String> labels
});




}
/// @nodoc
class __$FeedItemPieChartPublicCopyWithImpl<$Res>
    implements _$FeedItemPieChartPublicCopyWith<$Res> {
  __$FeedItemPieChartPublicCopyWithImpl(this._self, this._then);

  final _FeedItemPieChartPublic _self;
  final $Res Function(_FeedItemPieChartPublic) _then;

/// Create a copy of FeedItemPieChartPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type_ = null,Object? title = null,Object? data = null,Object? labels = null,}) {
  return _then(_FeedItemPieChartPublic(
type_: null == type_ ? _self.type_ : type_ // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<double>,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
