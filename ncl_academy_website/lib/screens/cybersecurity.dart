import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ncl_academy_website/main.dart';
import 'dart:html' as html;
import 'package:flutter/foundation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'templates/introduction_template.dart';

class CybersecurityPage extends StatelessWidget {
  const CybersecurityPage();

  @override
  Widget build(BuildContext context) {
    return IntroductionTemplate(
      "Introduction to Cybersecurity", "Beginner Level",
      "Getting Started", "What is cybersecurity?",
      "This is explanation about cybersecurity",
      "/spring_setting_up"
    );
  }
}
