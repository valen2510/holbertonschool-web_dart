import 'package:http/http.dart' as http;
import 'dart:convert';

generateQuote(id) async {
  try {
    final res = await http.get(Uri.parse('https://breakingbadapi.com/api/quotes'),
    );
    var json = jsonDecode(res.body);
    return ("${json[id - 1]['author']} : ${json[id - 1]['quote']}");
  } catch (err) {
    return('There are no quotes');
 }
}