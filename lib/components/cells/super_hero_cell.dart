import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:super_hero/components/generics/sh_image_view.dart';
import 'package:super_hero/components/generics/sh_label.dart';
import 'package:super_hero/models/super_hero.dart';

class SuperHeroCell extends StatelessWidget {
  final SuperHero superHero;
  final GestureTapCallback onTap;
  SuperHeroCell({this.superHero, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(16, 12, 16, 12),
          child: Row(
            children: <Widget>[
              SizedBox(
                  height: 50,
                  width: 50,
                  child: SHImageView(
                    imageURL: superHero.image.url,
                  )),
              SizedBox(
                width: 4,
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                SHLabel(
                  text: superHero.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SHLabel(
                  text: "Poder: ${superHero.powerstats.power}",
                )
              ]),
            ],
          ),
        ));
  }
}
