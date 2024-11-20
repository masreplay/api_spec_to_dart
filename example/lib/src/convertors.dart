import 'dart:io';

import 'package:dio/dio.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

const List<JsonConverter> convertors = [
  FileMultipartFileJsonConverter(),
  FilesMultipartFilesJsonConverter(),
];

class FileMultipartFileJsonConverter
    implements JsonConverter<File, MultipartFile> {
  const FileMultipartFileJsonConverter();

  @override
  File fromJson(MultipartFile json) {
    throw UnimplementedError();
  }

  @override
  MultipartFile toJson(File object) {
    return MultipartFile.fromFileSync(
      object.path,
      filename: object.path.split(Platform.pathSeparator).last,
    );
  }
}

class FilesMultipartFilesJsonConverter
    implements JsonConverter<List<File>, List<MultipartFile>> {
  const FilesMultipartFilesJsonConverter();

  @override
  List<File> fromJson(List<MultipartFile> json) {
    throw UnimplementedError();
  }

  @override
  List<MultipartFile> toJson(List<File> object) {
    return [
      for (var i in object)
        MultipartFile.fromFileSync(
          i.path,
          filename: i.path.split(Platform.pathSeparator).last,
        ),
    ];
  }
}
