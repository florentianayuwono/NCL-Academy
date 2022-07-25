import '../../../import.dart';

class Log4ShellQuiz extends StatelessWidget {
  const Log4ShellQuiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QuizTemplate(
        "Log4shell",
        const [
          Question(questionText: 'What is log4shell?', answerList: {
            'A seashell': false,
            'A vulnerability': true,
            'A type of wood': false,
            'A computer virus': false
          }),
          Question(
              questionText: 'What does \'log\' refer to in log4shell?',
              answerList: {
                'A logger function in Java called Log4j': true,
                'An equipment used for logging wood': false,
                'A login function in Java called Log': false,
                'Audit log in Java programs': false
              }),
          Question(questionText: 'What is Log4j used for?', answerList: {
            'Monitoring network functionality': true,
            'Conducting cyber-attacks on target hosts': false,
            'Shutting down a system': false,
            'Create network connections between the attacker and the target host':
                false
          }),
          Question(
              questionText: 'What is the protocol used to handle JNDI queries?',
              answerList: {
                'TLS protocol': false,
                'Keycloak protocol': false,
                'LDAP protocol': true,
                'Spring Security protocol': false
              }),
          Question(
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
          Question(
              questionText:
                  'What is the next step after creating the virtual environment?',
              answerList: {
                'Installing the requirements': false,
                'Running the python client': false,
                'Activating the environment': true,
                'Logging into the Virtual Machine': false
              }),
          Question(
              questionText:
                  'What happens if you use SSH to login to the virtual machine instead of the console?',
              answerList: {
                'The vulnerability will not be simulated correctly': false,
                'The network speed will be reduced': false,
                'You will not be able to login to the virtual machine': false,
                'It shows the “bad host key” message': true
              }),
          Question(
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
          Question(questionText: 'What does RCE stand for?', answerList: {
            'Remote Control Execution': false,
            'Remote Code Execution': true,
            'Reboot Chrome Execution': false,
            'Random Code Error': false
          }),
          Question(questionText: 'What is the full form of LDAP?', answerList: {
            'Lightweight Directory Access Protocol': true,
            'Line Directory Access Protocol': false,
            'Lightweight Data Append Protocol': false,
            'Local Data Access Protocol': false
          }),
        ],
        "/log_setting_up_2",
        "/log_reference");
  }
}
