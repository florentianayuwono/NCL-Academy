import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:ncl_academy_website/buttons.dart';
import 'package:ncl_academy_website/styles.dart';

class SettingExecutionTemplate extends StatelessWidget {
  String title;
  String level;
  String subTitle;
  String textTitle;
  String textMaterial;
  String previousPage;
  String nextPage;

  SettingExecutionTemplate(this.title, this.level, this.subTitle,
      this.textTitle, this.textMaterial, this.previousPage, this.nextPage);

  Widget chapterTitle(String title, String level) => Column(children: [
        Align(
          alignment: Alignment.center,
          child: Text(title, style: titleStyle),
        ),
        Align(
            alignment: Alignment.center,
            child: Text(level, style: explanationBodyStyle))
      ]);

  Widget titleColumn(String bigTitle, String level) => Stack(children: [
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

  Widget smallTitle(String title) => Container(
      padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
      alignment: Alignment.centerLeft,
      child: Text(title, style: headerStyle));

  Widget explanation(String textTitle, String textMaterial) => Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textTitle, style: explanationTitleStyle),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textMaterial, style: explanationBodyStyle),
          ),
        ],
      );

  Widget textColumn(String textTitle, String textMaterial, String previousPage,
          String nextPage) =>
      Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
          child: Column(
            children: <Widget>[
              explanation(textTitle, textMaterial),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PrevButton(prevPage: previousPage),
                    NextButton(nextPage: nextPage)
                  ])
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
      appBar: BaseAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              titleColumn(this.title, this.level),
              smallTitle(this.subTitle),
              textColumn(this.textTitle, this.textMaterial, this.previousPage,
                  this.nextPage),
              footer
            ],
          ),
        ),
      ),
    );
  }
}
