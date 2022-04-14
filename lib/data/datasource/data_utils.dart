extension QuotedAndEscapedNewLine on Map<String, dynamic> {
  Map<String, dynamic> get withNullCleaned {
    cleanNull(this);
    return this;
  }

  /// Note: Cannot use extension because seems extension function does not support recursion :thinking:
  void cleanNull(Map<String, dynamic> object) {
    object.removeWhere((k, v) => v == null);
    for (final key in object.keys) {
      if (object[key] is Map<String, dynamic>) {
        cleanNull(object[key]);
      } else if (object[key] is List<Map>) {
        for (var element in (object[key] as List)) {
          cleanNull(element);
        }
      }
    }
  }
}
