import 'package:http/http.dart' as http;
import 'dart:convert';

Future getIPAddress() async {
  final url = Uri.parse('http://httpbin.org/ip');
  final res = await http.get(url);
  // print(res.body);
  String ip = jsonDecode(res.body)['origin'];
  return ip;
}

void main(List<String> args) async {
  try {
    final ip = await getIPAddress();
    print(ip);
  } catch (e) {
    print(e);
  }
}
