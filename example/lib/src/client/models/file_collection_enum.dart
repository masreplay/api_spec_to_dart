import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_collection_enum.freezed.dart';
part 'file_collection_enum.g.dart';

@freezed
class FileCollectionEnum with _$FileCollectionEnum {
  const factory FileCollectionEnum() = _FileCollectionEnum;

  factory FileCollectionEnum.fromJson(Map<String, dynamic> json) =>
      _$FileCollectionEnumFromJson(json);
}
