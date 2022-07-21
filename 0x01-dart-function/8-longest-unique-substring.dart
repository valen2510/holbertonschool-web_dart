String longestUniqueSubstring(String str) {
  Map<String, int> charsMap = Map<String, int>();
  int cursor = 0;
  int startIndex = 0;
  int maxLength = 0;

  for (int i = 0; i < str.length; i++) {
    String currentChar = str[i];
    bool isExistingCharInMap =
        charsMap[currentChar] != null && charsMap[currentChar]! >= cursor;

    if (isExistingCharInMap) {
      cursor = charsMap[currentChar]! + 1;
    }

    charsMap[currentChar] = i;
    bool isLongerNewString = maxLength < i - cursor + 1;

    if (isLongerNewString) {
      maxLength = i - cursor + 1;
      startIndex = cursor;
    }
  }
  return str.substring(startIndex, startIndex + maxLength);
}
