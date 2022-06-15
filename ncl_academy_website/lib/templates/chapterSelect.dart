import '../import.dart';

class ChapSelectTemplate extends StatelessWidget {
  String level;
  List recommended;
  List<List> dropDownMenus;
  List<List> pages;

  ChapSelectTemplate(
      this.level, this.recommended, this.dropDownMenus, this.pages);

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
          style: TextStyle(
              color: Color.fromRGBO(245, 200, 82, 1),
              fontSize: 40,
              fontFamily: "Azonix")));

  //recommended header
  Widget RecommendedHeader() => Column(children: [
        Center(
            child: Container(
                width: 1029,
                height: 7,
                color: Color.fromRGBO(245, 200, 82, 1))),
        Center(
          child: Container(
            width: 1029,
            height: 47,
            color: Color.fromRGBO(210, 233, 227, 1),
            padding: EdgeInsets.fromLTRB(19, 14, 0, 0),
            child: Text("Recommended",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 24,
                    color: Color.fromRGBO(1, 83, 85, 1),
                    fontWeight: FontWeight.w800)),
          ),
        ),
      ]);

  //recommended text
  Widget RecommendedText(String recommended) => Center(
        child: Container(
          width: 1029,
          height: 41,
          color: Color.fromRGBO(210, 233, 227, 1),
          padding: EdgeInsets.fromLTRB(40, 5, 15, 0),
          child: Text(recommended,
              style: TextStyle(
                fontFamily: "Catamaran",
                fontSize: 20,
                color: Colors.black,
              )),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(2, 81, 83, 1),
        appBar: BaseAppBar(),
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            children: [BackButton(), CenterTitle(level)],
          ),
          SizedBox(height: 66),
          RecommendedHeader(),
          for (String element in recommended) RecommendedText(element),
          SizedBox(height: 15),
          for (var topic in dropDownMenus)
            DropDownMenu(topic, topic[0], pages[dropDownMenus.indexOf(topic)])
        ])));
    ;
  }
}
