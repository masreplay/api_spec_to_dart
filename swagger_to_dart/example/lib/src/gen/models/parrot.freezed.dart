// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parrot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Parrot {

/// name, The animal's name
@JsonKey(name: Parrot.nameKey) String get name;/// type
@JsonKey(name: Parrot.typeKey) String get type;/// phrases, Phrases the parrot can say
@JsonKey(name: Parrot.phrasesKey) List<String> get phrases;
/// Create a copy of Parrot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParrotCopyWith<Parrot> get copyWith => _$ParrotCopyWithImpl<Parrot>(this as Parrot, _$identity);

  /// Serializes this Parrot to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Parrot&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.phrases, phrases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,const DeepCollectionEquality().hash(phrases));

@override
String toString() {
  return 'Parrot(name: $name, type: $type, phrases: $phrases)';
}


}

/// @nodoc
abstract mixin class $ParrotCopyWith<$Res>  {
  factory $ParrotCopyWith(Parrot value, $Res Function(Parrot) _then) = _$ParrotCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: Parrot.nameKey) String name,@JsonKey(name: Parrot.typeKey) String type,@JsonKey(name: Parrot.phrasesKey) List<String> phrases
});




}
/// @nodoc
class _$ParrotCopyWithImpl<$Res>
    implements $ParrotCopyWith<$Res> {
  _$ParrotCopyWithImpl(this._self, this._then);

  final Parrot _self;
  final $Res Function(Parrot) _then;

/// Create a copy of Parrot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? type = null,Object? phrases = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,phrases: null == phrases ? _self.phrases : phrases // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// @nodoc

@JsonSerializable(converters: convertors)
class _Parrot extends Parrot {
  const _Parrot({@JsonKey(name: Parrot.nameKey) required this.name, @JsonKey(name: Parrot.typeKey) this.type = 'parrot', @JsonKey(name: Parrot.phrasesKey) required final  List<String> phrases}): _phrases = phrases,super._();
  factory _Parrot.fromJson(Map<String, dynamic> json) => _$ParrotFromJson(json);

/// name, The animal's name
@override@JsonKey(name: Parrot.nameKey) final  String name;
/// type
@override@JsonKey(name: Parrot.typeKey) final  String type;
/// phrases, Phrases the parrot can say
 final  List<String> _phrases;
/// phrases, Phrases the parrot can say
@override@JsonKey(name: Parrot.phrasesKey) List<String> get phrases {
  if (_phrases is EqualUnmodifiableListView) return _phrases;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_phrases);
}


/// Create a copy of Parrot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParrotCopyWith<_Parrot> get copyWith => __$ParrotCopyWithImpl<_Parrot>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParrotToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Parrot&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._phrases, _phrases));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,type,const DeepCollectionEquality().hash(_phrases));

@override
String toString() {
  return 'Parrot(name: $name, type: $type, phrases: $phrases)';
}


}

/// @nodoc
abstract mixin class _$ParrotCopyWith<$Res> implements $ParrotCopyWith<$Res> {
  factory _$ParrotCopyWith(_Parrot value, $Res Function(_Parrot) _then) = __$ParrotCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: Parrot.nameKey) String name,@JsonKey(name: Parrot.typeKey) String type,@JsonKey(name: Parrot.phrasesKey) List<String> phrases
});




}
/// @nodoc
class __$ParrotCopyWithImpl<$Res>
    implements _$ParrotCopyWith<$Res> {
  __$ParrotCopyWithImpl(this._self, this._then);

  final _Parrot _self;
  final $Res Function(_Parrot) _then;

/// Create a copy of Parrot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? type = null,Object? phrases = null,}) {
  return _then(_Parrot(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,phrases: null == phrases ? _self._phrases : phrases // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
