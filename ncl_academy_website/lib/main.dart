import 'package:flutter/material.dart';

void main() {
  runApp(MaterialPage());
}

class MaterialPage extends StatelessWidget {
  //const MaterialPage({super.key});

  var header = AppBar(
    toolbarHeight: 80.0,
    backgroundColor: Color(0xff2D2D2D),
    titleSpacing: 100.0,
    title: IconButton(
      iconSize: 70.0,
      onPressed: () {
        // route to homepage
      },
      icon: Image.asset(
        'images/ncl_logo.jpg',
      ),
    ),
    actions: <Widget>[
      Row(
        children: [
          TextButton(
            //style: style,
            onPressed: () {},
            child: const Text('NCL Website', style: TextStyle(color: Color(0xffD2E9E3))),
          ),
          TextButton(
            //style: style,
            onPressed: () {},
            child: const Text('Help',  style: TextStyle(color: Color(0xffD2E9E3))),
          ),
          const SizedBox(
            width: 100,
          )
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Back')),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Spring4Shell',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xffF5C852),
                      fontSize: 40,
                    ),
                  ),
                ),

                Container(
                    padding: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  'Beginner Level',
                  style: TextStyle(
                    color: Color(0xffD2E9E3),
                    fontSize: 20,
                  ),
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    Widget videoTitle = Container(
      padding: const EdgeInsets.all(100),
      child: Text(
        'An Introduction to Spring4Shell',
        softWrap: true,
        style: TextStyle(
          color: Color(0xffF5C852),
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      )
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'This is a paragraph explaining about what is Spring4Shell. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Spring4Shell',
      home: Scaffold(
        appBar: header,
        body: ListView(
          children: [
            titleSection,
            videoTitle,
            Image.asset(
              'images/cyberthreat.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.contain,
            ),
            textSection,
          ],
        ),
      ),
    );
  }
}
