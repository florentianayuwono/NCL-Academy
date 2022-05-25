import 'package:flutter/material.dart';

void main() {
  runApp(MaterialPage());
}

class MaterialPage extends StatelessWidget {
  //const MaterialPage({super.key});

  var header = AppBar(
    toolbarHeight: 80.0,
    backgroundColor: Colors.black,
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
            child: const Text('NCL Website'),
          ),
          TextButton(
            //style: style,
            onPressed: () {},
            child: const Text('Help'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Spring4Shell',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Beginner Level',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
            Image.asset(
              'images/cyberthreat.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            textSection,
          ],
        ),
      ),
    );
  }
}
