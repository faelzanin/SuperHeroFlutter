import 'package:http/http.dart' as http;
import 'dart:convert';

class Requester {
  Future<http.Response> post(String url, Map body, Map headers) async {
    return http
        .post(url, body: jsonEncode(body), headers: headers)
        .then((http.Response response) {
      _verifyStatusCode(response);
      return response;
    });
  }

  Future<http.Response> fetch(String url, Map headers) async {
    return http.get(url, headers: headers).then((http.Response response) {
      _verifyStatusCode(response);
      return response;
    });
  }

  _verifyStatusCode(http.Response response) {
    final int statusCode = response.statusCode;
     if (statusCode < 200 || statusCode > 300) {
        if (response.body == null) {
          throw new Exception("Ocorreu um erro ao buscar os dados.");
        } else {
          Map mapError = json.decode(utf8.decode(response.bodyBytes));
          throw new Exception(mapError['error']);
        }
      }
  }
}
