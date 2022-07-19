void main(List<String> args) {
  var num = int.parse(args[0]);

  if (num > 0) {
    print("$num is positive");
  } else if (num < 0) {
    print("$num is negative");
  } else {
    print("0 is zero");
  }
}