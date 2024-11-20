import 'package:freezed_annotation/freezed_annotation.dart';

part 'fees_types_public.freezed.dart';
part 'fees_types_public.g.dart';

@freezed
class FeesTypesPublic with _$FeesTypesPublic {
  const factory FeesTypesPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _FeesTypesPublic;

  factory FeesTypesPublic.fromJson(Map<String, dynamic> json) =>
      _$FeesTypesPublicFromJson(json);
}
