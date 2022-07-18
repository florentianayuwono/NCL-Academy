import '../import.dart';

class IntroductionTemplate extends StatelessWidget {
  String title;
  String level;
  String subTitle;
  String textTitle;
  String videoUrl;
  String textMaterial;
  String nextPage;

  // Constructor
  // use string 'default' for this.videoUrl if no video url is available yet
  IntroductionTemplate(this.title, this.level, this.subTitle, this.textTitle,
      this.videoUrl, this.textMaterial, this.nextPage,
      {Key? key})
      : super(key: key);

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

  Widget explanation(String textTitle, String textMaterial) => Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textTitle, style: explanationTitleStyle),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(textMaterial, style: explanationBodyStyle),
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    titleColumn(String bigTitle, String level) =>
        ResponsiveWidget.isSmallScreen(context)
            ? Center(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                          children: <Widget>[chapterTitle(bigTitle, level)]),
                    )),
              )
            : Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                  child:
                      Column(children: <Widget>[chapterTitle(bigTitle, level)]),
                ),
              );

    subHeader(String title) => Container(
        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
            50, MediaQuery.of(context).size.width * 0.1, 50),
        alignment: Alignment.centerLeft,
        child: FittedBox(
            fit: BoxFit.cover, child: Text(title, style: subTitleStyle)));

    var convertedUrl = YoutubePlayerController.convertUrlToId(videoUrl) ?? '0';
    YoutubePlayerController videoController = YoutubePlayerController(
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
            controller: videoController,
            aspectRatio: 16 / 9,
          );
    textColumn(String textTitle, String textMaterial, String nextPage) =>
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
                explanation(textTitle, textMaterial),
                NextButton(nextPage: nextPage),
              ],
            ));
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
            children: <Widget>[
              titleColumn(title, level),
              subHeader(subTitle),
              textColumn(textTitle, textMaterial, nextPage),
              footer
            ],
          ),
        ),
      ),
    );
  }
}
