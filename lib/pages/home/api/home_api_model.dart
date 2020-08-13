import 'package:super_hero/models/super_hero.dart';

class SearchHeroResponse {
  String response;
  String resultsFor;
  List<SuperHero> results;

  SearchHeroResponse({this.response, this.resultsFor, this.results});

  SearchHeroResponse.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    resultsFor = json['results-for'];
    if (json['results'] != null) {
      results = List<SuperHero>();
      json['results'].forEach((v) {
        results.add(SuperHero.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['results-for'] = this.resultsFor;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}