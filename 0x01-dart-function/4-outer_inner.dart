void outer(String name, String id) {
  String inner() {
    var splitter = name.split(" ");
    var alias = splitter[1].substring(0, 1) + "." + splitter[0];
    return "Hello Agent ${alias} your id is $id";
  }

  print(inner());
}