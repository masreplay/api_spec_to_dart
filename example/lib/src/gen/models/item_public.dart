
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
     
    

part 'item_public.freezed.dart';
part 'item_public.g.dart';

/// ItemPublic

@freezed
abstract class ItemPublic with _$ItemPublic {

  @JsonSerializable(converters: convertors)
  const factory ItemPublic({
/// title
@JsonKey(name: ItemPublic.titleKey)
required String title,/// Description
@JsonKey(name: ItemPublic.descriptionKey)
required String? description,/// id
@JsonKey(name: ItemPublic.idKey)
required String id,/// owner_id
@JsonKey(name: ItemPublic.ownerIdKey)
required String ownerId,  }) = _ItemPublic;

  factory ItemPublic.fromJson(
    Map<String, dynamic> json,
  ) => _$ItemPublicFromJson(
    json,
  );
  const ItemPublic._();

  static const String titleKey = 'title';
static const String descriptionKey = 'description';
static const String idKey = 'id';
static const String ownerIdKey = 'owner_id';
}
