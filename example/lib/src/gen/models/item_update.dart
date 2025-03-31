import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'item_update.freezed.dart';
part 'item_update.g.dart';

/// ItemUpdate

@freezed
abstract class ItemUpdate with _$ItemUpdate {
  const ItemUpdate._();

  static const String titleKey = 'title';
  static const String descriptionKey = 'description';

  @JsonSerializable(converters: convertors)
  const factory ItemUpdate({
    /// Title
    @JsonKey(name: ItemUpdate.titleKey) required Stringdynamic? title,

    /// Description
    @JsonKey(name: ItemUpdate.descriptionKey)
    required Stringdynamic? description,
  }) = _ItemUpdate;

  factory ItemUpdate.fromJson(Map<String, dynamic> json) =>
      _$ItemUpdateFromJson(json);
}
