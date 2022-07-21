int fact(int f) {
  if (f <= 0)
     return 0;

  if (f == 1)
     return 1;

  else
     return f * fact(f - 1);
}