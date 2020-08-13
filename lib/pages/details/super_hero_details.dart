import 'package:flutter/material.dart';
import 'package:super_hero/models/super_hero.dart';
import 'package:super_hero/pages/details/super_hero_details_view.dart';

class SuperHeroDetails extends StatefulWidget {

  final SuperHero superHero;
  SuperHeroDetails({@required this.superHero, key}) : super(key: key);

  @override
  SuperHeroDetailsView createState() => new SuperHeroDetailsView();
}