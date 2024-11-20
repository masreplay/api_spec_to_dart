import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'information_bureaus_public.freezed.dart';
part 'information_bureaus_public.g.dart';

@freezed
class InformationBureausPublic with _$InformationBureausPublic {
  const InformationBureausPublic._();

  @JsonSerializable(converters: convertors)
  const factory InformationBureausPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'governorate_id')

    /// Governorate Id
    required int governorateId,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _InformationBureausPublic;

  factory InformationBureausPublic.fromJson(Map<String, dynamic> json) =>
      _$InformationBureausPublicFromJson(json);
}
