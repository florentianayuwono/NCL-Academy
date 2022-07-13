import '../../../import.dart';

class SpringExecutionPage extends StatelessWidget {
  String title = "Spring4Shell";
  String level = "Beginner Level";
  String subTitle = "EXECUTION OF THE Spring4SHELL VULNERABILITY";
  String textTitle = "Let's execute and simulate the vulnerability!";
  String textMaterial =
      "This is an explanation on how to simulate the Spring4shell environment in the NCL testbed.\n";
  String videoUrl = "https://youtu.be/-wgYZTQihRw";
  String previousPage = "/spring_setting_up";
  String nextPage = "/spring_reference";

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

  Widget codeSnippet(String code) => Row(children: <Widget>[
        Expanded(
            child: Container(
                color: Color(0xffFFCFA3),
                child: Text(code, style: codeDisplayStyle)))
      ]);

  Widget explanation(String textTitle, String textMaterial, String code) {
    if (code.isEmpty && textTitle.isEmpty) {
      return Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textMaterial, style: explanationBodyStyle),
          ),
        ],
      );
    }

    if (code.isEmpty) {
      return Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textTitle, style: explanationTitleStyle),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textMaterial, style: explanationBodyStyle),
          ),
        ],
      );
    }

    if (textTitle.isEmpty) {
      return Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textMaterial, style: explanationBodyStyle),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(children: <Widget>[
                const SizedBox(height: 40),
                codeSnippet(code),
                const SizedBox(height: 40),
              ]))
        ],
      );
    }

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(textTitle, style: explanationTitleStyle),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(textMaterial, style: explanationBodyStyle),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Column(children: <Widget>[
              const SizedBox(height: 40),
              codeSnippet(code),
              const SizedBox(height: 40),
            ]))
      ],
    );
  }

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

    smallTitle(String title) => Container(
        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
            50, MediaQuery.of(context).size.width * 0.1, 50),
        alignment: Alignment.centerLeft,
        child: FittedBox(
            fit: BoxFit.cover, child: Text(title, style: subTitleStyle)));

    var convertedUrl = YoutubePlayerController.convertUrlToId(videoUrl) ?? '0';
    YoutubePlayerController _videoController = YoutubePlayerController(
      initialVideoId: convertedUrl,
      params: const YoutubePlayerParams(
        startAt: Duration(seconds: 0),
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    final video = (convertedUrl == '0')
        ? Image.asset(
            'img/cyberthreat.jpg',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          )
        : YoutubePlayerIFrame(
            controller: _videoController,
            aspectRatio: 16 / 9,
          );

    textColumn(String textTitle, String textMaterial, String previousPage,
            String nextPage) =>
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width * 0.2,
                20,
                MediaQuery.of(context).size.width * 0.2,
                20),
            child: Column(
              children: <Widget>[
                video,
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text("\n\nTopic Summary", style: cardTitleStyle),
                ),
                explanation(textTitle, textMaterial, ""),
                explanation(
                    "",
                    "\nWelcome to the third video on Spring4shell. So far, we have completed the introduction to Spring4shell and how to set up the NCL testbed. In this video, we will be simulating the vulnerability in the NCL testbed. Let’s get to the exciting part. So, the first step is to navigate to the Spring4shell POC directory. It is located at \n\n Home/log4shell \n\n Open the Spring4Shell-POC folder.\n\n The next step is to run the docker container to bind to port 8080. Open your terminal and navigate to the Spring4shell-POC folder. Alternatively, right click somewhere in the folder and select “Open Terminal Here” from the context menu. In the terminal, run the following command.",
                    "docker run –p 8080:8080 spring4shell "),
                explanation(
                    "",
                    "So, what exactly is going on right now? Docker is binding to port 8080 and hosting a web application at\n\n localhost:8080/helloworld/greeting \n\n Let's check out this web application. Open Firefox or any web browser and go to  \n\n http://localhost:8080/helloworld/greeting \n\n So now that we have our web application set up, we can run the exploit. Open a new terminal in the same Spring4shell-POC directory. Before we proceed, type the",
                    "python –V"),
                explanation(
                    "",
                    "command and check if your python version is high enough to support the exploit. Then, type the following command. ",
                    "python exploit.py --url http://localhost:8080/helloworld/greeting"),
                explanation(
                    "",
                    "If the exploit runs successfully, your terminal will give you a link. Open your browser and go to the link given in your terminal after the exploit runs successfully. When you open your browser at this link, you will see a root shell. \n\n So, what exactly is happening here? A shell is a user interface that you can use to access the services of an operating system. A root shell will give you access to administrative privileges. With this root shell, you now have access to the entire system and the underlying operations. A hacker can inject any sort of vulnerability, bug, malware, or virus into the system which has been exposed and cause the system to crash or lose vital information. \n\n So, this was an example simulation of Spring4shell vulnerability. You can go and checkout other videos by NCL on other vulnerabilities.",
                    ""),
                ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            PrevButton(prevPage: previousPage),
                            NextButton(nextPage: nextPage)
                          ])
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                            PrevButton(prevPage: previousPage),
                            NextButton(nextPage: nextPage)
                          ])
              ],
            ));
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
            children: <Widget>[
              titleColumn(title, level),
              smallTitle(subTitle),
              textColumn(textTitle, textMaterial, previousPage, nextPage),
              footer
            ],
          ),
        ),
      ),
    );
  }
}

// return SettingExecutionTemplate(
// "Spring4Shell",
// "Beginner Level",
// "EXECUTION OF THE Spring4SHELL VULNERABILITY",
// "Let's execute and simulate the vulnerability!",
// "This is an explanation on how to simulate the log4shell environment in the NCL testbed.\n",
// "https://youtu.be/-wgYZTQihRw",
// "",
// "\nWelcome to the third video on Spring4shell. So far, we have completed the introduction to Spring4shell and how to set up the NCL testbed. In this video, we will be simulating the vulnerability in the NCL testbed. Let’s get to the exciting part. So, the first step is to navigate to the Spring4shell POC directory. It is located at \n\n Home/log4shell \n\n Open the Spring4Shell-POC folder.\n\n The next step is to run the docker container to bind to port 8080. Open your terminal and navigate to the Spring4shell-POC folder. Alternatively, right click somewhere in the folder and select “Open Terminal Here” from the context menu. In the terminal, run the following command. \n\n Docker run –p 8080:8080 spring4shell \n\n So, what exactly is going on right now? Docker is binding to port 8080 and hosting a web application at\n\n localhost:8080/helloworld/greeting \n\n Let's check out this web application. Open Firefox or any web browser and go to  \n\n http://localhost:8080/helloworld/greeting \n\n So now that we have our web application set up, we can run the exploit. Open a new terminal in the same Spring4shell-POC directory. Before we proceed, type the python –V command and check if your python version is high enough to support the exploit. Then, type the following command. \n\n Python exploit.py --url http://localhost:8080/helloworld/greeting \n\n If the exploit runs successfully, your terminal will give you a link. Open your browser and go to the link given in your terminal after the exploit runs successfully. When you open your browser at this link, you will see a root shell. \n\n So, what exactly is happening here? A shell is a user interface that you can use to access the services of an operating system. A root shell will give you access to administrative privileges. With this root shell, you now have access to the entire system and the underlying operations. A hacker can inject any sort of vulnerability, bug, malware, or virus into the system which has been exposed and cause the system to crash or lose vital information. \n\n So, this was an example simulation of Spring4shell vulnerability. You can go and checkout other videos by NCL on other vulnerabilities.",
// "/spring_setting_up",
// "/spring_reference");
