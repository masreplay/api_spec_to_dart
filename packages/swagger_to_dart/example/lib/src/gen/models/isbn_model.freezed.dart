// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'isbn_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
mixin _$IsbnModel {
  /// isbn
  @JsonKey(name: IsbnModel.isbnKey)
  String get isbn;

  /// Create a copy of IsbnModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IsbnModelCopyWith<IsbnModel> get copyWith =>
      _$IsbnModelCopyWithImpl<IsbnModel>(this as IsbnModel, _$identity);

  /// Serializes this IsbnModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IsbnModel &&
            (identical(other.isbn, isbn) || other.isbn == isbn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isbn);

  @override
  String toString() {
    return 'IsbnModel(isbn: $isbn)';
  }
}

/// @nodoc
abstract mixin class $IsbnModelCopyWith<$Res> {
  factory $IsbnModelCopyWith(IsbnModel value, $Res Function(IsbnModel) _then) =
      _$IsbnModelCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: IsbnModel.isbnKey) String isbn});
}

/// @nodoc
class _$IsbnModelCopyWithImpl<$Res> implements $IsbnModelCopyWith<$Res> {
  _$IsbnModelCopyWithImpl(this._self, this._then);

  final IsbnModel _self;
  final $Res Function(IsbnModel) _then;

  /// Create a copy of IsbnModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isbn = null}) {
    return _then(
      _self.copyWith(
        isbn:
            null == isbn
                ? _self.isbn
                : isbn // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

@jsonSerializable
class _IsbnModel extends IsbnModel {
  const _IsbnModel({@JsonKey(name: IsbnModel.isbnKey) required this.isbn})
    : super._();
  factory _IsbnModel.fromJson(Map<String, dynamic> json) =>
      _$IsbnModelFromJson(json);

  /// isbn
  @override
  @JsonKey(name: IsbnModel.isbnKey)
  final String isbn;

  /// Create a copy of IsbnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IsbnModelCopyWith<_IsbnModel> get copyWith =>
      __$IsbnModelCopyWithImpl<_IsbnModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IsbnModelToJson(this);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsbnModel &&
            (identical(other.isbn, isbn) || other.isbn == isbn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isbn);

  @override
  String toString() {
    return 'IsbnModel(isbn: $isbn)';
  }
}

/// @nodoc
abstract mixin class _$IsbnModelCopyWith<$Res>
    implements $IsbnModelCopyWith<$Res> {
  factory _$IsbnModelCopyWith(
    _IsbnModel value,
    $Res Function(_IsbnModel) _then,
  ) = __$IsbnModelCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: IsbnModel.isbnKey) String isbn});
}

/// @nodoc
class __$IsbnModelCopyWithImpl<$Res> implements _$IsbnModelCopyWith<$Res> {
  __$IsbnModelCopyWithImpl(this._self, this._then);

  final _IsbnModel _self;
  final $Res Function(_IsbnModel) _then;

  /// Create a copy of IsbnModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? isbn = null}) {
    return _then(
      _IsbnModel(
        isbn:
            null == isbn
                ? _self.isbn
                : isbn // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}
