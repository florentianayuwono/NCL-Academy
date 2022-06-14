import '../../import.dart';

class BeginnerPage extends StatelessWidget {
  const BeginnerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChapSelectTemplate("Beginner", [
      "Starter pack: Introduction to cybersecurity",
      "Spring4Shell"
    ], [
      ["vulnerabilities", "log4shell", "Spring4shell"]
    ], [
      ["/beginner", "/log_introduction", "/spring_introduction"]
    ]);
  }
}
