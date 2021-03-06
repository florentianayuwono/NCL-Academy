import '../import.dart';

/*
This is the template for a quiz page in this web app.
Use Question widgets in this dart file to create quiz questions.
Question is in String format, answers are in Map<String, bool> format
E.g. {answer1:false, answer2:false, answer3:true}, where answer3 is the correct
answer.

Refer to to existing log/spring4shell quiz pages in their respective chapter 
folders for examples of implementation.
*/

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
  String topic; // Topic for this quiz
  List<Widget> questions; // List of Question widgets aka the quiz questions
  String previous; // Previous page
  String next; // Next page
  QuizTemplate(this.topic, this.questions, this.previous, this.next);

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
            : Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(150, 50, 150, 0),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child:
                      Column(children: <Widget>[chapterTitle(bigTitle, level)]),
                ),
              );
    return Scaffold(
        floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(20, 100, 0, 0),
            child: FloatingActionButton.extended(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              label: const Text("Chapter Select",
                  style:
                      TextStyle(fontFamily: "Montserrat", color: Colors.black)),
              hoverElevation: 10,
              backgroundColor: const Color.fromARGB(255, 210, 233, 227),
              hoverColor: const Color.fromARGB(255, 244, 255, 252),
              onPressed: () {
                Get.toNamed('/beginner');
              },
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
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
            titleColumn("Quiz", topic),
            for (var i = 0; i < questions.length; i++) questions[i],
            Container(
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.2,
                    20,
                    MediaQuery.of(context).size.width * 0.2,
                    20),
                child: ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            PrevButton(prevPage: 'log_setting_up_3'),
                            NextButton(nextPage: 'log_reference')
                          ])
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            PrevButton(prevPage: previous),
                            NextButton(nextPage: next)
                          ]))
          ],
        ))));
  }
}

class Question extends StatefulWidget {
  final String questionText;
  final Map<String, bool> answerList;

  const Question({
    Key? key,
    required this.questionText,
    required this.answerList,
  }) : super(key: key);

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String selectedAnswer = '';
  var defaultAnswerColor = Colors.white;
  var correctAnswerColor = Colors.green;
  var wrongAnswerColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03)),
        Text(
          widget.questionText,
          style: questionTitleStyle,
          textAlign: TextAlign.center,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: widget.answerList.entries.map<Widget>((entry) {
              return FittedBox(
                fit: BoxFit.scaleDown,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAnswer = entry.key;
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    margin: const EdgeInsets.all(8.0),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                        color: selectedAnswer == entry.key
                            ? (entry.value ? Colors.green : Colors.red)
                            : Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.blue)),
                    child: Center(
                      child: Text(
                        entry.key,
                        style: provideFont,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              );
            }).toList()),
        Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03))
      ],
    );
  }
}
