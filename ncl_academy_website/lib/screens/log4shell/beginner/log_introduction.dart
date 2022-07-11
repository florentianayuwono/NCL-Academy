import '../../../import.dart';

// Constructor:
// IntroductionTemplate(this.title, this.level, this.subTitle, this.textTitle,
//    this.videoUrl, this.textMaterial, this.nextPage);
class Log4ShellIntroPage extends StatelessWidget {
  const Log4ShellIntroPage();

  @override
  Widget build(BuildContext context) {
    return IntroductionTemplate(
        "Log4shell",
        "Beginner Level",
        "Getting Started",
        "An Introduction to Log4shell",
        "https://youtu.be/rgYZ4CLe2Vg",
        "This is explanation about log4shell",
        "/log_setting_up");
  }
}
