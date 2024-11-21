import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'fees_types_public.freezed.dart';
part 'fees_types_public.g.dart';

///FeesTypesPublic

@freezed
class FeesTypesPublic with _$FeesTypesPublic {
  const FeesTypesPublic._();

  @JsonSerializable(converters: convertors)
  const factory FeesTypesPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _FeesTypesPublic;

  factory FeesTypesPublic.fromJson(Map<String, dynamic> json) =>
      _$FeesTypesPublicFromJson(json);
}
