import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'file_public.freezed.dart';
part 'file_public.g.dart';

@freezed
class FilePublic with _$FilePublic {
  const FilePublic._();

  @JsonSerializable(converters: convertors)
  const factory FilePublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'url') required Uri url,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'content_type') required String contentType,
    @JsonKey(name: 'size') required int size,
  }) = _FilePublic;

  factory FilePublic.fromJson(Map<String, dynamic> json) =>
      _$FilePublicFromJson(json);
}
