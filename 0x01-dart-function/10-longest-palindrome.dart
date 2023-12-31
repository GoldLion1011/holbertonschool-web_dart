bool isPalindrome(String s) {
  s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "none";
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);
      if (isPalindrome(substring) && substring.length > longest.length) {
        longest = substring;
      }
    }
  }

  return longest;
}
