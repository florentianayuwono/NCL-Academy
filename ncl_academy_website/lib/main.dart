import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_strategy/url_strategy.dart';
import 'dart:html' as html;

import 'screens/help_page.dart';
import 'screens/spring_beginner.dart';
import 'screens/spring_setting_up.dart';
import 'screens/spring_reference.dart';
import 'screens/advanced_page.dart';

void main() {
  // Remove leading hash in address
  setPathUrlStrategy();

  runApp(GetMaterialApp(
    // To implement: handle unknown route by navigating to unknown route page
    //unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),

    initialRoute: '/',
    getPages: [
      GetPage(
          name: '/',
          page: () => const HomePage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/help',
          page: () => const HelpPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/spring_beginner',
          page: () => const SpringBeginnerPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/spring_setting_up',
          page: () => const SpringSettingUpPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/spring_reference',
          page: () => const SpringReferencePage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/advanced',
          page: () => const AdvancedPage(),
          transition: Transition.noTransition),
      // GetPage(
      //   name: '/third',
      //   page: () => Third(),
      //   transition: Transition.zoom
      // ),
    ],
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NCL Academy',
      theme: ThemeData(
        // This is the theme of your application.

        scaffoldBackgroundColor: const Color.fromARGB(255, 229, 229, 229),
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/help': (context) => const HelpPage(),
        '/advanced': (context) => const AdvancedPage(),
        'spring_beginner': (context) => const SpringBeginnerPage(),
        'spring_setting_up' : (context) => const SpringSettingUpPage(),
        'spring_reference' : (context) => const SpringReferencePage()
      },
    );
  }
}

class FirstTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 49, 162, 164)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1834667, size.height * 0.8906333);
    path0.lineTo(size.width * 0.5713000, size.height * 0.1097667);
    path0.lineTo(size.width * 0.8712500, size.height * 0.5857000);
    path0.lineTo(size.width * 0.1834667, size.height * 0.8906333);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class SecondTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 109, 110)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1863000, size.height * 0.6240667);
    path0.lineTo(size.width * 0.7244333, size.height * 0.9513333);
    path0.lineTo(size.width * 0.9358333, size.height * 0.1858667);
    path0.lineTo(size.width * 0.1863000, size.height * 0.6240667);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ThirdTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 109, 110)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1834667, size.height * 0.8906333);
    path0.lineTo(size.width * 0.4303667, size.height * 0.1344667);
    path0.lineTo(size.width * 0.8807500, size.height * 0.4962000);
    path0.lineTo(size.width * 0.1834667, size.height * 0.8906333);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class FourthTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 109, 110)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.6146167, size.height * 0.1094667);
    path0.lineTo(size.width * 0.3579333, size.height * 0.7189667);
    path0.lineTo(size.width * 0.6811250, size.height * 0.8627667);
    path0.lineTo(size.width * 0.6146167, size.height * 0.1094667);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    Path path1 = Path();
    path1.moveTo(size.width * 0.5607333, size.height * 0.0648667);
    path1.lineTo(size.width * 0.2890667, size.height * 0.7298667);
    path1.lineTo(size.width * 0.6208750, size.height * 0.8744333);
    path1.lineTo(size.width * 0.5607333, size.height * 0.0648667);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

var difficultyCardColour = const Color.fromARGB(255, 45, 45, 45);
const difficultyCardTextColour = Color.fromARGB(255, 210, 233, 227);
const difficultyCardHeaderColour = Color.fromARGB(255, 138, 227, 255);

const fourthHeaderStyle = TextStyle(
  fontFamily: "Azonix",
  fontSize: 40,
  color: Color.fromARGB(255, 156, 236, 81),
  shadows: <Shadow>[
    Shadow(
      offset: Offset(4.0, 2.0),
      blurRadius: 3.0,
      color: Color.fromARGB(255, 188, 188, 188),
    ),
  ],
);
const headerStyle = TextStyle(
  fontFamily: "Azonix",
  fontSize: 40,
  color: Color.fromARGB(255, 245, 200, 82),
  shadows: <Shadow>[
    Shadow(
      offset: Offset(4.0, 2.0),
      blurRadius: 5.0,
      color: Color.fromARGB(255, 82, 82, 82),
    ),
  ],
);
const bodyFont =
    TextStyle(fontFamily: "Catamaran", fontSize: 20, color: Colors.white);
const provideFont = TextStyle(fontFamily: "Catamaran", fontSize: 16);

final outlineText1 = Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      'Personalised learning to your preferred pace, skill level, and topic interests',
      style: TextStyle(
        fontSize: 18,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = const Color.fromARGB(255, 1, 85, 87),
      ),
      textAlign: TextAlign.right,
    ),
    // Solid text as fill.
    const Text(
      'Personalised learning to your preferred pace, skill level, and topic interests',
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 210, 233, 227),
      ),
      textAlign: TextAlign.right,
    ),
  ],
);

final outlineText2 = Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      'Latest cyberthreat info from leading experts in Singapore',
      style: TextStyle(
        fontSize: 18,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = const Color.fromARGB(255, 1, 85, 87),
      ),
      textAlign: TextAlign.right,
    ),
    // Solid text as fill.
    const Text(
      'Latest cyberthreat info from leading experts in Singapore',
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 210, 233, 227),
      ),
      textAlign: TextAlign.right,
    ),
  ],
);

final outlineText3 = Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      'Hands-on simulations specific to each vulnerability',
      style: TextStyle(
        fontSize: 18,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = const Color.fromARGB(255, 1, 85, 87),
      ),
      textAlign: TextAlign.right,
    ),
    // Solid text as fill.
    const Text(
      'Hands-on simulations specific to each vulnerability',
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 210, 233, 227),
      ),
      textAlign: TextAlign.right,
    ),
  ],
);

const cardTitleStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: difficultyCardHeaderColour);

const cardBodyStyle = TextStyle(
    fontFamily: "Catamaran", fontSize: 16, color: difficultyCardTextColour);
const cardLinkStyle = TextStyle(
    fontFamily: "Catamaran-SemiBold",
    fontSize: 16,
    decoration: TextDecoration.underline,
    color: difficultyCardTextColour);

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    // Build widgets for home page

    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran"));

    final beginnerCard = InkWell(
        child: Container(
            constraints: const BoxConstraints(
                minWidth: 150, maxWidth: 220, minHeight: 280),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: difficultyCardColour,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 133, 132, 132),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(6, 6)),
              ],
            ),
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Beginner', style: cardTitleStyle),
                ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(40),
                    child: Image.network('img/pawn.jpg', fit: BoxFit.cover),
                  ),
                ),
                const Text(
                    'Suited for: Primary/Secondary students and senior citizens',
                    style: cardBodyStyle),
                const Text('Click to begin!', style: cardLinkStyle)
              ],
            )),
        onTap: () {
          Get.toNamed('/spring_beginner');
        });

    final intermediateCard = Container(
        constraints:
            const BoxConstraints(minWidth: 150, maxWidth: 220, minHeight: 280),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: difficultyCardColour,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 133, 132, 132),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(6, 6)),
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Intermediate', style: cardTitleStyle),
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(40),
                child: Image.network('img/bishop.jpg', fit: BoxFit.cover),
              ),
            ),
            const Text(
                'Suited for: People with 2-3 years of experience with cybersecurity',
                style: cardBodyStyle),
            const Text('Click to begin!', style: cardLinkStyle)
          ],
        ));

    final advancedCard = InkWell(
      //splashColor: Colors.yellow,
      child: Container(
          constraints: const BoxConstraints(
              minWidth: 150, maxWidth: 220, minHeight: 280),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: difficultyCardColour,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 133, 132, 132),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(6, 6)),
            ],
          ),
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Advanced', style: cardTitleStyle),
              ClipOval(
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(40),
                  child: Image.network('img/knight.jpg', fit: BoxFit.cover),
                ),
              ),
              const Text(
                  'Suited for: Professionals and industry cybersecurity experts',
                  style: cardBodyStyle),
              const Text('Click to begin!', style: cardLinkStyle)
            ],
          )),
      onTap: () {
        Get.toNamed('/advanced');
      },
      //  onHover: (isHovering) {
      //   if (isHovering) {
      //     difficultyCardColour = const Color.fromARGB(255, 211, 29, 29);
      //   } else {
      //     difficultyCardColour = const Color.fromARGB(255, 45, 45, 45);
      //   }
      // }
    );

    final firstColText = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(80),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Tackle the Latest Cyberthreat',
              style: headerStyle,
            ),
            Padding(padding: EdgeInsets.all(20)),
            Text(
                'Explore cyberthreats and learn to defend yourself against them with NCLHub',
                style: bodyFont),
          ]),
    );

    final secondColText = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(80),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              'Why NCLHub?',
              style: headerStyle,
            ),
            const Padding(padding: EdgeInsets.all(10)),
            outlineText1,
            const Padding(padding: EdgeInsets.all(10)),
            outlineText2,
            const Padding(padding: EdgeInsets.all(10)),
            outlineText3
          ]),
    );

    final provideFirstCard = Container(
        constraints: const BoxConstraints(maxWidth: 140, minHeight: 150),
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'img/homepage_icons/video.svg',
              height: 40,
              width: 40,
              fit: BoxFit.fitWidth,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Comprehensive step-by-step videos',
                  style: TextStyle(
                    fontSize: 14,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = const Color.fromARGB(255, 1, 85, 87),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Solid text as fill.
                const Text(
                  'Comprehensive step-by-step videos',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 210, 233, 227),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ));
    final provideSecondCard = Container(
        constraints: const BoxConstraints(maxWidth: 140, minHeight: 150),
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'img/homepage_icons/school.svg',
              height: 40,
              width: 40,
              fit: BoxFit.fitWidth,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Information on the latest cyberthreats from experts',
                  style: TextStyle(
                    fontSize: 14,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = const Color.fromARGB(255, 1, 85, 87),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Solid text as fill.
                const Text(
                  'Information on the latest cyberthreats from experts',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 210, 233, 227),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ));
    final provideThirdCard = Container(
        constraints: const BoxConstraints(maxWidth: 140, minHeight: 150),
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'img/homepage_icons/virus.svg',
              height: 40,
              width: 40,
              fit: BoxFit.fitWidth,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Controlled testbeds to simulate attacks in real-time',
                  style: TextStyle(
                    fontSize: 14,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = const Color.fromARGB(255, 1, 85, 87),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Solid text as fill.
                const Text(
                  'Controlled testbeds to simulate attacks in real-time',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 210, 233, 227),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ));
    final thirdColText = Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.all(50),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'What We Provide',
              style: headerStyle,
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                provideFirstCard,
                provideSecondCard,
                provideThirdCard
              ],
            ),
          ]),
    );

    final firstColLeft = Stack(
      children: <Widget>[
        CustomPaint(
          size: const Size(600, 300),
          painter: FirstTrianglePainter(),
        ),
        firstColText,
      ],
    );
    final secondColLeft = Stack(
      children: <Widget>[
        CustomPaint(
          size: const Size(600, 300),
          painter: SecondTrianglePainter(),
        ),
        secondColText,
      ],
    );
    final thirdColLeft = Stack(
      children: <Widget>[
        CustomPaint(
          size: const Size(600, 300),
          painter: ThirdTrianglePainter(),
        ),
        thirdColText,
      ],
    );

    // Code for main blocks on homepage
    final firstColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 100, 80, 50),
      color: const Color.fromARGB(255, 33, 109, 110),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          firstColLeft,
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.network('img/cyberthreat.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );

    final secondColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.network('img/whyncl.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
          secondColLeft,
        ],
      ),
    );

    final thirdColumn = Container(
      padding: const EdgeInsets.fromLTRB(00, 30, 20, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          thirdColLeft,
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100)),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: Image.network('img/provide.jpg', fit: BoxFit.cover),
              ),
            ),
          ),
        ],
      ),
    );

    final fourthColumn = Stack(children: <Widget>[
      Align(
        alignment: Alignment.center,
        child: CustomPaint(
          size: const Size(1200, 300),
          painter: FourthTrianglePainter(),
        ),
      ),
      Align(
        alignment: Alignment.center,
        child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            padding: const EdgeInsets.fromLTRB(80, 80, 80, 200),
            child: const Center(
              child: Text(
                'Pick a skill level and start learning today!',
                style: fourthHeaderStyle,
                textAlign: TextAlign.center,
              ),
            )),
      )
    ]);

    final fifthColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[beginnerCard, intermediateCard, advancedCard],
      ),
    );

    final footer = Container(
      padding: const EdgeInsets.all(8.0),
      height: 70,
      color: const Color.fromARGB(255, 7, 31, 4),
      alignment: Alignment.center,
      child: const Text("Sitemap"),
    );

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
            Get.toNamed('/');
            // route to homepage
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
              firstColumn,
              secondColumn,
              thirdColumn,
              fourthColumn,
              fifthColumn,
              footer
            ],
          ),
        ),
      ),
    );
  }

  void _launchNCLwebsiteURL() {
    String url = 'https://ncl.sg';
    html.window.open(url, '_blank');
  }
}
