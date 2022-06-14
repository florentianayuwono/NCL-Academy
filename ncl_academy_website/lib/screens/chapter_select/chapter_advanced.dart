import '../../import.dart';

class AdvancedPage extends StatelessWidget {
  const AdvancedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChapSelectTemplate("Advanced", [
      "Spring4Shell"
    ], [
      ["vulnerabilities", "log4shell", "Spring4shell"]
    ], [
      ["/advanced", "/log_introduction", "/spring_introduction"]
    ]);
  }
}
