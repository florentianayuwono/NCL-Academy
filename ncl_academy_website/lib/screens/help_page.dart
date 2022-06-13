import '../import.dart';

// Question widget with short answer (one liner)
class ShortQuestion extends StatelessWidget {
  final String question;
  final String answer;
  const ShortQuestion({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(question, style: questionTitleStyle),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(answer, style: questionBodyStyle),
        ),
      ],
    );
  }
}

// Question widget for 2 lines of answers
class LongQuestion extends StatelessWidget {
  final String question;
  final String answer;
  final String answer2;

  const LongQuestion(
      {required this.question, required this.answer, required this.answer2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Text(question, style: questionTitleStyle),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(answer, style: questionBodyStyle),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(answer2, style: questionBodyStyle),
        ),
      ],
    );
  }
}

final termsAndConditions = Column(
  children: const <Widget>[
    Align(
      alignment: Alignment.centerLeft,
      child: Text("Terms and Conditions", style: questionTitleStyle),
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: Text("The terms and conditions of NCLHub can be found here.",
          style: questionBodyStyle),
    ),
  ],
);

var phoneDetails = RichText(
  text: const TextSpan(style: questionBodyStyle, children: <TextSpan>[
    TextSpan(
        text: 'Phone: ',
        style: TextStyle(fontWeight: FontWeight.bold, height: 2)),
    TextSpan(text: '+65 6601 1056', style: TextStyle(height: 2))
  ]),
);

var addressDetails = RichText(
  text: const TextSpan(style: questionBodyStyle, children: <TextSpan>[
    TextSpan(
        text: 'Address: ',
        style: TextStyle(fontWeight: FontWeight.bold, height: 2)),
    TextSpan(
        text: 'Innovation 4.0, 3 Research Link, NUS, Singapore 117602',
        style: TextStyle(height: 2))
  ]),
);

var emailDetails = RichText(
  text: const TextSpan(style: questionBodyStyle, children: <TextSpan>[
    TextSpan(
        text: 'Email: ',
        style: TextStyle(fontWeight: FontWeight.bold, height: 2)),
    TextSpan(text: 'support@ncl.sg', style: TextStyle(height: 2))
  ]),
);

final contactColumn = Container(
  alignment: Alignment.topLeft,
  padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
  child: Column(children: [
    Align(
      alignment: Alignment.centerLeft,
      child: phoneDetails,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: addressDetails,
    ),
    Align(
      alignment: Alignment.centerLeft,
      child: emailDetails,
    ),
  ]),
);

class HelpPage extends StatelessWidget {
  const HelpPage();

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
        primary: Theme.of(context).colorScheme.onPrimary,
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontFamily: "Catamaran"));
    const appBarColour = Color.fromARGB(255, 7, 31, 4);

    final titleColumn = Stack(children: [
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: const Text(
            "Help",
            style: titleStyle,
          )),
      Positioned(
        left: 40,
        bottom: 20,
        child: FloatingActionButton.extended(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            label: const Text("Back",
                style:
                    TextStyle(fontFamily: "Montserrat", color: Colors.black)),
            hoverElevation: 10,
            backgroundColor: const Color.fromARGB(255, 210, 233, 227),
            hoverColor: const Color.fromARGB(255, 244, 255, 252),
            extendedPadding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
            onPressed: () => Get.back()),
      )
    ]);

    final faqHeader = Container(
        padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
        alignment: Alignment.centerLeft,
        child: const Text("FAQ", style: cardTitleStyle));

    final contactUsHeader = Container(
        padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
        alignment: Alignment.centerLeft,
        child: const Text("Contact Us", style: cardTitleStyle));

    final textColumn = Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
        child: Column(
          children: <Widget>[
            const LongQuestion(
                question: "What is NCLHub?",
                answer:
                    "We think NCLHub is an accessible way for you to learn about cybersecurity and how to defend yourselves against cyberthreats by providing information on the threats, and testbeds to simulate such attacks.",
                answer2:
                    "Are you just starting out on learning cybersecurity? Are you an industry professional looking for testbeds? NCLHub can help you!"),
            const ShortQuestion(
              question: "How do I use NCLHub?",
              answer:
                  "Pick a skill level based on your experience with cybersecurity, and then select a topic that interests you. You can learn about cyberthreats, and how to set up and execute testbeds to simulate attacks through the videos provided and/or reading the descriptions provided, whichever works best for you!",
            ),
            const ShortQuestion(
                question: "Who manages NCLHub?",
                answer:
                    "We are National Cybersecurity R&D Lab (NCL), and we provide computing resources, repeatable and controllable experimentation environments, as well as application services. Our goal in creating NCLHub is to allow people of all walks in life to learn cybersecurity."),
            const ShortQuestion(
                question: "Why aren't the pages working?",
                answer:
                    "If you are experiencing persisting technical problems, please contact us using the info below, and explain to us what difficulties you are running into."),
            const ShortQuestion(
                question: "Why isn't ___ topic available?",
                answer:
                    "If you have any cyberthreats you want NCLHub to cover, please email us with your suggestions. We work hard to provide accurate and comprehensive cybersecurity information, and this takes time and effort so we hope to have your patience and understanding."),
            termsAndConditions
          ],
        ));

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 81, 83),
      appBar: BaseAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              titleColumn,
              faqHeader,
              textColumn,
              // fourthColumn,
              contactUsHeader,
              contactColumn,
              footer
            ],
          ),
        ),
      ),
    );
  }
}
