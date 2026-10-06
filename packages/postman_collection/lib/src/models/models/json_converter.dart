import 'package:json_annotation/json_annotation.dart';

const jsonSerializableConverters = <JsonConverter>[];
const jsonSerializable = JsonSerializable(
  converters: jsonSerializableConverters,
  explicitToJson: true,
);
