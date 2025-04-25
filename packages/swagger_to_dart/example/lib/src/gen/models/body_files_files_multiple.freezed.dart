// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_files_files_multiple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyFilesFilesMultiple {
  List<String> get files;
  String get notes;

  /// Create a copy of BodyFilesFilesMultiple
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyFilesFilesMultipleCopyWith<BodyFilesFilesMultiple> get copyWith =>
      _$BodyFilesFilesMultipleCopyWithImpl<BodyFilesFilesMultiple>(
          this as BodyFilesFilesMultiple, _$identity);

  /// Serializes this BodyFilesFilesMultiple to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyFilesFilesMultiple &&
            const DeepCollectionEquality().equals(other.files, files) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(files), notes);

  @override
  String toString() {
    return 'BodyFilesFilesMultiple(files: $files, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class $BodyFilesFilesMultipleCopyWith<$Res> {
  factory $BodyFilesFilesMultipleCopyWith(BodyFilesFilesMultiple value,
          $Res Function(BodyFilesFilesMultiple) _then) =
      _$BodyFilesFilesMultipleCopyWithImpl;
  @useResult
  $Res call({List<String> files, String notes});
}

/// @nodoc
class _$BodyFilesFilesMultipleCopyWithImpl<$Res>
    implements $BodyFilesFilesMultipleCopyWith<$Res> {
  _$BodyFilesFilesMultipleCopyWithImpl(this._self, this._then);

  final BodyFilesFilesMultiple _self;
  final $Res Function(BodyFilesFilesMultiple) _then;

  /// Create a copy of BodyFilesFilesMultiple
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
    Object? notes = null,
  }) {
    return _then(_self.copyWith(
      files: null == files
          ? _self.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(converters: Convertors.convertors)
class _BodyFilesFilesMultiple implements BodyFilesFilesMultiple {
  const _BodyFilesFilesMultiple(
      {required final List<String> files, required this.notes})
      : _files = files;
  factory _BodyFilesFilesMultiple.fromJson(Map<String, dynamic> json) =>
      _$BodyFilesFilesMultipleFromJson(json);

  final List<String> _files;
  @override
  List<String> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  final String notes;

  /// Create a copy of BodyFilesFilesMultiple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyFilesFilesMultipleCopyWith<_BodyFilesFilesMultiple> get copyWith =>
      __$BodyFilesFilesMultipleCopyWithImpl<_BodyFilesFilesMultiple>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyFilesFilesMultipleToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyFilesFilesMultiple &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_files), notes);

  @override
  String toString() {
    return 'BodyFilesFilesMultiple(files: $files, notes: $notes)';
  }
}

/// @nodoc
abstract mixin class _$BodyFilesFilesMultipleCopyWith<$Res>
    implements $BodyFilesFilesMultipleCopyWith<$Res> {
  factory _$BodyFilesFilesMultipleCopyWith(_BodyFilesFilesMultiple value,
          $Res Function(_BodyFilesFilesMultiple) _then) =
      __$BodyFilesFilesMultipleCopyWithImpl;
  @override
  @useResult
  $Res call({List<String> files, String notes});
}

/// @nodoc
class __$BodyFilesFilesMultipleCopyWithImpl<$Res>
    implements _$BodyFilesFilesMultipleCopyWith<$Res> {
  __$BodyFilesFilesMultipleCopyWithImpl(this._self, this._then);

  final _BodyFilesFilesMultiple _self;
  final $Res Function(_BodyFilesFilesMultiple) _then;

  /// Create a copy of BodyFilesFilesMultiple
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? files = null,
    Object? notes = null,
  }) {
    return _then(_BodyFilesFilesMultiple(
      files: null == files
          ? _self._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>,
      notes: null == notes
          ? _self.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
