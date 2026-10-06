/// PostmanFormParameter
///
/// ```json
/// {
///     "anyOf": [
///         {
///             "properties": {
///                 "key": {
///                     "type": "string"
///                 },
///                 "value": {
///                     "type": "string"
///                 },
///                 "disabled": {
///                     "type": "boolean",
///                     "description": "When set to true, prevents this form data entity from being sent.",
///                     "default": false
///                 },
///                 "type": {
///                     "type": "string",
///                     "const": "text"
///                 },
///                 "contentType": {
///                     "type": "string",
///                     "description": "Override Content-Type header of this form data entity."
///                 },
///                 "description": {
///                     "$ref": "#/components/schemas/description"
///                 }
///             },
///             "required": [
///                 "key"
///             ]
///         },
///         {
///             "properties": {
///                 "key": {
///                     "type": "string"
///                 },
///                 "src": {
///                     "oneOf": [
///                         {
///                             "type": "array"
///                         },
///                         {
///                             "type": "string"
///                         }
///                     ],
///                     "nullable": true
///                 },
///                 "disabled": {
///                     "type": "boolean",
///                     "description": "When set to true, prevents this form data entity from being sent.",
///                     "default": false
///                 },
///                 "type": {
///                     "type": "string",
///                     "const": "file"
///                 },
///                 "contentType": {
///                     "type": "string",
///                     "description": "Override Content-Type header of this form data entity."
///                 },
///                 "description": {
///                     "$ref": "#/components/schemas/description"
///                 }
///             },
///             "required": [
///                 "key"
///             ]
///         }
///     ],
///     "title": "FormParameter"
/// }
/// ```
library;

import 'exports.dart';

sealed class PostmanFormParameter {
  const PostmanFormParameter();

  const factory PostmanFormParameter.text(PostmanFormParameterTextValue value) =
      PostmanFormParameterText;
  const factory PostmanFormParameter.file(PostmanFormParameterFileValue value) =
      PostmanFormParameterFile;

  factory PostmanFormParameter.fromJson(Map<String, dynamic> json) =>
      switch (json['type']) {
        'text' => PostmanFormParameterText(
          PostmanFormParameterTextValue.fromJson(json),
        ),
        'file' => PostmanFormParameterFile(
          PostmanFormParameterFileValue.fromJson(json),
        ),
        _ => _fromKeys(json),
      };

  static PostmanFormParameter _fromKeys(Map<String, dynamic> json) {
    // No discriminator value we know: the variant whose required keys are all
    // present and that declares the most of the payload's keys wins (the
    // earlier one on a tie).
    const variants = <({Set<String> required, Set<String> declared})>[
      (
        required: {'key'},
        declared: {
          'key',
          'value',
          'disabled',
          'type',
          'contentType',
          'description',
        },
      ),
      (
        required: {'key'},
        declared: {
          'key',
          'src',
          'disabled',
          'type',
          'contentType',
          'description',
        },
      ),
    ];
    var best = -1;
    var bestScore = -1;
    for (var i = 0; i < variants.length; i++) {
      final variant = variants[i];
      if (!variant.required.every(json.containsKey)) continue;
      final score = json.keys.where(variant.declared.contains).length;
      if (score > bestScore) {
        best = i;
        bestScore = score;
      }
    }
    return switch (best) {
      0 => PostmanFormParameterText(
        PostmanFormParameterTextValue.fromJson(json),
      ),
      1 => PostmanFormParameterFile(
        PostmanFormParameterFileValue.fromJson(json),
      ),
      _ => throw ArgumentError.value(
        json,
        'json',
        'No PostmanFormParameter variant matches',
      ),
    };
  }

  Map<String, dynamic> toJson();
}

final class PostmanFormParameterText extends PostmanFormParameter {
  const PostmanFormParameterText(this.value);

  final PostmanFormParameterTextValue value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanFormParameterText && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanFormParameter.text($value)';
}

final class PostmanFormParameterFile extends PostmanFormParameter {
  const PostmanFormParameterFile(this.value);

  final PostmanFormParameterFileValue value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is PostmanFormParameterFile && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'PostmanFormParameter.file($value)';
}
