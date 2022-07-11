import '../import.dart';

Widget chapterTitle(String title, String level) => Column(children: [
      Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: titleStyle,
          textAlign: TextAlign.center,
        ),
      ),
      Align(
          alignment: Alignment.center,
          child: Text(level, style: explanationBodyStyle))
    ]);

class QuizTemplate extends StatelessWidget {
  const QuizTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    titleColumn(String bigTitle, String level) =>
        ResponsiveWidget.isSmallScreen(context)
            ? Container(
                alignment: Alignment.center,
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.1,
                    50,
                    MediaQuery.of(context).size.width * 0.1,
                    0),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child:
                      Column(children: <Widget>[chapterTitle(bigTitle, level)]),
                ),
              )
            : Stack(children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(150, 50, 150, 0),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    child: Column(
                        children: <Widget>[chapterTitle(bigTitle, level)]),
                  ),
                ),
                Positioned(
                    left: 40,
                    bottom: 40,
                    child: FloatingActionButton.extended(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      label: const Text("Chapter Select",
                          style: TextStyle(
                              fontFamily: "Montserrat", color: Colors.black)),
                      hoverElevation: 10,
                      backgroundColor: const Color.fromARGB(255, 210, 233, 227),
                      hoverColor: const Color.fromARGB(255, 244, 255, 252),
                      onPressed: () {
                        Get.toNamed('/beginner');
                      },
                    ))
              ]);
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 81, 83),
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                backgroundColor: appBarColour,
                elevation: 0,
                title: Text(
                  'COLLEGIUM PYXISIA',
                  style: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              )
            : responsiveAppBar(),
        drawer: const AppBarDrawer(),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            titleColumn("Quiz", "Log4shell"),
            const Question(
              questionText: 'What is log4shell?',
              answerList: [
                'A seashell',
                'A vulnerability',
                'A type of wood',
                'A computer virus'
              ],
              answerIndex: 1,
            ),
            const Question(
              questionText: 'What does \'log\' refer to in log4shell?',
              answerList: [
                'A logger function in Java called Log4j',
                'An equipment used for logging wood',
                'A login function in Java called Log',
                'Audit log in Java programs'
              ],
              answerIndex: 0,
            ),
          ],
        ))));
  }
}

class Question extends StatefulWidget {
  final String questionText;
  final List<String> answerList;
  final int answerIndex;

  const Question(
      {Key? key,
      required this.questionText,
      required this.answerList,
      required this.answerIndex})
      : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

checkAnswer(int selectedAnswer, int correctAnswer) {
  if (selectedAnswer == correctAnswer) return Colors.green;
  return Colors.red;
}

class _QuestionState extends State<Question> {
  var answerColor = Colors.white;
  var defaultAnswerColor = Colors.white;
  var correctAnswerColor = Colors.green;
  var wrongAnswerColor = Colors.red;
  var hoverAnswerColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    bool _pressed = false;
    bool _hovered = false;
    return Column(
      children: [
        Text(
          widget.questionText,
          style: questionTitleStyle,
        ),
        for (var i = 0; i < widget.answerList.length; i++)
          Center(
              child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                      onHover: (isHovered) {
                        setState(() {
                          _hovered = true;
                        });
                      },
                      onTap: () => setState(() {
                            _pressed = true;
                          }),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                            color:
                                //(this )
                                //     ? wrongAnswerColor
                                //     :
                                defaultAnswerColor),
                        child: Text(
                          widget.answerList[i],
                          style: TextStyle(color: Colors.black),
                        ),
                      ))))
      ],
    );
  }
}
