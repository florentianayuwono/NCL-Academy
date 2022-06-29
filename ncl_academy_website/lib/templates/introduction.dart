import '../import.dart';

class IntroductionTemplate extends StatelessWidget {
  String title;
  String level;
  String subTitle;
  String textTitle;
  String textMaterial;
  String nextPage;

  IntroductionTemplate(this.title, this.level, this.subTitle, this.textTitle,
      this.textMaterial, this.nextPage);

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
            : Stack(children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
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
    subHeader(String title) => Container(
        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,
            50, MediaQuery.of(context).size.width * 0.1, 50),
        alignment: Alignment.centerLeft,
        child: FittedBox(
            fit: BoxFit.cover, child: Text(title, style: subTitleStyle)));
    final video = Image.asset(
      'img/cyberthreat.jpg',
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
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
              subHeader(this.subTitle),
              textColumn(this.textTitle, this.textMaterial, this.nextPage),
              footer
            ],
          ),
        ),
      ),
    );
  }
}
