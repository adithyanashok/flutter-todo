import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todo/core/api.dart';

Future<void> registerUser(email, password) async {
  var data = {
    "email": email,
    "password": password,
  };

  var res = await http.post(
    Uri.parse('$baseUrl/register'),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode(data),
  );
  final response = jsonDecode(res.body);
  print(response['email']);
}
