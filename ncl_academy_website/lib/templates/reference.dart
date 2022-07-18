import '../import.dart';

// class SideMenu extends StatefulWidget {
//   const SideMenu({Key? key}) : super(key: key);

//   @override
//   State<SideMenu> createState() => _SideMenuState();
// }

// class _SideMenuState extends State<SideMenu> {
//   List<String> filesList = <String>[];
//   List<String> filesL = <String>[];
//   @override
//   void initState() {
//     super.initState();
//     filesList = [];
//   }
//   Future<List<String>> _getFilesFromDir() async{
//     filesL = await FilesInDirectory().getFilesFromDir();
//     setState(() {
//       filesList = filesL;
//     });
//     return filesList;
//   }
//   _getFilesCount(){
//     _getFilesFromDir();
//     int count = filesList.length;
//     return count;
//   }
//   @override
//   Widget build(BuildContext context) {

//   }
// }

class ReferenceTemplate extends StatelessWidget {
  String title;
  String level;
  String subTitle;
  String textTitle;
  String textMaterial;
  String previousPage;
  String nextPage;

  // Constructor
  ReferenceTemplate(this.title, this.level, this.subTitle, this.textTitle,
      this.textMaterial, this.previousPage, this.nextPage);

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
          ),
        ],
      );

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
            : Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(150, 50, 150, 0),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child:
                      Column(children: <Widget>[chapterTitle(bigTitle, level)]),
                ),
              );

    smallTitle(String title) => Container(
        padding: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width * 0.1, 50, 50, 0),
        alignment: Alignment.centerLeft,
        child: FittedBox(
            fit: BoxFit.cover, child: Text(title, style: subTitleStyle)));

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
                explanation(textTitle, textMaterial),
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
              titleColumn(this.title, this.level),
              smallTitle(this.subTitle),
              textColumn(this.textTitle, this.textMaterial, this.previousPage,
                  this.nextPage),
              footer
            ],
          ),
        ),
      ),
    );
  }
}
