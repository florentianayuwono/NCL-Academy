import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
import 'package:ncl_academy_website/buttons.dart';
import 'package:ncl_academy_website/styles.dart';
import 'dart:html' as html;

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

final chapterTitle = Column(children: const <Widget>[
  Align(
    alignment: Alignment.center,
    child: Text("Spring4Shell", style: titleStyle),
  ),
  Align(
      alignment: Alignment.center,
      child: Text("Beginner Level", style: explanationBodyStyle))
]);

final explanation = Column(
  children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Sources for our materials", style: explanationTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "Youtube. Video by 123SantaClause "
          "PurplePlanet. Spring House by 123SantaClauseXXXXXXX by XX "
          "HELLOWORLD by THEWORLD "
          "FANTASY by FFSTAR",
          style: explanationBodyStyle),
    ),
    SizedBox(height: 40)
  ],
);

class SpringReferencePage extends StatelessWidget {
  const SpringReferencePage();

  @override
  Widget build(BuildContext context) {
    final titleColumn = Stack(children: [
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Column(children: <Widget>[chapterTitle])),
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

    final titleHeader = Container(
        padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
        alignment: Alignment.centerLeft,
        child: const Text("References/Credits", style: headerStyle));

    final textColumn = Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
        child: Column(
          children: <Widget>[
            explanation,
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  PrevButton(
                    prevPage: '/spring_setting_up',
                  ),
                  NextButton(
                    nextPage: '/',
                  )
                ])
          ],
        ));

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 81, 83),
      appBar: BaseAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[titleColumn, titleHeader, textColumn, footer],
          ),
        ),
      ),
    );
  }
}
