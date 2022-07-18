import '../import.dart';

class ChapSelectTemplate extends StatelessWidget {
  String level;
  List recommended;
  List<List> dropDownMenus;
  List<List> pages;

  ChapSelectTemplate(
      this.level, this.recommended, this.dropDownMenus, this.pages,
      {Key? key})
      : super(key: key);

  //back button
  Widget BackButton() => Positioned(
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
      );

  //title with the level
  Widget CenterTitle(String level) => Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Text(level,
          style: const TextStyle(
              color: Color.fromRGBO(245, 200, 82, 1),
              fontSize: 40,
              fontFamily: "Azonix")));

  @override
  Widget build(BuildContext context) {
    final recommendedHeader = Column(children: [
      Center(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: 7,
              color: const Color.fromRGBO(245, 200, 82, 1))),
      Center(
        child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            color: const Color.fromRGBO(210, 233, 227, 1),
            padding: const EdgeInsets.fromLTRB(19, 14, 0, 0),
            child: const FittedBox(
              alignment: Alignment.centerLeft,
              fit: BoxFit.scaleDown,
              child: Text(
                "Recommended",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 40,
                    color: Color.fromRGBO(1, 83, 85, 1),
                    fontWeight: FontWeight.w800),
              ),
            )),
      ),
    ]);

    recommendedText(String recommend) => Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.05,
          color: const Color.fromRGBO(210, 233, 227, 1),
          padding: const EdgeInsets.fromLTRB(40, 5, 15, 0),
          child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(recommend,
                style: const TextStyle(
                  fontFamily: "Catamaran",
                  fontSize: 20,
                  color: Colors.black,
                )),
          ),
        ));
    return Scaffold(
        backgroundColor: const Color.fromRGBO(2, 81, 83, 1),
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ResponsiveWidget.isSmallScreen(context)
              ? CenterTitle(level)
              : Stack(
                  children: [BackButton(), CenterTitle(level)],
                ),
          SizedBox(height: 66, width: MediaQuery.of(context).size.width * 0.9),
          recommendedHeader,
          for (String element in recommended) recommendedText(element),
          SizedBox(height: 15, width: MediaQuery.of(context).size.width * 0.9),
          for (var topic in dropDownMenus)
            Center(
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.black,
                  child: DropDownMenu(
                      topic, topic[0], pages[dropDownMenus.indexOf(topic)])),
            )
        ])));
    ;
  }
}
