import 'package:http/http.dart' as http;
import 'dart:convert';

Future getIPAddress() {
  final url = Uri.parse('http://httpbin.org/ip');
  return http.get(url).then((res) {
    // print(res.body);
    String ip = jsonDecode(res.body)['origin'];
    return ip;
  });
}

void main(List<String> args) {
  getIPAddress().then((ip) => print(ip)).catchError((e) => print(e));
}
