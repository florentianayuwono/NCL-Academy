import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20));
    const appBarColour = Color.fromARGB(255, 7, 31, 4);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        toolbarHeight: 80.0,
        backgroundColor: appBarColour,
        titleSpacing: 100.0,
        title: IconButton(
          iconSize: 70.0,
          onPressed: () {
            Get.toNamed("/");
            // route to homepage
          },
          icon: Image.asset(
            'images/NCL_LOGO.png',
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
                  Get.toNamed("/first");
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
      body: Center(
        child: Text('Welcome!', style: Theme.of(context).textTheme.headline2),
      ),
    );
  }
}

void _launchNCLwebsiteURL() {
  String url = 'https://ncl.sg';
  html.window.open(url, '_blank');
}
