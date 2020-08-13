import 'package:flutter/material.dart';
import 'package:super_hero/pages/details/super_hero_details.dart';

abstract class SuperHeroDetailsViewModel extends State<SuperHeroDetails> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  @override
  void initState() {
    super.initState();
  }
}
