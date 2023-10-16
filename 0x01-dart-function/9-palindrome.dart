bool isPalindrome(String s) {
  if (s.length < 3) {
    return false; // A string with less than 3 characters is not considered a palindrome
  }

  s = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
  String reversed = s.split('').reversed.join('');
  
  return s == reversed;
}
