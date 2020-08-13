import 'package:flutter/material.dart';
import 'package:super_hero/pages/home/home_view.dart';

class Home extends StatefulWidget {
  Home(BuildContext context, {Key key}) : super(key: key);

  static Home builder(BuildContext context) {
    return Home(context);
  }

  @override
  HomeView createState() => new HomeView();
}