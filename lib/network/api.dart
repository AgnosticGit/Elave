import 'package:http/http.dart' as http;

class Api {
  Api({this.url = "http://localhost:8090/api/v1/", this.route});

  final String url;

  //example: "auth/registration"
  final String route;

  static String token;

  Future get() async {
    await http.get(url + route);
  }

  Future<dynamic> post({
    Map<String, dynamic> body,
    Map<String, String> headers,
  }) async {
    if (headers == null) headers = generateHeaders();
    
    try {
      final response = await http.post(
        url + route,
        headers: headers,
        body: body,
      );
      
      if (response.statusCode == 200) return response;

      throw (response);
    } catch (errors) {
      throw (errors);
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
