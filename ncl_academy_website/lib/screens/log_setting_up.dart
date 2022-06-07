import 'package:flutter/material.dart';
import 'templates/setting_and_execution_template.dart';

class LogSettingUpPage extends StatelessWidget {
  const LogSettingUpPage();

  @override
  Widget build(BuildContext context) {
    return SettingExecutionTemplate(
        "Setting up Log4shell Environment",
        "Beginner Level",
        "How to set up the environment?",
        "Text title here.",
        "This is explanation on how to set up log4shell environment",
        "code here",
        "summary here",
        "log_introduction",
        "/log_references");
  }
}
