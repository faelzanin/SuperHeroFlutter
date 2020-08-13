import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:super_hero/components/cells/super_hero_cell.dart';
import 'package:super_hero/models/super_hero.dart';
import 'package:super_hero/pages/home/blocs/search_bloc_model.dart';
import 'package:super_hero/pages/home/home_view_model.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildSearchBar(context),
        ],
      ),
    );
  }

  Widget buildSearchBar(BuildContext context) {
    final actions = [
      FloatingSearchBarAction.searchToClear(
        showIfClosed: false,
      ),
    ];

    return StreamBuilder<SearchBlocModel>(
      stream: searchBloc.model,
      initialData: SearchBlocModel(),
      builder: (context, snapshot) {
        return FloatingSearchBar(
          margins: EdgeInsets.only(top: 40),
          backgroundColor: Colors.white,
          clearQueryOnClose: true,
          hint: 'Busque aqui seu super herói..',
          transitionDuration: Duration(milliseconds: 800),
          transitionCurve: Curves.easeInOutCubic,
          physics: BouncingScrollPhysics(),
          axisAlignment: 0.0,
          openAxisAlignment: 0.0,
          maxWidth: MediaQuery.of(context).size.width - 32,
          actions: actions,
          progress: snapshot.data.isLoading,
          debounceDelay: Duration(milliseconds: 500),
          onQueryChanged: searchBloc.onQueryChanged,
          transition: SlideFadeFloatingSearchBarTransition(translation: 48.0),
          builder: (context, transition) {
            return Material(
              color: Colors.white,
              elevation: 4.0,
              borderRadius: BorderRadius.circular(8),
              child: ImplicitlyAnimatedList<SuperHero>(
                shrinkWrap: true,
                items: snapshot.data.superHeros,
                physics: NeverScrollableScrollPhysics(),
                areItemsTheSame: (a, b) => a == b,
                itemBuilder: (context, animation, hero, i) {
                  return SuperHeroCell(
                        superHero: hero,
                        onTap: () {
                          goDetailsHero(hero);
                        },
                      );
                },
                updateItemBuilder: (context, animation, hero) {
                  return FadeTransition(
                    opacity: animation,
                    child: SuperHeroCell(
                      superHero: hero,
                      onTap: () {
                        goDetailsHero(hero);
                      },
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
