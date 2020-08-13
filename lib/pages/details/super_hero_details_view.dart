import 'package:flutter/material.dart';
import 'package:super_hero/components/generics/sh_app_bar.dart';
import 'package:super_hero/components/generics/sh_image_view.dart';
import 'package:super_hero/components/generics/sh_label.dart';
import 'package:super_hero/pages/details/super_hero_details_view_model.dart';

class SuperHeroDetailsView extends SuperHeroDetailsViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        resizeToAvoidBottomInset: false,
        appBar: SHAppBar(title: widget.superHero.name),
        body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            primary: false,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildHeaderInfo(),
                  buildPowerStatsInfo(),
                  buildAppearenceInfo(),
                  buildWorkInfo(),
                  buildConnectionsInfo()
                ],
              ),
            )));
  }

  Widget buildHeaderInfo() {
    TextStyle styleInfo = TextStyle(fontSize: 16);
    TextStyle styleTitleInfo = TextStyle(fontSize: 14);

    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16, 24, 16, 16),
      margin: EdgeInsets.only(bottom: 2),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SHImageView(
                  height: 100.0,
                  width: 100.0,
                  imageURL: widget.superHero.image.url,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SHLabel(
                      text: 'Biografia',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SHLabel(
                      text: "Nome:",
                      style: styleTitleInfo,
                    ),
                    SHLabel(
                      text: "${widget.superHero.biography.fullName}",
                      style: styleInfo,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SHLabel(
                      text: "Nasceu em:",
                      style: styleTitleInfo,
                    ),
                    SHLabel(
                      text: "${widget.superHero.biography.placeOfBirth}",
                      style: styleInfo,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Primeira aparição:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.biography.firstAppearance}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Editora:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.biography.publisher}",
              style: styleInfo,
            ),
          ]),
    );
  }

  Widget buildPowerStatsInfo() {
    TextStyle styleInfo = TextStyle(fontSize: 16);
    TextStyle styleTitleInfo = TextStyle(fontSize: 14);

    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        margin: EdgeInsets.only(bottom: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SHLabel(
              text: 'Estatísticas de Poder',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            SHLabel(
              text: "Poder:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.powerstats.power}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Inteligência:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.powerstats.intelligence}",
              style: styleInfo,
            ),
            SizedBox(
              height: 4,
            ),
            SHLabel(
              text: "Durabilidade:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.powerstats.durability}",
              style: styleInfo,
            ),
            SizedBox(
              height: 4,
            ),
            SHLabel(
              text: "Combate:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.powerstats.combat}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Força:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.powerstats.strength}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Velocidade:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.powerstats.speed}",
              style: styleInfo,
            ),
          ],
        ));
  }

  Widget buildAppearenceInfo() {
    TextStyle styleInfo = TextStyle(fontSize: 16);
    TextStyle styleTitleInfo = TextStyle(fontSize: 14);

    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        margin: EdgeInsets.only(bottom: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SHLabel(
              text: 'Aparência',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            SHLabel(
              text: "Gênero:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.appearance.gender}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Altura:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.appearance.height}",
              style: styleInfo,
            ),
            SizedBox(
              height: 4,
            ),
            SHLabel(
              text: "Peso:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.appearance.weight}",
              style: styleInfo,
            ),
            SizedBox(
              height: 4,
            ),
            SHLabel(
              text: "Raça:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.appearance.race}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Cor dos olhos:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.appearance.eyeColor}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Cor do cabelo:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.appearance.hairColor}",
              style: styleInfo,
            ),
          ],
        ));
  }

  Widget buildWorkInfo() {
    TextStyle styleInfo = TextStyle(fontSize: 16);
    TextStyle styleTitleInfo = TextStyle(fontSize: 14);

    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        margin: EdgeInsets.only(bottom: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SHLabel(
              text: 'Trabalho',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            SHLabel(
              text: "Ocupação:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.work.occupation}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Base:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.work.base}",
              style: styleInfo,
            ),
          ],
        ));
  }

  Widget buildConnectionsInfo() {
    TextStyle styleInfo = TextStyle(fontSize: 16);
    TextStyle styleTitleInfo = TextStyle(fontSize: 14);

    return Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        margin: EdgeInsets.only(bottom: 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SHLabel(
              text: 'Conexões',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            SHLabel(
              text: "Afiliação:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.connections.groupAffiliation}",
              style: styleInfo,
            ),
            SizedBox(height: 4),
            SHLabel(
              text: "Parentes:",
              style: styleTitleInfo,
            ),
            SHLabel(
              text: "${widget.superHero.connections.relatives}",
              style: styleInfo,
            ),
          ],
        ));
  }
}
