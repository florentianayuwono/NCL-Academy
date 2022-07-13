import '../../../import.dart';

class SpringSettingUpPage extends StatelessWidget {
  String title = "Spring4Shell";
  String level = "Beginner Level";
  String subTitle =
      "SETTING UP THE NCL TESTBED TO SIMULATE SPRING4SHELL VULNERABILITY";
  String textTitle = "Setting up the NCL testbed.";
  String textMaterial =
      "Now that we have introduced you to what Spring4shell vulnerability is, we will go ahead and try to set up a simulation of the vulnerability in the NCL testbed. In this video, we will cover the second part of the series, that is, we will show you how to set up the testbed. \n\nPlease enter the following commands into your terminal. The explanation for entering these steps is below. To learn how to clone the NCL Client GitHub repository, check out the first video in our Spring4shell playlist.";
  String videoUrl = "https://youtu.be/84sHUSs1GLg ​";
  String previousPage = "/spring_introduction";
  String nextPage = "/spring4shell_execution";

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
                    "\nIf you haven't already, clone the NCL Client GitHub repository into your local machine and create the virtual environment. If you do not know how to do this, check out the first video in the Spring4shell playlist where we have given instructions on how to do this. \n\nOnce you have created the virtual environment, type in the following command.",
                    "Source venv/bin/activate"),
                explanation(
                    "",
                    "Next, install the required dependencies by typing the following command:",
                    "Pip install –r requirements..txt"),
                explanation(
                    "",
                    "Phew! All the installations are done. Now we are moving on to using our installed client. To run the client, type in the following command: ",
                    "Python client.py"),
                explanation(
                    "",
                    "\nYou will see the NCL client dialogue box open. Enter your username, then click on choose XML file. Navigate to Client/cyberraptor and open the file named client_spring4shell.xml The NCL Client dialogue box will open.\n For local platform, select MacOS.\nFor connection method, select Console. Then select confirm. The Spring4Shell instance will appear. Expand it and select the default option. The SSH tunnel will be set up with the Virtual Machine. To proceed, enter the screensharing password. \n\n The spring4shell VirtualBox dialogue box will open. That concludes the set-up process for the NCL test bed.\n\n Go back to the NCL Client dialogue box and click on “Tutorial” to get an introduction to Spring4shell as well as proof of concept to understand how to simulate the vulnerability.  You can read through the steps and follow them to execute the next steps after this point. Alternatively, we will also be explaining it in the next video so you can continue with watching it.",
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
