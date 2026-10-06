/// cookie-list
///
/// ```json
/// {
///     "type": "array",
///     "items": {
///         "$ref": "#/components/schemas/cookie"
///     },
///     "description": "A representation of a list of cookies"
/// }
/// ```
library;

import 'exports.dart';

typedef PostmanCookieList = List<PostmanCookie>;
