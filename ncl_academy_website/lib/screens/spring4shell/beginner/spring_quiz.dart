import '../../../import.dart';

class Spring4ShellQuiz extends StatelessWidget {
  const Spring4ShellQuiz({Key? key}) : super(key: key);

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
            titleColumn("Quiz", "Spring4shell"),
            const Question(questionText: 'What is spring4shell?', answerList: {
              'A vulnerability ': true,
              'A firewall setting': false,
              'A computer virus': false,
              'An application': false
            }),
            const Question(
                questionText: 'What does \'spring\' refer to in Spring4shell?',
                answerList: {
                  'A season': false,
                  'An open-source web-application framework': true,
                  'An open-source network logger': false,
                  'A virus': false
                }),
            const Question(questionText: 'What is data binding?', answerList: {
              'The process of binding different data types': false,
              'The process of comparing different data types across platforms':
                  false,
              'The process of binding java objects across platforms': true,
              'The process of comparing java objects across platforms': false
            }),
            const Question(
                questionText:
                    'Apart from the presence of spring4shell, what else is required for a hacker to conduct an attack? ',
                answerList: {
                  'The app being targeted must also run-on Tomcat as a web archive (WAR) deployment':
                      true,
                  'The computer should not have any antivirus installed': false,
                  'The app being targeted must also run-on WebSphere as a web archive (WAR) deployment':
                      false,
                  'The computer should have the log4j software installed as well':
                      false
                }),
            const Question(
                questionText:
                    'Which .xml file should you select for setting up the spring4shell vulnerability?',
                answerList: {
                  'Python_spring4shell.xml ': false,
                  'Spring4shell_cyberraptor.xml': false,
                  'Spring4shell_server.xml': false,
                  'Client_spring4shell.xml': true
                }),
            const Question(
                questionText:
                    'Which command will create a virtual environment for you in your computer?',
                answerList: {
                  'source venv/bin/activate': false,
                  'python3.9 -m venv venv': true,
                  'pip install -r requirements ': false,
                  'git commit -m “create environment': false
                }),
            const Question(
                questionText:
                    'Which platform is used to host the web application in the simulation?',
                answerList: {
                  'Podman': false,
                  'LXC': false,
                  'Docker': true,
                  'Hyper-V': false
                }),
            const Question(
                questionText: 'What is a shell in computer programming?',
                answerList: {
                  'A sea shell': false,
                  'A user interface': true,
                  'A remote network': false,
                  'A virus': false
                }),
            const Question(
                questionText: 'Why is the root shell of a system so important?',
                answerList: {
                  'It gives you a better graphic user interface': false,
                  'It gives you administrative privileges to a system': true,
                  'It only contains the most important files of the system':
                      false,
                  'It does not have very high security and can be easily breached':
                      false
                }),
            const Question(
                questionText: 'What is Remote Code Execution?',
                answerList: {
                  'The hacker uses a special remote to enter code': false,
                  'The hacker injects malicious code from another computer into his own computer':
                      true,
                  'The hacker executes malicious code on his own computer':
                      false,
                  'The hacker injects malicious code into another computer from his own computer':
                      true
                }),
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
                            PrevButton(prevPage: 'log_setting_up_3'),
                            NextButton(nextPage: 'log_reference')
                          ]))
          ],
        ))));
  }
}
