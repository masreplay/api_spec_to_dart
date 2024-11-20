import 'dart:convert';
import 'dart:io';

import 'package:swagger_to_dart/src/parser/swagger/models/open_api.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_components.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_info.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_paths.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_schema.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('First Test', () {
      final String expected = r"""
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'open_api.freezed.dart';
part 'open_api.g.dart';

@freezed
class OpenApi with _$OpenApi {
    const factory OpenApi({
        @JsonKey(name: "message")
        required String message,
        @JsonKey(name: "data")
        required Data data,
    }) = _OpenApi;

    factory OpenApi.fromJson(Map<String, dynamic> json) => _$OpenApiFromJson(json);
}

@freezed
class Data with _$Data {
    const factory Data({
        @JsonKey(name: "language")
        required String language,
        @JsonKey(name: "privacy_policy_url")
        required String privacyPolicyUrl,
        @JsonKey(name: "terms_of_service_url")
        required String termsOfServiceUrl,
        @JsonKey(name: "about_url")
        required String aboutUrl,
        @JsonKey(name: "update")
        required Update update,
        @JsonKey(name: "version")
        required String version,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Update with _$Update {
    const factory Update({
        @JsonKey(name: "is_force_update")
        required bool isForceUpdate,
        @JsonKey(name: "android")
        required Android android,
        @JsonKey(name: "ios")
        required Android ios,
    }) = _Update;

    factory Update.fromJson(Map<String, dynamic> json) => _$UpdateFromJson(json);
}

@freezed
class Android with _$Android {
    const factory Android({
        @JsonKey(name: "version")
        required String version,
        @JsonKey(name: "url")
        required String url,
        @JsonKey(name: "message")
        required String message,
    }) = _Android;

    factory Android.fromJson(Map<String, dynamic> json) => _$AndroidFromJson(json);
}
""";

      final entry = MapEntry(
        'entry',
        OpenApiSchemas(),
      );

      final value = entry.toJson();
      dumpJson('open_api', value);
      expect(value.length, 4);
    });
  });
}

Future<void> dumpJson(
  String name,
  Map<String, dynamic> value,
) {
  return File('test/dump/$name.json').writeAsString(
    JsonEncoder.withIndent('    ').convert(value),
  );
}
