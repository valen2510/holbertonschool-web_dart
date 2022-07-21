bool isPalindrome(String s) {

if (s.length < 3)
    return false;

  String inReverse = "";
  
  for (var idx = s.length - 1; idx >= 0; idx--) {
    inReverse += s[idx];
  }
  if (inReverse == s)
    return true;
    
  else
       return false;
}