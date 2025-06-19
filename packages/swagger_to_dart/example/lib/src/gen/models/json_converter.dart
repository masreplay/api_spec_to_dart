library;

import 'exports.dart';

class AnimalMapJsonConverter
    implements JsonConverter<Animal, Map<String, dynamic>> {
  const AnimalMapJsonConverter();

  static const String unionKey = r'value';

  @override
  Animal fromJson(Map<String, dynamic> json) {
    return Animal.fromJson({unionKey: json, ...json});
  }

  @override
  Map<String, dynamic> toJson(Animal object) {
    return {unionKey: object.toJson(), ...object.toJson()};
  }
}

class ResponseModelsResponseMultipleMapJsonConverter
    implements
        JsonConverter<ResponseModelsResponseMultiple, Map<String, dynamic>> {
  const ResponseModelsResponseMultipleMapJsonConverter();

  static const String unionKey = r'value';

  @override
  ResponseModelsResponseMultiple fromJson(Map<String, dynamic> json) {
    return ResponseModelsResponseMultiple.fromJson({unionKey: json, ...json});
  }

  @override
  Map<String, dynamic> toJson(ResponseModelsResponseMultiple object) {
    return {unionKey: object.toJson(), ...object.toJson()};
  }
}

const jsonSerializableConverters = <JsonConverter>[
  AnimalMapJsonConverter(),
  ResponseModelsResponseMultipleMapJsonConverter(),
];
const jsonSerializable = JsonSerializable(
  converters: jsonSerializableConverters,
);
