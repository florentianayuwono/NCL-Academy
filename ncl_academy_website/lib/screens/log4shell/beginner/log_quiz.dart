import '../../../import.dart';

class Log4ShellQuiz extends StatelessWidget {
  const Log4ShellQuiz({Key? key}) : super(key: key);

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
            titleColumn("Quiz", "Log4shell"),
            const Question(questionText: 'What is log4shell?', answerList: {
              'A seashell': false,
              'A vulnerability': true,
              'A type of wood': false,
              'A computer virus': false
            }),
            const Question(
                questionText: 'What does \'log\' refer to in log4shell?',
                answerList: {
                  'A logger function in Java called Log4j': true,
                  'An equipment used for logging wood': false,
                  'A login function in Java called Log': false,
                  'Audit log in Java programs': false
                }),
            const Question(
                questionText: 'What is Log4j used for?',
                answerList: {
                  'Monitoring network functionality': true,
                  'Conducting cyber-attacks on target hosts': false,
                  'Shutting down a system': false,
                  'Create network connections between the attacker and the target host':
                      false
                }),
            const Question(
                questionText:
                    'What is the protocol used to handle JNDI queries?',
                answerList: {
                  'TLS protocol': false,
                  'Keycloak protocol': false,
                  'LDAP protocol': true,
                  'Spring Security protocol': false
                }),
            const Question(
                questionText:
                    'Why do we need to create a virtual environment to simulate the log4shell vulnerability?',
                answerList: {
                  'Because the vulnerability does not run on our normal operating systems':
                      false,
                  'To ensure that the vulnerability being simulated does not affect our computer':
                      true,
                  'To save the physical space and cost of running the vulnerability':
                      false,
                  'To change the effects of the vulnerability': false
                }),
            const Question(
                questionText:
                    'What is the next step after creating the virtual environment?',
                answerList: {
                  'Installing the requirements': false,
                  'Running the python client': false,
                  'Activating the environment': true,
                  'Logging into the Virtual Machine': false
                }),
            const Question(
                questionText:
                    'What happens if you use SSH to login to the virtual machine instead of the console?',
                answerList: {
                  'The vulnerability will not be simulated correctly': false,
                  'The network speed will be reduced': false,
                  'You will not be able to login to the virtual machine': false,
                  'It shows the “bad host key” message': true
                }),
            const Question(
                questionText:
                    'What is the job of the Netcat reverse shell in the simulation?',
                answerList: {
                  'It will send messages from your normal computer to the virtual machine':
                      false,
                  'It will send commands to the web application being hosted on Docker':
                      false,
                  'It will create a connection between the attacker and the target host':
                      true,
                  'It will inject a virus into the web application being hosted on Docker':
                      false
                }),
            const Question(
                questionText: 'What does RCE stand for?',
                answerList: {
                  'Remote Control Execution': false,
                  'Remote Code Execution': true,
                  'Reboot Chrome Execution': false,
                  'Random Code Error': false
                }),
            const Question(
                questionText: 'What is the full form of LDAP?',
                answerList: {
                  'Lightweight Directory Access Protocol': true,
                  'Line Directory Access Protocol': false,
                  'Lightweight Data Append Protocol': false,
                  'Local Data Access Protocol': false
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
