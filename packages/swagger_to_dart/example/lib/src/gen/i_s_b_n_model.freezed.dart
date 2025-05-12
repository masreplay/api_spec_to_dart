// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'i_s_b_n_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ISBNModel {

/// isbn
@JsonKey(name: ISBNModel.isbnKey) String get isbn;
/// Create a copy of ISBNModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ISBNModelCopyWith<ISBNModel> get copyWith => _$ISBNModelCopyWithImpl<ISBNModel>(this as ISBNModel, _$identity);

  /// Serializes this ISBNModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ISBNModel&&(identical(other.isbn, isbn) || other.isbn == isbn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isbn);

@override
String toString() {
  return 'ISBNModel(isbn: $isbn)';
}


}

/// @nodoc
abstract mixin class $ISBNModelCopyWith<$Res>  {
  factory $ISBNModelCopyWith(ISBNModel value, $Res Function(ISBNModel) _then) = _$ISBNModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: ISBNModel.isbnKey) String isbn
});




}
/// @nodoc
class _$ISBNModelCopyWithImpl<$Res>
    implements $ISBNModelCopyWith<$Res> {
  _$ISBNModelCopyWithImpl(this._self, this._then);

  final ISBNModel _self;
  final $Res Function(ISBNModel) _then;

/// Create a copy of ISBNModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isbn = null,}) {
  return _then(_self.copyWith(
isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ISBNModel extends ISBNModel {
  const _ISBNModel({@JsonKey(name: ISBNModel.isbnKey) required this.isbn}): super._();
  factory _ISBNModel.fromJson(Map<String, dynamic> json) => _$ISBNModelFromJson(json);

/// isbn
@override@JsonKey(name: ISBNModel.isbnKey) final  String isbn;

/// Create a copy of ISBNModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ISBNModelCopyWith<_ISBNModel> get copyWith => __$ISBNModelCopyWithImpl<_ISBNModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ISBNModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ISBNModel&&(identical(other.isbn, isbn) || other.isbn == isbn));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isbn);

@override
String toString() {
  return 'ISBNModel(isbn: $isbn)';
}


}

/// @nodoc
abstract mixin class _$ISBNModelCopyWith<$Res> implements $ISBNModelCopyWith<$Res> {
  factory _$ISBNModelCopyWith(_ISBNModel value, $Res Function(_ISBNModel) _then) = __$ISBNModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: ISBNModel.isbnKey) String isbn
});




}
/// @nodoc
class __$ISBNModelCopyWithImpl<$Res>
    implements _$ISBNModelCopyWith<$Res> {
  __$ISBNModelCopyWithImpl(this._self, this._then);

  final _ISBNModel _self;
  final $Res Function(_ISBNModel) _then;

/// Create a copy of ISBNModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isbn = null,}) {
  return _then(_ISBNModel(
isbn: null == isbn ? _self.isbn : isbn // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
