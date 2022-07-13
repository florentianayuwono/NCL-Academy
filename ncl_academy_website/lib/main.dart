import 'import.dart';

void main() {
  // Remove leading hash in address
  setPathUrlStrategy();

  // Add routes here
  runApp(GetMaterialApp(
    // To implement: handle unknown route by navigating to unknown route page
    //unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),

    initialRoute: '/',
    getPages: [
      GetPage(
          name: '/',
          page: () => const HomePage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/help',
          page: () => const HelpPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/log_introduction',
          page: () => const Log4ShellIntroPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/log_setting_up',
          page: () => LogSettingUpPage1(),
          transition: Transition.noTransition),
      GetPage(
          name: '/log_setting_up_3',
          page: () => const LogSettingUpPage3(),
          transition: Transition.noTransition),
      GetPage(
          name: '/log_reference',
          page: () => const LogReferencePage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/spring_introduction',
          page: () => const SpringIntroductionPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/spring_setting_up',
          page: () => SpringSettingUpPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/spring_reference',
          page: () => const SpringReferencePage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/spring4shell_execution',
          page: () => SpringExecutionPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/beginner',
          page: () => const BeginnerPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/intermediate',
          page: () => const IntermediatePage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/advanced',
          page: () => const AdvancedPage(),
          transition: Transition.noTransition),
      GetPage(
          name: '/cybersecurity',
          page: () => const CybersecurityPage(),
          transition: Transition.noTransition),
      // GetPage(
      //   name: '/new_page',
      //   page: () => NewPage(),
      //   transition: Transition.noTransition
      // ),
    ],
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  // Add new routes under routes:
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NCL Academy',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 229, 229, 229),
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/help': (context) => const HelpPage(),
        '/advanced': (context) => const AdvancedPage(),
        '/log_introduction': (context) => const Log4ShellIntroPage(),
        '/log_setting_up': (context) => LogSettingUpPage1(),
        '/log_setting_up_3': (context) => const LogSettingUpPage3(),
        '/log_reference': (context) => const LogReferencePage(),
        '/spring_introduction': (context) => const SpringIntroductionPage(),
        '/spring_setting_up': (context) => SpringSettingUpPage(),
        '/spring_reference': (context) => const SpringReferencePage(),
        '/cybersecurity': (context) => const CybersecurityPage(),
      },
    );
  }
}

final outlineText1 = Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      'Personalised learning to your preferred pace, skill level, and topic interests',
      style: TextStyle(
        fontSize: 18,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = const Color.fromARGB(255, 1, 85, 87),
      ),
      textAlign: TextAlign.right,
    ),
    // Solid text as fill.
    const Text(
      'Personalised learning to your preferred pace, skill level, and topic interests',
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 210, 233, 227),
      ),
      textAlign: TextAlign.right,
    ),
  ],
);

final outlineText2 = Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      'Latest cyberthreat info from leading experts in Singapore',
      style: TextStyle(
        fontSize: 18,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = const Color.fromARGB(255, 1, 85, 87),
      ),
      textAlign: TextAlign.right,
    ),
    // Solid text as fill.
    const Text(
      'Latest cyberthreat info from leading experts in Singapore',
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 210, 233, 227),
      ),
      textAlign: TextAlign.right,
    ),
  ],
);

final outlineText3 = Stack(
  children: <Widget>[
    // Stroked text as border.
    Text(
      'Hands-on simulations specific to each vulnerability',
      style: TextStyle(
        fontSize: 18,
        foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 3
          ..color = const Color.fromARGB(255, 1, 85, 87),
      ),
      textAlign: TextAlign.right,
    ),
    // Solid text as fill.
    const Text(
      'Hands-on simulations specific to each vulnerability',
      style: TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 210, 233, 227),
      ),
      textAlign: TextAlign.right,
    ),
  ],
);

ScrollController _controller = ScrollController();

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    // Build widgets for home page
    final beginnerCard = OnHover(builder: (isHovered) {
      final backgroundColor =
          isHovered ? difficultyCardHoverColour : difficultyCardColour;
      return InkWell(
          child: Container(
              constraints: const BoxConstraints(
                  minWidth: 200, maxWidth: 220, minHeight: 280, maxHeight: 320),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(80, 0, 0, 0),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(6, 6)),
                ],
              ),
              width: screenSize.width * 0.25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("Beginner", style: cardTitleStyle)),
                  ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxWidth: 100, maxHeight: 100),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(screenSize.width / 15),
                        child: Image.asset('img/pawn.jpg', fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const Text(
                      'Suited for: Primary/Secondary students and senior citizens',
                      style: cardBodyStyle),
                  const Text('Click to begin!', style: cardLinkStyle)
                ],
              )),
          onTap: () {
            Get.toNamed('/beginner');
          });
    });

    final intermediateCard = OnHover(builder: (isHovered) {
      final backgroundColor =
          isHovered ? difficultyCardHoverColour : difficultyCardColour;
      return InkWell(
        child: Container(
            constraints: const BoxConstraints(
                minWidth: 200, maxWidth: 220, minHeight: 280, maxHeight: 320),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(80, 0, 0, 0),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(6, 6)),
              ],
            ),
            width: screenSize.width * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text("Intermediate", style: cardTitleStyle)),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 100, maxHeight: 100),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(screenSize.width / 15),
                      child: Image.asset('img/bishop.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
                const Text(
                    'Suited for: People with 2-3 years of experience with cybersecurity',
                    style: cardBodyStyle),
                const Text('Click to begin!', style: cardLinkStyle)
              ],
            )),
        onTap: () {
          // Navigate to intermediate page
          Get.toNamed('/intermediate');
        },
      );
    });

    final advancedCard = OnHover(builder: (isHovered) {
      final backgroundColor =
          isHovered ? difficultyCardHoverColour : difficultyCardColour;
      return InkWell(
        child: Container(
            constraints: const BoxConstraints(
                minWidth: 200, maxWidth: 220, minHeight: 280, maxHeight: 320),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(80, 0, 0, 0),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(6, 6)),
              ],
            ),
            width: screenSize.width * 0.25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //const Text('Advanced', style: cardTitleStyle),
                const FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text("Advanced", style: cardTitleStyle)),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints(maxWidth: 100, maxHeight: 100),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(screenSize.width / 15),
                      child: Image.asset('img/knight.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
                const Text(
                    'Suited for: Professionals and industry cybersecurity experts',
                    style: cardBodyStyle),
                const Text('Click to begin!', style: cardLinkStyle)
              ],
            )),
        onTap: () {
          Get.toNamed('/advanced');
        },
      );
    });

    final List<Widget> cards = [beginnerCard, intermediateCard, advancedCard];

    final firstColText = ResponsiveWidget.isSmallScreen(context)
        ? Container(
            width: screenSize.width * 0.9,
            padding: const EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Tackle the Latest Cyberthreat',
                    style: smallHeaderStyle,
                    textAlign: TextAlign.center,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  const Text(
                      'Explore cyberthreats and learn to defend yourself against them with Collegium Pyxisia',
                      style: smallBodyFont,
                      textAlign: TextAlign.center),
                  const Padding(padding: EdgeInsets.all(20)),
                  Container(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.fromLTRB(35, 20, 35, 20)),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color.fromARGB(255, 196, 255, 99);
                              }
                              return const Color.fromARGB(255, 165, 255, 81);
                            }),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                          ),
                          onPressed: () => _controller.animateTo(
                                screenSize.height * 4,
                                duration: const Duration(milliseconds: 700),
                                curve: Curves.fastOutSlowIn,
                              ),
                          child: const Text("Start here!",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black))))
                ]),
          )
        : Container(
            width: screenSize.width * 0.5,
            padding: const EdgeInsets.all(80),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tackle the Latest Cyberthreat',
                    style: headerStyle,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  const Text(
                      'Explore cyberthreats and learn to defend yourself against them with Collegium Pyxisia',
                      style: bodyFont),
                  const Padding(padding: EdgeInsets.all(20)),
                  Container(
                      alignment: Alignment.center,
                      child: OutlinedButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.fromLTRB(35, 20, 35, 20)),
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                                    (Set<MaterialState> states) {
                              if (states.contains(MaterialState.hovered)) {
                                return const Color.fromARGB(255, 196, 255, 99);
                              }
                              return const Color.fromARGB(255, 165, 255, 81);
                            }),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0))),
                          ),
                          onPressed: () => _controller.animateTo(
                                screenSize.height * 4,
                                duration: const Duration(milliseconds: 700),
                                curve: Curves.fastOutSlowIn,
                              ),
                          child: const Text("Start here!",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black))))
                ]),
          );

    final secondColText = ResponsiveWidget.isSmallScreen(context)
        ? Container(
            width: screenSize.width * 0.9,
            padding: const EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Why Collegium Pyxisia?',
                    style: smallHeaderStyle,
                    textAlign: TextAlign.center,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'Personalised learning to your preferred pace, skill level, and topic interests',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 210, 233, 227),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'Latest cyberthreat info from leading experts in Singapore',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 210, 233, 227),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Text(
                    'Hands-on simulations specific to each vulnerability',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 210, 233, 227),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]),
          )
        : Container(
            width: screenSize.width * 0.5,
            padding: const EdgeInsets.all(80),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Why Collegium Pyxisia?',
                    style: headerStyle,
                  ),
                  const Padding(padding: EdgeInsets.all(10)),
                  outlineText1,
                  const Padding(padding: EdgeInsets.all(10)),
                  outlineText2,
                  const Padding(padding: EdgeInsets.all(10)),
                  outlineText3
                ]),
          );

    final provideFirstCard = Container(
        constraints: const BoxConstraints(maxWidth: 140, minHeight: 150),
        padding: const EdgeInsets.all(15),
        width: screenSize.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('img/homepage_icons/video.svg',
                height: 40,
                width: 40,
                fit: BoxFit.fitWidth,
                color: Colors.white),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Comprehensive step-by-step videos',
                  style: TextStyle(
                    fontSize: 14,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = const Color.fromARGB(255, 1, 85, 87),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Solid text as fill.
                const Text(
                  'Comprehensive step-by-step videos',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 210, 233, 227),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ));
    final provideSecondCard = Container(
        constraints: const BoxConstraints(maxWidth: 140, minHeight: 150),
        padding: const EdgeInsets.all(15),
        width: screenSize.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('img/homepage_icons/school.svg',
                height: 40,
                width: 40,
                fit: BoxFit.fitWidth,
                color: Colors.white),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Information on the latest cyberthreats from experts',
                  style: TextStyle(
                    fontSize: 14,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = const Color.fromARGB(255, 1, 85, 87),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Solid text as fill.
                const Text(
                  'Information on the latest cyberthreats from experts',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 210, 233, 227),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ));
    final provideThirdCard = Container(
        constraints: const BoxConstraints(maxWidth: 140, minHeight: 150),
        padding: const EdgeInsets.all(15),
        width: screenSize.width * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('img/homepage_icons/virus.svg',
                height: 40,
                width: 40,
                fit: BoxFit.fitWidth,
                color: Colors.white),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Controlled testbeds to simulate attacks in real-time',
                  style: TextStyle(
                    fontSize: 14,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 3
                      ..color = const Color.fromARGB(255, 1, 85, 87),
                  ),
                  textAlign: TextAlign.center,
                ),
                // Solid text as fill.
                const Text(
                  'Controlled testbeds to simulate attacks in real-time',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 210, 233, 227),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ));
    final thirdColText = ResponsiveWidget.isSmallScreen(context)
        ? SizedBox(
            width: screenSize.width * 0.9,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'What We Provide',
                    style: headerStyle,
                    textAlign: TextAlign.center,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      provideFirstCard,
                      provideSecondCard,
                      provideThirdCard
                    ],
                  ),
                ]),
          )
        : Container(
            width: screenSize.width * 0.5,
            padding: const EdgeInsets.all(50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'What We Provide',
                    style: headerStyle,
                  ),
                  const Padding(padding: EdgeInsets.all(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      provideFirstCard,
                      provideSecondCard,
                      provideThirdCard
                    ],
                  ),
                ]),
          );

    final firstColLeft = Stack(
      children: <Widget>[
        CustomPaint(
          size: const Size(600, 300),
          painter: FirstTrianglePainter(),
        ),
        firstColText,
      ],
    );
    final secondColLeft = Stack(
      children: <Widget>[
        CustomPaint(
          size: const Size(600, 300),
          painter: SecondTrianglePainter(),
        ),
        secondColText,
      ],
    );
    final thirdColLeft = Stack(
      children: <Widget>[
        CustomPaint(
          size: const Size(600, 300),
          painter: ThirdTrianglePainter(),
        ),
        thirdColText,
      ],
    );

    // Code for main blocks on homepage
    final firstColumn = ResponsiveWidget.isSmallScreen(context)
        ? SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            height: screenSize.height,
            child: firstColText,
          )
        : Container(
            padding: const EdgeInsets.fromLTRB(20, 100, 80, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                firstColLeft,
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    child: SizedBox(
                      width: screenSize.width * 0.3,
                      child:
                          Image.asset('img/cyberthreat.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          );

    final secondColumn = ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // ClipRRect(
                //   borderRadius: const BorderRadius.only(
                //       topLeft: Radius.circular(100),
                //       topRight: Radius.circular(100),
                //       bottomRight: Radius.circular(100),
                //       bottomLeft: Radius.circular(100)),
                //   child: SizedBox(
                //     width: screenSize.width * 0.9,
                //     child: Image.asset('img/whyncl.jpg', fit: BoxFit.cover),
                //   ),
                // ),
                secondColText,
              ],
            ),
          )
        : Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    child: SizedBox(
                      width: screenSize.width * 0.3,
                      child: Image.asset('img/whyncl.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
                secondColLeft,
              ],
            ),
          );

    final thirdColumn = ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                thirdColText,
              ],
            ),
          )
        : Container(
            padding: const EdgeInsets.fromLTRB(00, 30, 20, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                thirdColLeft,
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    child: SizedBox(
                      width: screenSize.width * 0.3,
                      child: Image.asset('img/provide.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ],
            ),
          );

    final fourthColumn = ResponsiveWidget.isSmallScreen(context)
        ? Align(
            alignment: Alignment.center,
            child: Container(
                width: screenSize.width * 0.9,
                padding: const EdgeInsets.fromLTRB(15, 40, 15, 150),
                child: const Center(
                  child: Text(
                    'Pick a skill level and start learning today!',
                    style: fourthHeaderStyle,
                    textAlign: TextAlign.center,
                  ),
                )),
          )
        : Stack(children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: CustomPaint(
                size: const Size(1200, 300),
                painter: FourthTrianglePainter(),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                  width: screenSize.width * 0.5,
                  padding: const EdgeInsets.fromLTRB(80, 80, 80, 200),
                  child: const Center(
                    child: Text(
                      'Pick a skill level and start learning today!',
                      style: fourthHeaderStyle,
                      textAlign: TextAlign.center,
                    ),
                  )),
            )
          ]);

    final fifthColumn = ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 50),
            child: CarouselSlider(
              items: cards,
              options: CarouselOptions(
                  enlargeCenterPage: false,
                  viewportFraction: 0.6,
                  height: 280,
                  autoPlay: true),
            ),
          )
        : Container(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[beginnerCard, intermediateCard, advancedCard],
            ),
          );

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
      //floatingActionButtonAnimator: NoScalingAnimation(),
      body: SingleChildScrollView(
        controller: _controller,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              firstColumn,
              secondColumn,
              thirdColumn,
              fourthColumn,
              fifthColumn,
              footer
            ],
          ),
        ),
      ),
    );
  }
}
