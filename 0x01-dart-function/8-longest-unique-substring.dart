String longestUniqueSubstring(String str) {
  if (str.length < 3) {
    return '';
  }

  String longest = '';
  String current = '';

  for (int i = 0; i < str.length; i++) {
    for (int j = i; j < str.length; j++) {
      current = str.substring(i, j + 1);
      if (current.length > longest.length && isUnique(current)) {
        longest = current;
      }
    }
  }
  return longest;
}

bool isUnique(String str) {
  for (int i = 0; i < str.length; i++) {
    for (int j = i + 1; j < str.length; j++) {
      if (str[i] == str[j]) {
        return false;
      }
    }
  }
  return true;
}