import 'package:freezed_annotation/freezed_annotation.dart';

part 'nationalisms_public.freezed.dart';
part 'nationalisms_public.g.dart';

@freezed
class NationalismsPublic with _$NationalismsPublic {
  const factory NationalismsPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _NationalismsPublic;

  factory NationalismsPublic.fromJson(Map<String, dynamic> json) =>
      _$NationalismsPublicFromJson(json);
}
