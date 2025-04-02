// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_item_line_chart_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedItemLineChartPublic {

/// type
@JsonKey(name: FeedItemLineChartPublic.type_Key) String get type_;/// title, Title of the line chart
@JsonKey(name: FeedItemLineChartPublic.titleKey) String get title;/// start_date, Start date for the line chart time series
@JsonKey(name: FeedItemLineChartPublic.startDateKey) DateTime get startDate;/// end_date, End date for the line chart time series
@JsonKey(name: FeedItemLineChartPublic.endDateKey) DateTime get endDate;/// data, Data points for the line chart. Each value represents a point on the line.
@JsonKey(name: FeedItemLineChartPublic.dataKey) List<double> get data;/// labels, Optional labels for x-axis data points.
@JsonKey(name: FeedItemLineChartPublic.labelsKey) List<String> get labels;
/// Create a copy of FeedItemLineChartPublic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedItemLineChartPublicCopyWith<FeedItemLineChartPublic> get copyWith => _$FeedItemLineChartPublicCopyWithImpl<FeedItemLineChartPublic>(this as FeedItemLineChartPublic, _$identity);

  /// Serializes this FeedItemLineChartPublic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedItemLineChartPublic&&(identical(other.type_, type_) || other.type_ == type_)&&(identical(other.title, title) || other.title == title)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other.data, data)&&const DeepCollectionEquality().equals(other.labels, labels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type_,title,startDate,endDate,const DeepCollectionEquality().hash(data),const DeepCollectionEquality().hash(labels));

@override
String toString() {
  return 'FeedItemLineChartPublic(type_: $type_, title: $title, startDate: $startDate, endDate: $endDate, data: $data, labels: $labels)';
}


}

/// @nodoc
abstract mixin class $FeedItemLineChartPublicCopyWith<$Res>  {
  factory $FeedItemLineChartPublicCopyWith(FeedItemLineChartPublic value, $Res Function(FeedItemLineChartPublic) _then) = _$FeedItemLineChartPublicCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: FeedItemLineChartPublic.type_Key) String type_,@JsonKey(name: FeedItemLineChartPublic.titleKey) String title,@JsonKey(name: FeedItemLineChartPublic.startDateKey) DateTime startDate,@JsonKey(name: FeedItemLineChartPublic.endDateKey) DateTime endDate,@JsonKey(name: FeedItemLineChartPublic.dataKey) List<double> data,@JsonKey(name: FeedItemLineChartPublic.labelsKey) List<String> labels
});




}
/// @nodoc
class _$FeedItemLineChartPublicCopyWithImpl<$Res>
    implements $FeedItemLineChartPublicCopyWith<$Res> {
  _$FeedItemLineChartPublicCopyWithImpl(this._self, this._then);

  final FeedItemLineChartPublic _self;
  final $Res Function(FeedItemLineChartPublic) _then;

/// Create a copy of FeedItemLineChartPublic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type_ = null,Object? title = null,Object? startDate = null,Object? endDate = null,Object? data = null,Object? labels = null,}) {
  return _then(_self.copyWith(
type_: null == type_ ? _self.type_ : type_ // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<double>,labels: null == labels ? _self.labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _FeedItemLineChartPublic extends FeedItemLineChartPublic {
  const _FeedItemLineChartPublic({@JsonKey(name: FeedItemLineChartPublic.type_Key) this.type_ = 'line_chart', @JsonKey(name: FeedItemLineChartPublic.titleKey) this.title = 'Line Chart', @JsonKey(name: FeedItemLineChartPublic.startDateKey) required this.startDate, @JsonKey(name: FeedItemLineChartPublic.endDateKey) required this.endDate, @JsonKey(name: FeedItemLineChartPublic.dataKey) required final  List<double> data, @JsonKey(name: FeedItemLineChartPublic.labelsKey) final  List<String> labels = const []}): _data = data,_labels = labels,super._();
  factory _FeedItemLineChartPublic.fromJson(Map<String, dynamic> json) => _$FeedItemLineChartPublicFromJson(json);

/// type
@override@JsonKey(name: FeedItemLineChartPublic.type_Key) final  String type_;
/// title, Title of the line chart
@override@JsonKey(name: FeedItemLineChartPublic.titleKey) final  String title;
/// start_date, Start date for the line chart time series
@override@JsonKey(name: FeedItemLineChartPublic.startDateKey) final  DateTime startDate;
/// end_date, End date for the line chart time series
@override@JsonKey(name: FeedItemLineChartPublic.endDateKey) final  DateTime endDate;
/// data, Data points for the line chart. Each value represents a point on the line.
 final  List<double> _data;
/// data, Data points for the line chart. Each value represents a point on the line.
@override@JsonKey(name: FeedItemLineChartPublic.dataKey) List<double> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

/// labels, Optional labels for x-axis data points.
 final  List<String> _labels;
/// labels, Optional labels for x-axis data points.
@override@JsonKey(name: FeedItemLineChartPublic.labelsKey) List<String> get labels {
  if (_labels is EqualUnmodifiableListView) return _labels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_labels);
}


/// Create a copy of FeedItemLineChartPublic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedItemLineChartPublicCopyWith<_FeedItemLineChartPublic> get copyWith => __$FeedItemLineChartPublicCopyWithImpl<_FeedItemLineChartPublic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedItemLineChartPublicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedItemLineChartPublic&&(identical(other.type_, type_) || other.type_ == type_)&&(identical(other.title, title) || other.title == title)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&const DeepCollectionEquality().equals(other._data, _data)&&const DeepCollectionEquality().equals(other._labels, _labels));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type_,title,startDate,endDate,const DeepCollectionEquality().hash(_data),const DeepCollectionEquality().hash(_labels));

@override
String toString() {
  return 'FeedItemLineChartPublic(type_: $type_, title: $title, startDate: $startDate, endDate: $endDate, data: $data, labels: $labels)';
}


}

/// @nodoc
abstract mixin class _$FeedItemLineChartPublicCopyWith<$Res> implements $FeedItemLineChartPublicCopyWith<$Res> {
  factory _$FeedItemLineChartPublicCopyWith(_FeedItemLineChartPublic value, $Res Function(_FeedItemLineChartPublic) _then) = __$FeedItemLineChartPublicCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: FeedItemLineChartPublic.type_Key) String type_,@JsonKey(name: FeedItemLineChartPublic.titleKey) String title,@JsonKey(name: FeedItemLineChartPublic.startDateKey) DateTime startDate,@JsonKey(name: FeedItemLineChartPublic.endDateKey) DateTime endDate,@JsonKey(name: FeedItemLineChartPublic.dataKey) List<double> data,@JsonKey(name: FeedItemLineChartPublic.labelsKey) List<String> labels
});




}
/// @nodoc
class __$FeedItemLineChartPublicCopyWithImpl<$Res>
    implements _$FeedItemLineChartPublicCopyWith<$Res> {
  __$FeedItemLineChartPublicCopyWithImpl(this._self, this._then);

  final _FeedItemLineChartPublic _self;
  final $Res Function(_FeedItemLineChartPublic) _then;

/// Create a copy of FeedItemLineChartPublic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type_ = null,Object? title = null,Object? startDate = null,Object? endDate = null,Object? data = null,Object? labels = null,}) {
  return _then(_FeedItemLineChartPublic(
type_: null == type_ ? _self.type_ : type_ // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<double>,labels: null == labels ? _self._labels : labels // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
