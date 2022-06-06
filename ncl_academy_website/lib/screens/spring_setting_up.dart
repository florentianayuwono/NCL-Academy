import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
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

const codeDisplayStyle = TextStyle(
    fontFamily: "FiraCode",
    height: 1.5,
    letterSpacing: 1.5,
    color: Colors.black,
    backgroundColor: Color(0xffFFCFA3));

final chapterTitle = Column(children: const <Widget>[
  Align(
    alignment: Alignment.center,
    child: Text("Spring4Shell", style: titleStyle),
  ),
  Align(
      alignment: Alignment.center,
      child: Text("Beginner Level", style: explanationBodyStyle))
]);

final video = Image.asset(
  'img/cyberthreat.jpg',
  width: 840,
  height: 400,
  fit: BoxFit.cover,
);

final codeSnippet = Row(children: <Widget>[
  Expanded(
      child: Container(
          color: Color(0xffFFCFA3),
          child: Text("code code code", style: codeDisplayStyle)))
]);

final explanation = Column(
  children: <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child:
          Text("How to setup the environment?", style: explanationTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Auctor eu augue ut lectus arcu bibendum. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. Purus semper eget duis at tellus at urna condimentum. Mi bibendum neque egestas congue quisque. Habitasse platea dictumst quisque sagittis purus sit amet volutpat. Vel turpis nunc eget lorem dolor sed viverra. Quis auctor elit sed vulputate mi sit. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Feugiat nisl pretium fusce id velit ut tortor pretium viverra.",
          style: explanationBodyStyle),
    ),
    Align(
        alignment: Alignment.centerLeft,
        child: Column(children: <Widget>[
          SizedBox(height: 40),
          codeSnippet,
          SizedBox(height: 20),
          codeSnippet,
          SizedBox(height: 20),
          codeSnippet,
          SizedBox(height: 40)
        ]))
  ],
);

final topicSummary = Column(children: const <Widget>[
  Align(
    alignment: Alignment.centerLeft,
    child: Text("Topic Summary", style: headerStyle),
  ),
  Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "Spring4Shell is a etc etc etc. "
          "It posed dangers to blah blah blah. "
          "The way to tackle this vulneraility is by doing this and that. "
          "Visit our NCL website for more information about Spring4Shell.",
          style: explanationBodyStyle)),
  SizedBox(height: 40)
]);

final backButton = Align(
  alignment: Alignment.centerLeft,
  child: FloatingActionButton.extended(
      label: const Text("Prev",
          style: TextStyle(fontFamily: "Montserrat", color: Colors.black)),
      hoverElevation: 10,
      backgroundColor: const Color.fromARGB(255, 210, 233, 227),
      hoverColor: const Color.fromARGB(255, 244, 255, 252),
      onPressed: () => Get.back()),
);

final nextButton = Align(
  alignment: Alignment.centerRight,
  child: FloatingActionButton.extended(
      label: const Text("Next",
          style: TextStyle(fontFamily: "Montserrat", color: Colors.black)),
      hoverElevation: 10,
      backgroundColor: const Color.fromARGB(255, 210, 233, 227),
      hoverColor: const Color.fromARGB(255, 244, 255, 252),
      onPressed: () {
        Get.toNamed('/spring_reference');
      }),
);

class SpringSettingUpPage extends StatelessWidget {
  const SpringSettingUpPage();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran"));
    const appBarColour = Color.fromARGB(255, 7, 31, 4);

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
        child: const Text("Setting Up Spring4Shell Environment",
            style: headerStyle));

    final textColumn = Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
        child: Column(
          children: <Widget>[
            video,
            explanation,
            topicSummary,
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[backButton, nextButton])
          ],
        ));

    final footer = Container(
      padding: const EdgeInsets.all(8.0),
      height: 70,
      color: const Color.fromARGB(255, 7, 31, 4),
      alignment: Alignment.center,
      child: const Text("Sitemap"),
    );

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
            children: <Widget>[titleColumn, titleHeader, textColumn, footer],
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
