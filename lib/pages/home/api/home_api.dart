import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:super_hero/api/api.dart';
import 'package:super_hero/api/headers.dart';
import 'package:super_hero/api/requester.dart';
import 'package:super_hero/pages/home/api/home_api_model.dart';

class HomeAPI extends Requester {
  Future<SearchHeroResponse> searchHero(String text) async {
    final url = API().getURL(Endpoints.search) + "/$text";
    final headers = await Headers().getBasicHeader();
    http.Response response = await fetch(url, headers);
    return SearchHeroResponse.fromJson(json.decode(utf8.decode(response.bodyBytes)));
  }
}
