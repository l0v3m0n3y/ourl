import 'dart:convert';
import 'package:http/http.dart' as http;

class Ourl {
  final String _api = "https://ourl.me";
  final Map<String, String> _headers = {
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36","Accept":"application/json, text/javascript, */*; q=0.01","referer":"https://ourl.me/","content-type":"application/x-www-form-urlencoded; charset=UTF-8","host":"ourl.me","origin":"https://ourl.me"
  };

  Future<dynamic> shortUrl(url) async {
    final response = await http.post(
      Uri.parse('$_api/shorten'),
      headers: _headers,
        body: 'url=$url&multiple=0'
    );
    return jsonDecode(response.body);
  }
}
