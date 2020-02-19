import 'dart:convert';
import 'package:http/http.dart' as HTTP;

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    HTTP.Response response = await HTTP.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
