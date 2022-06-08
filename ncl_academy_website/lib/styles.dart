import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:html' as html;

// App bar styles
const appBarColour = Color.fromARGB(255, 7, 31, 4);

// App bar
class BaseAppBar extends StatefulWidget implements PreferredSizeWidget {
  BaseAppBar() : preferredSize = Size.fromHeight(70.0);
  @override
  final Size preferredSize;
  @override
  _BaseAppBarState createState() => _BaseAppBarState();
}

class _BaseAppBarState extends State<BaseAppBar> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran", fontSize: 15.0));
    return AppBar(
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
              onPressed: () => launchNCLwebsiteURL,
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
    );
  }
}

// Custom painters for custom triangles in background of homepage
class FirstTrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 109, 110)
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
      ..color = const Color.fromARGB(255, 33, 109, 110)
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

// Header styles in homepage
const headerStyle = TextStyle(
  fontFamily: "Azonix",
  fontSize: 40,
  color: Color.fromARGB(255, 245, 200, 82),
  shadows: <Shadow>[
    Shadow(
      offset: Offset(4.0, 2.0),
      blurRadius: 5.0,
      color: Color.fromARGB(80, 0, 0, 0),
    ),
  ],
);
const headerColour = Color.fromARGB(255, 245, 200, 82);

const fourthHeaderStyle = TextStyle(
  fontFamily: "Azonix",
  fontSize: 40,
  color: Color.fromARGB(255, 156, 236, 81),
  shadows: <Shadow>[
    Shadow(
      offset: Offset(4.0, 2.0),
      blurRadius: 3.0,
      color: Color.fromARGB(80, 0, 0, 0),
    ),
  ],
);

// Colours and styles for difficulty cards in homepage
const difficultyCardColour = Color.fromARGB(255, 45, 45, 45);
const difficultyCardHoverColour = Color.fromARGB(255, 63, 74, 74);
const difficultyCardTextColour = Color.fromARGB(255, 210, 233, 227);
const difficultyCardHeaderColour = Color.fromARGB(255, 245, 200, 82);
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

// Fonts for content text in homepage
const bodyFont =
    TextStyle(fontFamily: "Catamaran", fontSize: 20, color: Colors.white);
const provideFont = TextStyle(fontFamily: "Catamaran", fontSize: 16);

// Styles for questions in help page
const questionTitleStyle = TextStyle(
    fontFamily: "Catamaran",
    height: 3,
    fontWeight: FontWeight.w700,
    color: Colors.white);

const questionBodyStyle =
    TextStyle(fontFamily: "Catamaran", height: 1.5, color: Colors.white);

// Styles for content pages
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

void launchNCLwebsiteURL() {
  String url = 'https://ncl.sg';
  html.window.open(url, '_blank');
}

// Footer
final footer = Container(
  padding: const EdgeInsets.all(8.0),
  height: 70,
  color: const Color.fromARGB(255, 7, 31, 4),
  alignment: Alignment.center,
  child: const Text("Sitemap"),
);
