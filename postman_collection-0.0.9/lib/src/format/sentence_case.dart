String toSentenceCase(String text) {
  final words = text.split(RegExp(r'(?=[A-Z])'));
  final sentenceCase = words.map((word) {
    return word[0].toUpperCase() + word.substring(1);
  }).join(' ');
  return sentenceCase;
}
