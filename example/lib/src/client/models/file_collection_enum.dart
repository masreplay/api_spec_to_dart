import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'file_collection_enum.freezed.dart';
part 'file_collection_enum.g.dart';

@freezed
class FileCollectionEnum with _$FileCollectionEnum {
  const FileCollectionEnum._();

  @JsonSerializable(converters: convertors)
  const factory FileCollectionEnum() = _FileCollectionEnum;

  factory FileCollectionEnum.fromJson(Map<String, dynamic> json) =>
      _$FileCollectionEnumFromJson(json);
}
