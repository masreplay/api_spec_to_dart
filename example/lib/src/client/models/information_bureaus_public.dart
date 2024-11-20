import 'package:freezed_annotation/freezed_annotation.dart';

part 'information_bureaus_public.freezed.dart';
part 'information_bureaus_public.g.dart';

@freezed
class InformationBureausPublic with _$InformationBureausPublic {
  const factory InformationBureausPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'governorate_id') required int governorateId,
    @JsonKey(name: 'name') required String name,
  }) = _InformationBureausPublic;

  factory InformationBureausPublic.fromJson(Map<String, dynamic> json) =>
      _$InformationBureausPublicFromJson(json);
}
