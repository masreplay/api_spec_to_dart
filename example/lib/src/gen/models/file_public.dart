import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'file_public.freezed.dart';
part 'file_public.g.dart';

///FilePublic

@freezed
class FilePublic with _$FilePublic {
  const FilePublic._();

  @JsonSerializable(converters: convertors)
  const factory FilePublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Url
    @JsonKey(name: 'url') required Uri url,

    /// Name
    @JsonKey(name: 'name') required String name,

    /// Content Type
    @JsonKey(name: 'content_type') required String contentType,

    /// Size
    @JsonKey(name: 'size') required int size,
  }) = _FilePublic;

  factory FilePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FilePublicFromJson(
        json,
      );
}
