import '../import.dart';

class SettingExecutionTemplate extends StatelessWidget {
  String title;
  String level;
  String subTitle;
  String textTitle;
  String textMaterial;
  String videoUrl;
  String code;
  String summary;
  String previousPage;
  String nextPage;

  // Constructor
  // Use string 'default' for videoUrl if video is not yet ready
  SettingExecutionTemplate(
      this.title,
      this.level,
      this.subTitle,
      this.textTitle,
      this.textMaterial,
      this.videoUrl,
      this.code,
      this.summary,
      this.previousPage,
      this.nextPage);

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
    if (code.isNotEmpty) {
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

  Widget topicSummary(String summary) => Column(children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text("Topic Summary", style: cardTitleStyle),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(summary, style: explanationBodyStyle)),
        SizedBox(height: 40)
      ]);

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

    textColumn(String textTitle, String textMaterial, String code,
            String summary, String previousPage, String nextPage) =>
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
                explanation(textTitle, textMaterial, code),
                topicSummary(summary),
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
              titleColumn(this.title, this.level),
              smallTitle(this.subTitle),
              textColumn(this.textTitle, this.textMaterial, this.code,
                  this.summary, this.previousPage, this.nextPage),
              footer
            ],
          ),
        ),
      ),
    );
  }
}
