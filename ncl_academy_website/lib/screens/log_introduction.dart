import 'package:flutter/material.dart';
import 'templates/introduction_template.dart';

class Log4ShellIntroPage extends StatelessWidget {
  const Log4ShellIntroPage();

  @override
  Widget build(BuildContext context) {
    return IntroductionTemplate(
        "Log4shell",
        "Beginner Level",
        "Getting Started",
        "An Introduction to Log4shell",
        "This is explanation about log4shell",
        "/log_setting_up");
  }
}
