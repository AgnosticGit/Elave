import 'dart:io';
import 'package:elave/index.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static String token;

  Future get() async {
    // await http.get(url + route);
  }

  Future<dynamic> post({
    String url = "http://localhost:8090/api/v1",
    String route = '',
    Map<String, dynamic> body,
    Map<String, String> headers,
    Function(dynamic json) onSuccess,
    Function(dynamic json) onError,
    VoidCallback onNetworkError,
  }) async {
    if (headers == null) headers = generateHeaders();

    try {
      final response = await http.post(
        url + route,
        headers: headers,
        body: body,
      );

      dynamic json = jsonDecode(response.body);

      if (response.statusCode == 200) {
        onSuccess(json);
      } else {
        onError(json);
      }
    } on SocketException {
      onNetworkError();
    }
  }

  void put() {}

  void delete() {}

  Map<String, String> generateHeaders() {
    Map<String, String> headers = {};
    headers['Authorization'] = token;
    headers['Accept'] = "application/json";
    return headers;
  }
}
