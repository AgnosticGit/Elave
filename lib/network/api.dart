import 'package:http/http.dart' as http;

class Api {
  Api({this.url = "http://localhost/api/v1/", this.route});

  final String url;

  //example: "auth/registration"
  final String route;

  static String token;

  Future get() async {
    await http.get(url + route);
  }

  Future<http.Response> post({
    Map<String, dynamic> body,
    Map<String, dynamic> headers,
  }) async {
    if (headers == null) headers = {};
    headers['Authorization'] = token;

    try {
      final response = await http.post(
        url + route,
        headers: headers,
        body: body,
      );

      if (response.statusCode == 200) return response;

      throw (response);
    } catch (errors) {
      return errors;
    }
  }

  void put() {}

  void delete() {}
}
