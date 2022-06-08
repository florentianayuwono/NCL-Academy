import 'package:flutter/material.dart';
import 'package:get/get.dart';

/*
This dart file contains the stylized 'Prev' and 'Next' arrow button widgets for the content pages.
Import the dart file with the statement: import 'package:ncl_academy_website/buttons.dart';
Include the previous and next page name when calling the button widgets.
Example usage: PrevButton(prevPage: '/spring_beginner') => the button will navigate to '/spring_beginner'
NextButton(nextPage: '/spring_references') => the button will navigate to '/spring_references'
 */

class PrevButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(size.width * 0.2074500, size.height * 0.3999500)
      ..lineTo(size.width * 0.8513000, size.height * 0.3989500)
      ..lineTo(size.width * 0.7519000, size.height * 0.5003000)
      ..lineTo(size.width * 0.8494000, size.height * 0.6029000)
      ..lineTo(size.width * 0.2003500, size.height * 0.6048000)
      ..lineTo(size.width * 0.1007000, size.height * 0.5017500)
      ..lineTo(size.width * 0.2074500, size.height * 0.3999500)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class NextButtonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..moveTo(size.width * 0.1067500, size.height * 0.3999500)
      ..lineTo(size.width * 0.7506000, size.height * 0.3989500)
      ..lineTo(size.width * 0.8469000, size.height * 0.4984000)
      ..lineTo(size.width * 0.7487000, size.height * 0.6029000)
      ..lineTo(size.width * 0.1034500, size.height * 0.6048000)
      ..lineTo(size.width * 0.2024500, size.height * 0.4998500)
      ..lineTo(size.width * 0.1067500, size.height * 0.3999500)
      ..close();
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class PrevButton extends StatefulWidget {
  final String prevPage;
  PrevButton({Key? key, required this.prevPage}) : super(key: key);
  @override
  _PrevButtonState createState() => _PrevButtonState();
}

class _PrevButtonState extends State<PrevButton> {
  var PrevButtonColor = const Color.fromARGB(255, 223, 62, 62);

  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      height: 200,
      width: 200,
      child: ClipPath(
        clipper: PrevButtonClipper(),
        child: (TextButton(
          style: TextButton.styleFrom(
            backgroundColor: PrevButtonColor,
          ),
          child: const Text("Prev",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold)),
          // Navigate to previous page, input previous page's name here
          onPressed: () => Get.toNamed(widget.prevPage),
          onHover: (isHovered) {
            setState(() {
              PrevButtonColor = isHovered
                  ? const Color.fromARGB(255, 255, 68, 102)
                  : const Color.fromARGB(255, 223, 62, 62);
            });
          },
        )),
      ),
    ));
  }
}

class NextButton extends StatefulWidget {
  final String nextPage;
  NextButton({Key? key, required this.nextPage}) : super(key: key);

  @override
  _NextButtonState createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  var nextButtonColor = const Color.fromARGB(255, 0, 168, 107);

  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: ClipPath(
            clipper: NextButtonClipper(),
            child: (TextButton(
              style: TextButton.styleFrom(
                backgroundColor: nextButtonColor,
              ),
              child: const Text("Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold)),
              // Navigate to previous page, input previous page's name here
              onPressed: () => Get.toNamed(widget.nextPage),
              onHover: (isHovered) {
                setState(() {
                  nextButtonColor = isHovered
                      ? const Color.fromARGB(255, 2, 199, 127)
                      : const Color.fromARGB(255, 0, 168, 107);
                });
              },
            ))),
      ),
    );
  }
}
