import '../../../import.dart';

class LogSettingUpPage1 extends StatelessWidget {
  String title = "Log4Shell";
  String level = "Beginner Level";
  String subTitle =
      "SETTING UP THE NCL TESTBED TO SIMULATE LOG4SHELL VULNERABILITY";
  String textTitle = "Setting up the NCL testbed.";
  String textMaterial =
      "Please follow these steps to set up the vulnerability in the NCL testbed.";
  String videoUrl = "https://youtu.be/UrbsHI7_QLA";
  String previousPage = "/log_introduction";
  String nextPage = "/log_setting_up_3";

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
                    "\n\n In this video, we will explain how to set up the NCL testbed to simulate the Log4shell vulnerability. Please enter the commands based on your own operating system. We have separately added all the commands below the explanation as well. \n\n To start things off, we will clone the NCL Client Source Code into our local machines. Click on Code and copy the HTTPS link. Then open your terminal and type git clone followed by the link you copied. Once you have cloned the source code, navigate to the Client directory and type “ls” to see all the files in the directory. It should look somewhat like this. If you notice, there is currently no image to execute the code. The next step is to create and activate a virtual environment in your computer. This helps us create a layer of safety so none of the exploits can affect your computer. \n\n So in the same Client directory, type the following command:",
                    "python3.9 -m venv venv "),
                explanation(
                    "",
                    "Now, if you type “ls” again, it will show venv as an image. To activate the virtual environment, type in the following command: ",
                    "source venv/bin/activate "),
                explanation(
                    "",
                    "Next, install the required dependencies by typing the following command: ",
                    "pip install –r requirements..txt"),
                explanation(
                    "",
                    "Phew! All the installations are done. Now we are moving on to using our installed client. To run the client, type in the following command: ",
                    "python client.py"),
                explanation(
                    "",
                    "You will see the NCL client dialogue box open. Enter your username, then click on choose XML file. Navigate to Client and select the file named \n\n Client-log4shell-POC-openstack.xml \n\n For local platform, select your machine platform. In this case, it is  MacOS. For connection method, select Console. \n\n Then select confirm. The ARPDemo instance will be visible. Expand it and select log4shell. A dialogue box will open asking you to enter your password. Enter “log4shell” as your password. [Note:If you do not want to use console, you can also use SSH to login. However, it will show you the “bad host key” message.] \n\n Now let’s go back to the NCL client dialogue box. You can click on “Tutorial” to get an introduction to log4shell as well as proof of concept to understand the vulnerabilities of log4j. The tutorial also gives you instructions on setting up and running the virtual machine. Read through the instructions at your own pace before we move on to the next phase.",
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

//
//
// return SettingExecutionTemplate(
//     "Log4Shell",
//     "Beginner Level",
//     "SETTING UP THE NCL TESTBED TO SIMULATE LOG4SHELL VULNERABILITY",
//     "Setting up the NCL testbed.",
//     "Please enter the following commands into your terminal. The explanation for entering these steps is below. ",
//     "https://youtu.be/UrbsHI7_QLA",
//     "\n Python3.9 -m venv venv \n\n Source venv/bin/activate \n\n Pip install –r requirements..txt \n\n Python client.py\n",
//     "\n In this video, we will explain how to set up the NCL testbed to simulate the Log4shell vulnerability. Please enter the commands based on your own operating system. We have separately added all the commands below the explanation as well. \n\n To start things off, we will clone the NCL Client Source Code into our local machines. Click on Code and copy the HTTPS link. Then open your terminal and type git clone followed by the link you copied. Once you have cloned the source code, navigate to the Client directory and type “ls” to see all the files in the directory. It should look somewhat like this. If you notice, there is currently no image to execute the code. The next step is to create and activate a virtual environment in your computer. This helps us create a layer of safety so none of the exploits can affect your computer. \n\n So in the same Client directory, type the following command:\n\n Python3.9 -m venv venv \n\n Now, if you type “ls” again, it will show venv as an image. To activate the virtual environment, type in the following command: \n\n Source venv/bin/activate \n\n Next, install the required dependencies by typing the following command: \n\n Pip install –r requirements..txt \n\n Phew! All the installations are done. Now we are moving on to using our installed client. To run the client, type in the following command: \n\n Python client.py \n\n   ",
//     "/log_introduction",
//     "/log_setting_up_3");
