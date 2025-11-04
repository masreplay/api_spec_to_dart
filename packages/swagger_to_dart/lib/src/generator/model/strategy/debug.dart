import 'package:freezed_annotation/freezed_annotation.dart';

@internal
mixin DebugMixin {
  String get tag;

  @protected
  void debug(String s) {
    print('$tag: $s');
  }
}
