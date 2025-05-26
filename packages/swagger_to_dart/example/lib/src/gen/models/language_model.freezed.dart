// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LanguageModel {
  /// alpha2
  @JsonKey(name: LanguageModel.alpha2Key)
  String? get alpha2;

  /// name
  @JsonKey(name: LanguageModel.nameKey)
  String? get name;

  /// iso6393
  @JsonKey(name: LanguageModel.iso6393Key)
  Iso6393Enum? get iso6393;

  /// iso6395
  @JsonKey(name: LanguageModel.iso6395Key)
  Iso6395Enum? get iso6395;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      _$LanguageModelCopyWithImpl<LanguageModel>(
        this as LanguageModel,
        _$identity,
      );

  /// Serializes this LanguageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LanguageModel &&
            (identical(other.alpha2, alpha2) || other.alpha2 == alpha2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iso6393, iso6393) || other.iso6393 == iso6393) &&
            (identical(other.iso6395, iso6395) || other.iso6395 == iso6395));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alpha2, name, iso6393, iso6395);

  @override
  String toString() {
    return 'LanguageModel(alpha2: $alpha2, name: $name, iso6393: $iso6393, iso6395: $iso6395)';
  }
}

/// @nodoc
abstract mixin class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
    LanguageModel value,
    $Res Function(LanguageModel) _then,
  ) = _$LanguageModelCopyWithImpl;
  @useResult
  $Res call({
    @JsonKey(name: LanguageModel.alpha2Key) String? alpha2,
    @JsonKey(name: LanguageModel.nameKey) String? name,
    @JsonKey(name: LanguageModel.iso6393Key) Iso6393Enum? iso6393,
    @JsonKey(name: LanguageModel.iso6395Key) Iso6395Enum? iso6395,
  });
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._self, this._then);

  final LanguageModel _self;
  final $Res Function(LanguageModel) _then;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alpha2 = freezed,
    Object? name = freezed,
    Object? iso6393 = freezed,
    Object? iso6395 = freezed,
  }) {
    return _then(
      _self.copyWith(
        alpha2:
            freezed == alpha2
                ? _self.alpha2
                : alpha2 // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _self.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        iso6393:
            freezed == iso6393
                ? _self.iso6393
                : iso6393 // ignore: cast_nullable_to_non_nullable
                    as Iso6393Enum?,
        iso6395:
            freezed == iso6395
                ? _self.iso6395
                : iso6395 // ignore: cast_nullable_to_non_nullable
                    as Iso6395Enum?,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _LanguageModel extends LanguageModel {
  const _LanguageModel({
    @JsonKey(name: LanguageModel.alpha2Key) required this.alpha2,
    @JsonKey(name: LanguageModel.nameKey) required this.name,
    @JsonKey(name: LanguageModel.iso6393Key) required this.iso6393,
    @JsonKey(name: LanguageModel.iso6395Key) required this.iso6395,
  }) : super._();
  factory _LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  /// alpha2
  @override
  @JsonKey(name: LanguageModel.alpha2Key)
  final String? alpha2;

  /// name
  @override
  @JsonKey(name: LanguageModel.nameKey)
  final String? name;

  /// iso6393
  @override
  @JsonKey(name: LanguageModel.iso6393Key)
  final Iso6393Enum? iso6393;

  /// iso6395
  @override
  @JsonKey(name: LanguageModel.iso6395Key)
  final Iso6395Enum? iso6395;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LanguageModelCopyWith<_LanguageModel> get copyWith =>
      __$LanguageModelCopyWithImpl<_LanguageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LanguageModelToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LanguageModel &&
            (identical(other.alpha2, alpha2) || other.alpha2 == alpha2) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iso6393, iso6393) || other.iso6393 == iso6393) &&
            (identical(other.iso6395, iso6395) || other.iso6395 == iso6395));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, alpha2, name, iso6393, iso6395);

  @override
  String toString() {
    return 'LanguageModel(alpha2: $alpha2, name: $name, iso6393: $iso6393, iso6395: $iso6395)';
  }
}

/// @nodoc
abstract mixin class _$LanguageModelCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$LanguageModelCopyWith(
    _LanguageModel value,
    $Res Function(_LanguageModel) _then,
  ) = __$LanguageModelCopyWithImpl;
  @override
  @useResult
  $Res call({
    @JsonKey(name: LanguageModel.alpha2Key) String? alpha2,
    @JsonKey(name: LanguageModel.nameKey) String? name,
    @JsonKey(name: LanguageModel.iso6393Key) Iso6393Enum? iso6393,
    @JsonKey(name: LanguageModel.iso6395Key) Iso6395Enum? iso6395,
  });
}

/// @nodoc
class __$LanguageModelCopyWithImpl<$Res>
    implements _$LanguageModelCopyWith<$Res> {
  __$LanguageModelCopyWithImpl(this._self, this._then);

  final _LanguageModel _self;
  final $Res Function(_LanguageModel) _then;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? alpha2 = freezed,
    Object? name = freezed,
    Object? iso6393 = freezed,
    Object? iso6395 = freezed,
  }) {
    return _then(
      _LanguageModel(
        alpha2:
            freezed == alpha2
                ? _self.alpha2
                : alpha2 // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _self.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        iso6393:
            freezed == iso6393
                ? _self.iso6393
                : iso6393 // ignore: cast_nullable_to_non_nullable
                    as Iso6393Enum?,
        iso6395:
            freezed == iso6395
                ? _self.iso6395
                : iso6395 // ignore: cast_nullable_to_non_nullable
                    as Iso6395Enum?,
      ),
    );
  }
}
