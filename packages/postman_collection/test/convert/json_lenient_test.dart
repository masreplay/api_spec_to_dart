import 'dart:convert';

import 'package:postman_collection/src/convert/json_lenient.dart';
import 'package:postman_collection/src/convert/variables.dart';
import 'package:test/test.dart';

final _uuid = RegExp(
  r'^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$',
);

void main() {
  group('parseLenientJson', () {
    test('strips comments, substitutes bare variables, keeps unresolved '
        'references inside strings', () {
      expect(
        parseLenientJson('{"id": {{id}}, // c\n "n": "{{name}}" /* x */}', {
          'id': '5',
        }),
        {'id': 5, 'n': '{{name}}'},
      );
    });

    test('out-of-range numbers become text, so the result encodes', () {
      final json = parseLenientJson(
        '{"a": 1e999, "b": [-1e999], "c": {{big}}, "d": 1.5}',
        {'big': '1e999'},
      );
      expect(json, {
        'a': 'Infinity',
        'b': ['-Infinity'],
        'c': 'Infinity',
        'd': 1.5,
      });
      expect(() => jsonEncode(json), returnsNormally);
    });

    test('no-break spaces separate tokens; raw control characters inside '
        'strings are escaped', () {
      expect(parseLenientJson('{\u00a0"a":\u00a01,\u00a0"b": "x\ty\nz"}'), {
        'a': 1,
        'b': 'x\ty\nz',
      });
    });

    test('an unresolved bare variable becomes null', () {
      expect(parseLenientJson('{"a": {{x}}}'), {'a': null});
    });

    test(r'{{$randomInt}} becomes an int sample', () {
      expect(parseLenientJson(r'{"n": {{$randomInt}}}'), {'n': isA<int>()});
    });

    test(r'{{$guid}} inside quotes stays a string with a UUID sample', () {
      final json = parseLenientJson(r'{"id": "{{$guid}}"}') as Map;
      expect(json['id'], matches(_uuid));
    });

    test('invalid JSON returns null', () {
      expect(parseLenientJson('{"a": }'), isNull);
      expect(parseLenientJson('not json'), isNull);
      expect(parseLenientJson('{"a": [1, 2'), isNull);
    });

    test('trailing commas and trailing junk are ignored', () {
      expect(parseLenientJson('{"a": 1, //"b": 2\r\n}\r\n\r\n'), {'a': 1});
      expect(parseLenientJson('[1, 2,]'), [1, 2]);
      expect(parseLenientJson('{"a": 1}} trailing'), {'a': 1});
      expect(parseLenientJson('﻿{"a": 1}'), {'a': 1});
    });

    test('a bare variable takes its text as JSON, else as a string', () {
      expect(
        parseLenientJson('[{{flag}}, {{word}}, {{list}}]', {
          'flag': 'true',
          'word': 'abc',
          'list': '[1]',
        }),
        [
          true,
          'abc',
          [1],
        ],
      );
    });

    test('substitution inside strings is escaped; comment markers in strings '
        'are kept', () {
      expect(
        parseLenientJson(r'{"q": "say \"{{name}}\"", "u": "http://x/*y*/"}', {
          'name': 'a"b',
        }),
        {'q': 'say "a"b"', 'u': 'http://x/*y*/'},
      );
    });
  });

  group('lenient accessors', () {
    test('headers from a list (strings too) or a "K: V" string', () {
      expect(
        headerEntries([
          {'key': 'A', 'value': '1'},
          'B: 2',
          42,
        ]),
        [
          {'key': 'A', 'value': '1'},
          {'key': 'B', 'value': '2'},
        ],
      );
      expect(headerEntries('A: 1\r\n// B : x:y\nnot a header\n'), [
        {'key': 'A', 'value': '1'},
        {'key': 'B', 'value': 'x:y', 'disabled': true},
      ]);
      expect(headerEntries(null), isEmpty);
    });

    test('descriptions from a string or a {content} object', () {
      expect(descriptionText('text'), 'text');
      expect(descriptionText({'content': 'md', 'type': 'text/markdown'}), 'md');
      expect(descriptionText(''), isNull);
      expect(descriptionText({'content': 5}), isNull);
    });
  });

  group('variables', () {
    test('collects enabled, non-secret values by key or id', () {
      expect(
        collectVariables([
          {'key': 'a', 'value': '1'},
          {'id': 'b', 'value': 2},
          {'key': 'c', 'value': 'x', 'disabled': true},
          {'key': 'd', 'value': 's3cr3t', 'type': 'secret'},
          {'key': 'e'},
          'junk',
        ]),
        {'a': '1', 'b': '2'},
      );
      expect(collectVariables(null), isEmpty);
    });

    test('substitutes nested references and dynamic variables', () {
      expect(
        substituteVariables('{{url}}/{{missing}}', {
          'url': '{{host}}/x',
          'host': 'h',
        }),
        'h/x/{{missing}}',
      );
      expect(substituteVariables(r'{{$timestamp}}', {}), matches(r'^\d+$'));
      expect(
        substituteVariables(r'{{$isoTimestamp}}', {}),
        matches(r'^\d{4}-\d{2}-\d{2}T'),
      );
      expect(substituteVariables(r'{{$randomEmail}}', {}), contains('@'));
      expect(substituteVariables(r'{{$randomBoolean}}', {}), 'true');
      expect(substituteVariables('{{a}}', {'a': '{{a}}'}), '{{a}}');
    });
  });
}
