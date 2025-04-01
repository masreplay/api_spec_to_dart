import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    

part 'items_public.freezed.dart';
part 'items_public.g.dart';

/// ItemsPublic

@freezed
abstract class ItemsPublic with _$ItemsPublic {
  const ItemsPublic._();

  static const String dataKey = 'data';
static const String countKey = 'count';

  @JsonSerializable(converters: convertors)
  const factory ItemsPublic({
/// data
@JsonKey(name: ItemsPublic.dataKey)
required List<ItemPublic> data,/// count
@JsonKey(name: ItemsPublic.countKey)
required int count,  }) = _ItemsPublic;

  factory ItemsPublic.fromJson(
    Map<String, dynamic> json,
  ) => _$ItemsPublicFromJson(
    json,
  );
}
