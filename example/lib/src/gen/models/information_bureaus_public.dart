import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'information_bureaus_public.freezed.dart';
part 'information_bureaus_public.g.dart';

///InformationBureausPublic

@freezed
class InformationBureausPublic with _$InformationBureausPublic {
  const InformationBureausPublic._();

  @JsonSerializable(converters: convertors)
  const factory InformationBureausPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Governorate Id
    @JsonKey(name: 'governorate_id') required int governorateId,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _InformationBureausPublic;

  factory InformationBureausPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InformationBureausPublicFromJson(
        json,
      );
}
