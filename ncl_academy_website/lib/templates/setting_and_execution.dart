import '../import.dart';

class SettingExecutionTemplate extends StatelessWidget {
  String title;
  String level;
  String subTitle;
  String textTitle;
  String textMaterial;
  String code;
  String summary;
  String previousPage;
  String nextPage;

  SettingExecutionTemplate(
      this.title,
      this.level,
      this.subTitle,
      this.textTitle,
      this.textMaterial,
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

  Widget titleColumn(String bigTitle, String level) => Stack(children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(150, 50, 150, 0),
          child: Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Column(children: <Widget>[chapterTitle(bigTitle, level)]),
          ),
        ),
        Positioned(
            left: 40,
            bottom: 40,
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
            ))
      ]);

  Widget smallTitle(String title) => Container(
      padding: const EdgeInsets.fromLTRB(220, 50, 50, 0),
      alignment: Alignment.centerLeft,
      child: Text(title, style: subTitleStyle));

  final video = Image.asset(
    'img/cyberthreat.jpg',
    width: 840,
    height: 400,
    fit: BoxFit.cover,
  );

  Widget codeSnippet(String code) => Row(children: <Widget>[
        Expanded(
            child: Container(
                color: Color(0xffFFCFA3),
                child: Text(code, style: codeDisplayStyle)))
      ]);

  Widget explanation(String textTitle, String textMaterial, String code) =>
      Column(
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
                SizedBox(height: 40),
                codeSnippet(code),
                SizedBox(height: 20),
                codeSnippet(code),
                SizedBox(height: 20),
                codeSnippet(code),
                SizedBox(height: 40)
              ]))
        ],
      );

  Widget topicSummary(String summary) => Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text("Topic Summary", style: cardTitleStyle),
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(summary, style: explanationBodyStyle)),
        SizedBox(height: 40)
      ]);

  Widget textColumn(String textTitle, String textMaterial, String code,
          String summary, String previousPage, String nextPage) =>
      Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
          child: Column(
            children: <Widget>[
              video,
              explanation(textTitle, textMaterial, code),
              topicSummary(summary),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    PrevButton(prevPage: previousPage),
                    NextButton(nextPage: nextPage)
                  ])
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 81, 83),
      appBar: BaseAppBar(),
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
