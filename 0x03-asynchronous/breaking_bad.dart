import "package:http/http.dart" as http;
import 'dart:convert';

printBbCharacters() async {
  try {
    final res = await http.get(Uri.parse('https://www.breakingbadapi.com/api/characters'),
    );
    var json = jsonDecode(res.body);

    for (var idx = 0; idx < json.length; idx++) {
      print("${json[idx]['name']}");
    }
  } catch (err) {
    print('error caught: $err');
  }
}