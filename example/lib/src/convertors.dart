import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const List<JsonConverter> convertors = [
  FileMultipartFileJsonConverter(),
  // TimeOfDayStringJsonConverter(),
  // ColorHexStringJsonConverter(),
];

class FileMultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const FileMultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}

// // #FFFFFF, #FFFFFFFF
// class ColorHexStringJsonConverter implements JsonConverter<Color, String> {
//   const ColorHexStringJsonConverter();

//   @override
//   Color fromJson(String json) {
//     return Color(int.parse(json.substring(1), radix: 16));
//   }

//   @override
//   String toJson(Color? object) {
//     return '#${object?.value.toRadixString(16)}';
//   }
// }

// /// [TimeOfDay] json converter
// /// example: PT8H30M
// class TimeOfDayStringJsonConverter implements JsonConverter<TimeOfDay, String> {
//   const TimeOfDayStringJsonConverter();

//   @override
//   TimeOfDay fromJson(String json) {
//     if (json.contains(':')) {
//       final time = json.split(':');
//       return TimeOfDay(hour: int.parse(time[0]), minute: int.parse(time[1]));
//     } else {
//       final regex = RegExp(r'PT(?:(\d+)H)?(?:(\d+)M)?');
//       final match = regex.firstMatch(json);

//       int hours = match?.group(1) != null ? int.parse(match!.group(1)!) : 0;
//       int minutes = match?.group(2) != null ? int.parse(match!.group(2)!) : 0;

//       return TimeOfDay(hour: hours, minute: minutes);
//     }
//   }

//   @override
//   String toJson(TimeOfDay object) {
//     return '${object.hour.toString().padLeft(2, '0')}:${object.minute.toString().padLeft(2, '0')}:00';
//   }
// }
