import 'package:super_hero/models/super_hero.dart';

class SearchBlocModel {
  bool isLoading = false;
  List<SuperHero> superHeros = [];
  String query = '';
}
