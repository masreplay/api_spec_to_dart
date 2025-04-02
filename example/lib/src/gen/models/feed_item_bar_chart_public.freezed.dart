// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_item_bar_chart_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedItemBarChartPublic {

/// type
@JsonKey(name: FeedItemBarChartPublic.type_Key) String get type_;/// title, Title of the bar chart
@JsonKey(name: FeedItemBarChartPublic.titleKey) String get title;/// data, Data points for the bar chart. Each value represents the height of a bar.
@JsonKey(name: FeedItemBarChartPublic.dataKey) List<double> get data;/// labels, Optional labels for each bar in the chart.
@JsonKey(name: FeedItemBarChartPublic.labelsKey) List<String> get labels;
/// Create a copy of FeedItemBarChartPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedItemBarChartPublicCopyWith<FeedItemBarChartPublic> get copyWith => _$FeedItemBarChartPublicCopyWithImpl<FeedItemBarChartPublic>(this as FeedItemBarChartPublic, _$identity);

  /// Serializes this FeedItemBarChartPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedItemBarChartPublic&&(identical(other.type_, type_) || other.type_ == type_)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.labels, labels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type_,title,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(labels));

@override
String toString() {
  return 'FeedItemBarChartPublic(type_: $type_, title: $title, data: $data, labels: $labels)';
}


}

/// @nodoc
abstract mixin class $FeedItemBarChartPublicCopyWith<$Res>  {
  factory $FeedItemBarChartPublicCopyWith(FeedItemBarChartPublic value, $Res Function(FeedItemBarChartPublic) _then) = _$FeedItemBarChartPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: FeedItemBarChartPublic.type_Key) String type_,@JsonKey(name: FeedItemBarChartPublic.titleKey) String title,@JsonKey(name: FeedItemBarChartPublic.dataKey) List<double> data,@JsonKey(name: FeedItemBarChartPublic.labelsKey) List<String> labels
});




}
/// @nodoc
class _$FeedItemBarChartPublicCopyWithImpl<$Res>
    implements $FeedItemBarChartPublicCopyWith<$Res> {
  _$FeedItemBarChartPublicCopyWithImpl(this._self, this._then);

  final FeedItemBarChartPublic _self;
  final $Res Function(FeedItemBarChartPublic) _then;

/// Create a copy of FeedItemBarChartPublic
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
class _FeedItemBarChartPublic extends FeedItemBarChartPublic {
  const _FeedItemBarChartPublic({@JsonKey(name: FeedItemBarChartPublic.type_Key) this.type_ = 'bar_chart', @JsonKey(name: FeedItemBarChartPublic.titleKey) this.title = 'Bar Chart', @JsonKey(name: FeedItemBarChartPublic.dataKey) required final  List<double> data, @JsonKey(name: FeedItemBarChartPublic.labelsKey) final  List<String> labels = const []}): _data = data,_labels = labels,super._();
  factory _FeedItemBarChartPublic.fromJson(Map<String, dynamic> json) => _$FeedItemBarChartPublicFromJson(json);

/// type
@override@JsonKey(name: FeedItemBarChartPublic.type_Key) final  String type_;
/// title, Title of the bar chart
@override@JsonKey(name: FeedItemBarChartPublic.titleKey) final  String title;
/// data, Data points for the bar chart. Each value represents the height of a bar.
 final  List<double> _data;
/// data, Data points for the bar chart. Each value represents the height of a bar.
@override@JsonKey(name: FeedItemBarChartPublic.dataKey) List<double> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

/// labels, Optional labels for each bar in the chart.
 final  List<String> _labels;
/// labels, Optional labels for each bar in the chart.
@override@JsonKey(name: FeedItemBarChartPublic.labelsKey) List<String> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}


/// Create a copy of FeedItemBarChartPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedItemBarChartPublicCopyWith<_FeedItemBarChartPublic> get copyWith => __$FeedItemBarChartPublicCopyWithImpl<_FeedItemBarChartPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedItemBarChartPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedItemBarChartPublic&&(identical(other.type_, type_) || other.type_ == type_)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._labels, _labels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type_,title,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_labels));

@override
String toString() {
  return 'FeedItemBarChartPublic(type_: $type_, title: $title, data: $data, labels: $labels)';
}


}

/// @nodoc
abstract mixin class _$FeedItemBarChartPublicCopyWith<$Res> implements $FeedItemBarChartPublicCopyWith<$Res> {
  factory _$FeedItemBarChartPublicCopyWith(_FeedItemBarChartPublic value, $Res Function(_FeedItemBarChartPublic) _then) = __$FeedItemBarChartPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: FeedItemBarChartPublic.type_Key) String type_,@JsonKey(name: FeedItemBarChartPublic.titleKey) String title,@JsonKey(name: FeedItemBarChartPublic.dataKey) List<double> data,@JsonKey(name: FeedItemBarChartPublic.labelsKey) List<String> labels
});




}
/// @nodoc
class __$FeedItemBarChartPublicCopyWithImpl<$Res>
    implements _$FeedItemBarChartPublicCopyWith<$Res> {
  __$FeedItemBarChartPublicCopyWithImpl(this._self, this._then);

  final _FeedItemBarChartPublic _self;
  final $Res Function(_FeedItemBarChartPublic) _then;

/// Create a copy of FeedItemBarChartPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type_ = null,Object? title = null,Object? data = null,Object? labels = null,}) {
  return _then(_FeedItemBarChartPublic(
type_: null == type_ ? _self.type_ : type_ // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<double>,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
