import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
import 'dart:html' as html;
import 'package:ncl_academy_website/buttons.dart';
import 'package:ncl_academy_website/styles.dart';

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

final explanation = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("What is Spring4Shell?", style: explanationTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Auctor eu augue ut lectus arcu bibendum. Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. Purus semper eget duis at tellus at urna condimentum. Mi bibendum neque egestas congue quisque. Habitasse platea dictumst quisque sagittis purus sit amet volutpat. Vel turpis nunc eget lorem dolor sed viverra. Quis auctor elit sed vulputate mi sit. Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. Feugiat nisl pretium fusce id velit ut tortor pretium viverra.",
          style: explanationBodyStyle),
    )
  ],
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
          Get.toNamed('/spring_setting_up');
        }));

class SpringBeginnerPage extends StatelessWidget {
  const SpringBeginnerPage();

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
        child:
            const Text("An Introduction to Spring4Shell", style: headerStyle));

    final textColumn = Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
        child: Column(
          children: <Widget>[
            video,
            explanation,
            NextButton(nextPage: 'spring_setting_up'),
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
