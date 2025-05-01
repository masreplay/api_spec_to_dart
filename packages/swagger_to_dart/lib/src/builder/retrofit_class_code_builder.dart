import 'package:code_builder/code_builder.dart';

class RetrofitClassCodeBuilder {
  static const RetrofitClassCodeBuilder _instance =
      const RetrofitClassCodeBuilder._();

  const RetrofitClassCodeBuilder._();

  static RetrofitClassCodeBuilder get instance => _instance;

  Library class_({
    required String className,
    required String filename,
    required List<Parameter> parameters,
  }) {
    return Library((b) => b..name = filename);
  }
}
