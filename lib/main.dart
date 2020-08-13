import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:super_hero/pages/home/blocs/search_bloc.dart';
import 'package:super_hero/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => BlocProvider(blocs: [
              Bloc((i) => SearchBloc()),
            ], child: Home(context)),
      },
    );
  }
}
