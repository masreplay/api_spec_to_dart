// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models_response_multiple_query_parameters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ModelsResponseMultipleQueryParameters {
  /// isUser
  @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
  bool get isUser;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ModelsResponseMultipleQueryParametersCopyWith<
          ModelsResponseMultipleQueryParameters>
      get copyWith => _$ModelsResponseMultipleQueryParametersCopyWithImpl<
              ModelsResponseMultipleQueryParameters>(
          this as ModelsResponseMultipleQueryParameters, _$identity);

  /// Serializes this ModelsResponseMultipleQueryParameters to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ModelsResponseMultipleQueryParameters &&
            (identical(other.isUser, isUser) || other.isUser == isUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUser);

  @override
  String toString() {
    return 'ModelsResponseMultipleQueryParameters(isUser: $isUser)';
  }
}

/// @nodoc
abstract mixin class $ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  factory $ModelsResponseMultipleQueryParametersCopyWith(
          ModelsResponseMultipleQueryParameters value,
          $Res Function(ModelsResponseMultipleQueryParameters) _then) =
      _$ModelsResponseMultipleQueryParametersCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
      bool isUser});
}

/// @nodoc
class _$ModelsResponseMultipleQueryParametersCopyWithImpl<$Res>
    implements $ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  _$ModelsResponseMultipleQueryParametersCopyWithImpl(this._self, this._then);

  final ModelsResponseMultipleQueryParameters _self;
  final $Res Function(ModelsResponseMultipleQueryParameters) _then;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUser = null,
  }) {
    return _then(_self.copyWith(
      isUser: null == isUser
          ? _self.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@jsonSerializable
class _ModelsResponseMultipleQueryParameters
    extends ModelsResponseMultipleQueryParameters {
  const _ModelsResponseMultipleQueryParameters(
      {@JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
      this.isUser = true})
      : super._();
  factory _ModelsResponseMultipleQueryParameters.fromJson(
          Map<String, dynamic> json) =>
      _$ModelsResponseMultipleQueryParametersFromJson(json);

  /// isUser
  @override
  @JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
  final bool isUser;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ModelsResponseMultipleQueryParametersCopyWith<
          _ModelsResponseMultipleQueryParameters>
      get copyWith => __$ModelsResponseMultipleQueryParametersCopyWithImpl<
          _ModelsResponseMultipleQueryParameters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ModelsResponseMultipleQueryParametersToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ModelsResponseMultipleQueryParameters &&
            (identical(other.isUser, isUser) || other.isUser == isUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isUser);

  @override
  String toString() {
    return 'ModelsResponseMultipleQueryParameters(isUser: $isUser)';
  }
}

/// @nodoc
abstract mixin class _$ModelsResponseMultipleQueryParametersCopyWith<$Res>
    implements $ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  factory _$ModelsResponseMultipleQueryParametersCopyWith(
          _ModelsResponseMultipleQueryParameters value,
          $Res Function(_ModelsResponseMultipleQueryParameters) _then) =
      __$ModelsResponseMultipleQueryParametersCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: ModelsResponseMultipleQueryParameters.isUserKey)
      bool isUser});
}

/// @nodoc
class __$ModelsResponseMultipleQueryParametersCopyWithImpl<$Res>
    implements _$ModelsResponseMultipleQueryParametersCopyWith<$Res> {
  __$ModelsResponseMultipleQueryParametersCopyWithImpl(this._self, this._then);

  final _ModelsResponseMultipleQueryParameters _self;
  final $Res Function(_ModelsResponseMultipleQueryParameters) _then;

  /// Create a copy of ModelsResponseMultipleQueryParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isUser = null,
  }) {
    return _then(_ModelsResponseMultipleQueryParameters(
      isUser: null == isUser
          ? _self.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}
