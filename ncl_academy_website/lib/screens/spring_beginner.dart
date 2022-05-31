import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
import 'help_page.dart';
//import 'package:url_launcher/url_launcher.dart';

class SpringBeginnerPage extends StatelessWidget {
  const SpringBeginnerPage();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran"));
    const appBarColour = Color.fromARGB(255, 7, 31, 4);
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.0,
          backgroundColor: appBarColour,
          automaticallyImplyLeading: false,
          titleSpacing: 100.0,
          title: IconButton(
            iconSize: 70.0,
            onPressed: () {
              Get.to(() => const HomePage(),
                  transition: Transition.noTransition);
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
                    Get.to(() => const HelpPage(),
                        transition: Transition.noTransition);
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
        backgroundColor: Color(0xff015355),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
          Row(children: <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(33, 15, 0, 15),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(130.0, 50.0)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(196, 196, 196, 1))),
                    child:
                        Text("Back", style: TextStyle(color: Colors.black)))),
            Expanded(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Center(
                      child: Text('Spring4Shell',
                          style: TextStyle(
                              color: Color(0xffF5C852),
                              fontSize: 40,
                              fontFamily: 'Azonix'))),
                  Center(
                      child: Text('Beginner Level',
                          style: TextStyle(
                              color: Color(0xffD2E9E3), fontSize: 20))),
                  SizedBox(height: 50),
                  Text('An Introduction to Spring4Shell',
                      style: TextStyle(
                          color: Color(0xffF5C852),
                          fontSize: 32,
                          fontFamily: 'Azonix')),
                  SizedBox(height: 20),
                  Image.asset(
                    'img/cyberthreat.jpg',
                    width: 840,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 20),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                      'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                      'Auctor eu augue ut lectus arcu bibendum. '
                      'Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. '
                      'Purus semper eget duis at tellus at urna condimentum. '
                      'Mi bibendum neque egestas congue quisque. '
                      'Habitasse platea dictumst quisque sagittis purus sit amet volutpat. '
                      'Vel turpis nunc eget lorem dolor sed viverra. Quis auctor elit sed vulputate mi sit. '
                      'Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. '
                      'Feugiat nisl pretium fusce id velit ut tortor pretium viverra.',
                      style: TextStyle(color: Color(0xffD2E9E3), fontSize: 16)),
                  SizedBox(height: 40),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
                              const Size(130.0, 50.0)),
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(196, 196, 196, 1))),
                      child:
                          Text("Next", style: TextStyle(color: Colors.black)))
                ],
              ),
            ),
          ])
        ])));
  }
}

void _launchNCLwebsiteURL() {
  String url = 'https://ncl.sg';
  html.window.open(url, '_blank');
}
