// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_union_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DataUnionResponse _$DataUnionResponseFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'fallback':
          return DataUnionResponseFallback.fromJson(
            json
          );
                case 'bar_chart':
          return DataUnionResponseBarChart.fromJson(
            json
          );
                case 'line_chart':
          return DataUnionResponseLineChart.fromJson(
            json
          );
                case 'pie_chart':
          return DataUnionResponsePieChart.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'DataUnionResponse',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$DataUnionResponse {



  /// Serializes this DataUnionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataUnionResponse);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataUnionResponse()';
}


}

/// @nodoc
class $DataUnionResponseCopyWith<$Res>  {
$DataUnionResponseCopyWith(DataUnionResponse _, $Res Function(DataUnionResponse) __);
}


/// @nodoc
@JsonSerializable()

class DataUnionResponseFallback implements DataUnionResponse {
  const DataUnionResponseFallback({final  String? $type}): $type = $type ?? 'fallback';
  factory DataUnionResponseFallback.fromJson(Map<String, dynamic> json) => _$DataUnionResponseFallbackFromJson(json);



@JsonKey(name: 'type')
final String $type;



@override
Map<String, dynamic> toJson() {
  return _$DataUnionResponseFallbackToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataUnionResponseFallback);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DataUnionResponse.fallback()';
}


}

/// @nodoc
class $DataUnionResponseFallbackCopyWith<$Res> implements $DataUnionResponseCopyWith<$Res> {
$DataUnionResponseFallbackCopyWith(DataUnionResponseFallback _, $Res Function(DataUnionResponseFallback) __);
}
/// @nodoc
class _$DataUnionResponseFallbackCopyWithImpl<$Res>
    implements $DataUnionResponseFallbackCopyWith<$Res> {
  _$DataUnionResponseFallbackCopyWithImpl(this._self, this._then);

  final DataUnionResponseFallback _self;
  final $Res Function(DataUnionResponseFallback) _then;




}

/// @nodoc
@JsonSerializable()

class DataUnionResponseBarChart implements DataUnionResponse {
  const DataUnionResponseBarChart(this.value, {final  String? $type}): $type = $type ?? 'bar_chart';
  factory DataUnionResponseBarChart.fromJson(Map<String, dynamic> json) => _$DataUnionResponseBarChartFromJson(json);

 final  FeedItemBarChartPublic value;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataUnionResponseBarChartCopyWith<DataUnionResponseBarChart> get copyWith => _$DataUnionResponseBarChartCopyWithImpl<DataUnionResponseBarChart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataUnionResponseBarChartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataUnionResponseBarChart&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DataUnionResponse.barChart(value: $value)';
}


}

/// @nodoc
abstract mixin class $DataUnionResponseBarChartCopyWith<$Res> implements $DataUnionResponseCopyWith<$Res> {
  factory $DataUnionResponseBarChartCopyWith(DataUnionResponseBarChart value, $Res Function(DataUnionResponseBarChart) _then) = _$DataUnionResponseBarChartCopyWithImpl;
@useResult
$Res call({
 FeedItemBarChartPublic value
});


$FeedItemBarChartPublicCopyWith<$Res> get value;

}
/// @nodoc
class _$DataUnionResponseBarChartCopyWithImpl<$Res>
    implements $DataUnionResponseBarChartCopyWith<$Res> {
  _$DataUnionResponseBarChartCopyWithImpl(this._self, this._then);

  final DataUnionResponseBarChart _self;
  final $Res Function(DataUnionResponseBarChart) _then;

/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(DataUnionResponseBarChart(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as FeedItemBarChartPublic,
  ));
}

/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedItemBarChartPublicCopyWith<$Res> get value {
  
  return $FeedItemBarChartPublicCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class DataUnionResponseLineChart implements DataUnionResponse {
  const DataUnionResponseLineChart(this.value, {final  String? $type}): $type = $type ?? 'line_chart';
  factory DataUnionResponseLineChart.fromJson(Map<String, dynamic> json) => _$DataUnionResponseLineChartFromJson(json);

 final  FeedItemLineChartPublic value;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataUnionResponseLineChartCopyWith<DataUnionResponseLineChart> get copyWith => _$DataUnionResponseLineChartCopyWithImpl<DataUnionResponseLineChart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataUnionResponseLineChartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataUnionResponseLineChart&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DataUnionResponse.lineChart(value: $value)';
}


}

/// @nodoc
abstract mixin class $DataUnionResponseLineChartCopyWith<$Res> implements $DataUnionResponseCopyWith<$Res> {
  factory $DataUnionResponseLineChartCopyWith(DataUnionResponseLineChart value, $Res Function(DataUnionResponseLineChart) _then) = _$DataUnionResponseLineChartCopyWithImpl;
@useResult
$Res call({
 FeedItemLineChartPublic value
});


$FeedItemLineChartPublicCopyWith<$Res> get value;

}
/// @nodoc
class _$DataUnionResponseLineChartCopyWithImpl<$Res>
    implements $DataUnionResponseLineChartCopyWith<$Res> {
  _$DataUnionResponseLineChartCopyWithImpl(this._self, this._then);

  final DataUnionResponseLineChart _self;
  final $Res Function(DataUnionResponseLineChart) _then;

/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(DataUnionResponseLineChart(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as FeedItemLineChartPublic,
  ));
}

/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedItemLineChartPublicCopyWith<$Res> get value {
  
  return $FeedItemLineChartPublicCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class DataUnionResponsePieChart implements DataUnionResponse {
  const DataUnionResponsePieChart(this.value, {final  String? $type}): $type = $type ?? 'pie_chart';
  factory DataUnionResponsePieChart.fromJson(Map<String, dynamic> json) => _$DataUnionResponsePieChartFromJson(json);

 final  FeedItemPieChartPublic value;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataUnionResponsePieChartCopyWith<DataUnionResponsePieChart> get copyWith => _$DataUnionResponsePieChartCopyWithImpl<DataUnionResponsePieChart>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataUnionResponsePieChartToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataUnionResponsePieChart&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'DataUnionResponse.pieChart(value: $value)';
}


}

/// @nodoc
abstract mixin class $DataUnionResponsePieChartCopyWith<$Res> implements $DataUnionResponseCopyWith<$Res> {
  factory $DataUnionResponsePieChartCopyWith(DataUnionResponsePieChart value, $Res Function(DataUnionResponsePieChart) _then) = _$DataUnionResponsePieChartCopyWithImpl;
@useResult
$Res call({
 FeedItemPieChartPublic value
});


$FeedItemPieChartPublicCopyWith<$Res> get value;

}
/// @nodoc
class _$DataUnionResponsePieChartCopyWithImpl<$Res>
    implements $DataUnionResponsePieChartCopyWith<$Res> {
  _$DataUnionResponsePieChartCopyWithImpl(this._self, this._then);

  final DataUnionResponsePieChart _self;
  final $Res Function(DataUnionResponsePieChart) _then;

/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(DataUnionResponsePieChart(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as FeedItemPieChartPublic,
  ));
}

/// Create a copy of DataUnionResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedItemPieChartPublicCopyWith<$Res> get value {
  
  return $FeedItemPieChartPublicCopyWith<$Res>(_self.value, (value) {
    return _then(_self.copyWith(value: value));
  });
}
}

// dart format on
