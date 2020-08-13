import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:super_hero/models/super_hero.dart';
import 'package:super_hero/pages/details/super_hero_details.dart';
import 'package:super_hero/pages/home/home.dart';
import 'package:super_hero/pages/home/blocs/search_bloc.dart';

abstract class HomeViewModel extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  SearchBloc searchBloc = BlocProvider.getBloc<SearchBloc>();

  @override
  void initState() {
    super.initState();
  }

  void goDetailsHero(SuperHero hero) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return SuperHeroDetails(superHero: hero);
    }));
  }
}
