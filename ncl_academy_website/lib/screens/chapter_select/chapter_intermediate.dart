import '../../import.dart';

class IntermediatePage extends StatelessWidget {
  const IntermediatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChapSelectTemplate("Intermediate", [
      "Starter pack: Introduction to cybersecurity",
      "Spring4Shell"
    ], [
      ["Vulnerabilities", "log4shell", "Spring4shell"]
    ], [
      ["/intermediate", "/log_introduction", "/spring_introduction"]
    ]);
  }
}
