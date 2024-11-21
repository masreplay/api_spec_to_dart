import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'nationalisms_public.freezed.dart';
part 'nationalisms_public.g.dart';

///NationalismsPublic

@freezed
class NationalismsPublic with _$NationalismsPublic {
  const NationalismsPublic._();

  @JsonSerializable(converters: convertors)
  const factory NationalismsPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _NationalismsPublic;

  factory NationalismsPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NationalismsPublicFromJson(json);
}
