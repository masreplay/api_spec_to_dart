import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'fees_types_public.freezed.dart';
part 'fees_types_public.g.dart';

@freezed
class FeesTypesPublic with _$FeesTypesPublic {
  const FeesTypesPublic._();

  @JsonSerializable(converters: convertors)
  const factory FeesTypesPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _FeesTypesPublic;

  factory FeesTypesPublic.fromJson(Map<String, dynamic> json) =>
      _$FeesTypesPublicFromJson(json);
}
