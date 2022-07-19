import '../../../import.dart';

class Spring4ShellQuiz extends StatelessWidget {
  const Spring4ShellQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
        "Spring4shell",
        const [
          Question(questionText: 'What is spring4shell?', answerList: {
            'A vulnerability ': true,
            'A firewall setting': false,
            'A computer virus': false,
            'An application': false
          }),
          Question(
              questionText: 'What does \'spring\' refer to in Spring4shell?',
              answerList: {
                'A season': false,
                'An open-source web-application framework': true,
                'An open-source network logger': false,
                'A virus': false
              }),
          Question(questionText: 'What is data binding?', answerList: {
            'The process of binding different data types': false,
            'The process of comparing different data types across platforms':
                false,
            'The process of binding java objects across platforms': true,
            'The process of comparing java objects across platforms': false
          }),
          Question(
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
          Question(
              questionText:
                  'Which .xml file should you select for setting up the spring4shell vulnerability?',
              answerList: {
                'Python_spring4shell.xml ': false,
                'Spring4shell_cyberraptor.xml': false,
                'Spring4shell_server.xml': false,
                'Client_spring4shell.xml': true
              }),
          Question(
              questionText:
                  'Which command will create a virtual environment for you in your computer?',
              answerList: {
                'source venv/bin/activate': false,
                'python3.9 -m venv venv': true,
                'pip install -r requirements ': false,
                'git commit -m “create environment': false
              }),
          Question(
              questionText:
                  'Which platform is used to host the web application in the simulation?',
              answerList: {
                'Podman': false,
                'LXC': false,
                'Docker': true,
                'Hyper-V': false
              }),
          Question(
              questionText: 'What is a shell in computer programming?',
              answerList: {
                'A sea shell': false,
                'A user interface': true,
                'A remote network': false,
                'A virus': false
              }),
          Question(
              questionText: 'Why is the root shell of a system so important?',
              answerList: {
                'It gives you a better graphic user interface': false,
                'It gives you administrative privileges to a system': true,
                'It only contains the most important files of the system':
                    false,
                'It does not have very high security and can be easily breached':
                    false
              }),
          Question(questionText: 'What is Remote Code Execution?', answerList: {
            'The hacker uses a special remote to enter code': false,
            'The hacker injects malicious code from another computer into his own computer':
                true,
            'The hacker executes malicious code on his own computer': false,
            'The hacker injects malicious code into another computer from his own computer':
                true
          })
        ],
        "/spring_execution",
        "/spring_reference");
  }
}
