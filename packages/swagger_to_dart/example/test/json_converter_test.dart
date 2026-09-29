import 'package:example/src/gen/models/exports.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorStringJsonConverter', () {
    const converter = ColorStringJsonConverter();

    test('6-digit hex is opaque', () {
      expect(converter.fromJson('#FF0000'), const Color(0xFFFF0000));
    });

    test('8-digit hex keeps its own alpha', () {
      expect(converter.fromJson('#80FF0000'), const Color(0x80FF0000));
    });
  });

  group('TimeOfDayStringJsonConverter', () {
    const converter = TimeOfDayStringJsonConverter();

    test('parses hh:mm:ss', () {
      expect(
        converter.fromJson('13:05:00'),
        const TimeOfDay(hour: 13, minute: 5),
      );
    });

    test('parses ISO-8601 duration', () {
      expect(
        converter.fromJson('PT1H30M'),
        const TimeOfDay(hour: 1, minute: 30),
      );
    });

    test('serializes to hh:mm:ss', () {
      expect(
        converter.toJson(const TimeOfDay(hour: 1, minute: 5)),
        '01:05:00',
      );
    });
  });
}
