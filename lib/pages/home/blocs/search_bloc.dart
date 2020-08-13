import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:super_hero/models/super_hero.dart';
import 'package:super_hero/pages/home/api/home_api.dart';
import 'package:super_hero/pages/home/api/home_api_model.dart';
import 'package:super_hero/pages/home/blocs/search_bloc_model.dart';

class SearchBloc extends BlocBase {

  // Resolvi utilizar duas maneiras de controlar o gerenciamento do estado.
  // Uma delas é utilizando o ChangeNotifier, neste caso estou usando para o searchBar na Home.
  
  StreamController<SearchBlocModel> _searchController = StreamController<SearchBlocModel>();
  SearchBlocModel _model = SearchBlocModel();

  Stream<SearchBlocModel> get model => _searchController.stream;

  Stream<String> get query =>
             _searchController.stream.map((v) => v.query);

  Stream<bool> get isLoading =>
             _searchController.stream.map((v) => v.isLoading);

  Stream<List<SuperHero>> get superHeros =>
             _searchController.stream.map((v) => v.superHeros);

  // Qualquer alteração na busca é chamado este método que trata de buscar na API o resultado, 
  // tratando também limpar a lista de heróis quando necessário e notificar os observadores.
  void onQueryChanged(String query) async {
    if (query == _model.query) return;

    _model.query = query;

    if (query.isEmpty || query.length < 3) {
      clear();
    } else {
      _model.isLoading = true;
      _searchController.add(_model);

      SearchHeroResponse response = await HomeAPI().searchHero(query);
      _model.superHeros = response.results != null ? response.results : [];
      _model.isLoading = false;
      _searchController.add(_model);
    } 
  }

  // Limpa a lista de heróis e notifica os observers.
  void clear() {
    _model.superHeros = [];
    _searchController.add(_model);
  }
}
