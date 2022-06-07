import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

const headerColour = Color.fromARGB(255, 245, 200, 82);
const titleStyle = TextStyle(
  fontFamily: "Azonix",
  fontSize: 40,
  color: headerColour,
  shadows: <Shadow>[
    Shadow(
      offset: Offset(4.0, 2.0),
      blurRadius: 5.0,
      color: Color.fromARGB(255, 82, 82, 82),
    ),
  ],
);

const headerStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: headerColour);

const explanationTitleStyle = TextStyle(
    fontFamily: "Catamaran",
    height: 3,
    fontWeight: FontWeight.w700,
    color: Colors.white);

const explanationBodyStyle =
    TextStyle(fontFamily: "Catamaran", height: 1.5, color: Colors.white);


class IntroductionTemplate extends StatelessWidget {

  String title;
  String level;
  String subTitle;
  String textTitle;
  String textMaterial;
  String nextPage;

  IntroductionTemplate(this.title, this.level, this.subTitle, this.textTitle,
      this.textMaterial, this.nextPage);

  Widget chapterTitle(String title, String level) =>
      Column(children: [
        Align(
          alignment: Alignment.center,
          child: Text(title, style: titleStyle),
        ),
        Align(
            alignment: Alignment.center,
            child: Text(level, style: explanationBodyStyle))
      ]);

  Widget titleColumn(String bigTitle, String level) =>
      Stack(children: [
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Column(children: <Widget>[chapterTitle(bigTitle, level)])),
        Positioned(
            left: 40,
            bottom: 20,
            child: FloatingActionButton.extended(
              label: const Text("Chapter Select",
                  style:
                  TextStyle(fontFamily: "Montserrat", color: Colors.black)),
              hoverElevation: 10,
              backgroundColor: const Color.fromARGB(255, 210, 233, 227),
              hoverColor: const Color.fromARGB(255, 244, 255, 252),
              onPressed: () {
                Get.toNamed('/advanced');
              },
            ))
      ]);

  Widget smallTitle(String title) =>
      Container(
          padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
          alignment: Alignment.centerLeft,
          child:
          Text(title, style: headerStyle)
      );

  final video = Image.asset(
    'img/cyberthreat.jpg',
    width: 840,
    height: 400,
    fit: BoxFit.cover,
  );

  Widget explanation(String textTitle, String textMaterial) => Column(
    children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(textTitle, style: explanationTitleStyle),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
            textMaterial,
            style: explanationBodyStyle),
      )
    ],
  );

  Widget nextButton(String nextPage) => Align(
      alignment: Alignment.centerRight,
      child: FloatingActionButton.extended(
          label: const Text("Next",
              style: TextStyle(fontFamily: "Montserrat", color: Colors.black)),
          hoverElevation: 10,
          backgroundColor: const Color.fromARGB(255, 210, 233, 227),
          hoverColor: const Color.fromARGB(255, 244, 255, 252),
          onPressed: () {
            Get.toNamed(nextPage);
          }));

  Widget textColumn(String textTitle, String textMaterial, String nextPage) =>
      Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
      child: Column(
        children: <Widget>[
          video,
          explanation(textTitle, textMaterial),
          nextButton(nextPage),
        ],
      ));

  final footer = Container(
    padding: const EdgeInsets.all(8.0),
    height: 70,
    color: const Color.fromARGB(255, 7, 31, 4),
    alignment: Alignment.center,
    child: const Text("Sitemap"),
  );

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran"));
    const appBarColour = Color.fromARGB(255, 7, 31, 4);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 81, 83),
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: appBarColour,
        automaticallyImplyLeading: false,
        titleSpacing: 100.0,
        title: IconButton(
          iconSize: 70.0,
          onPressed: () {
            Get.toNamed('/');
          },
          icon: Image.asset(
            'img/NCL_LOGO.png',
          ),
        ),
        actions: <Widget>[
          Row(
            children: [
              TextButton(
                style: style,
                onPressed: _launchNCLwebsiteURL,
                child: const Text('NCL Website'),
              ),
              TextButton(
                style: style,
                onPressed: () {
                  Get.toNamed('/help');
                },
                child: const Text('Help'),
              ),
              const SizedBox(
                width: 100,
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              titleColumn(this.title, this.level),
              smallTitle(this.subTitle),
              textColumn(this.textTitle, this.textMaterial, this.nextPage),
              footer],
          ),
        ),
      ),
    );
  }
}

void _launchNCLwebsiteURL() {
  String url = 'https://ncl.sg';
  html.window.open(url, '_blank');
}
