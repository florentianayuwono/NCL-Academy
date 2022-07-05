import '../import.dart';

class DropDownMenu extends StatefulWidget {
  List items;
  String title;
  List pages;

  DropDownMenu(this.items, this.title, this.pages);

  @override
  State<DropDownMenu> createState() => _DropDownMenuState();
}

class _DropDownMenuState extends State<DropDownMenu> {
  Widget dropDownMenu(List items, String title, List pages) {
    String DDvalue = title;
    return Column(
      children: [
        Center(
          child: Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.05,
              color: Color.fromRGBO(138, 227, 255, 1),
              child: Row(children: [
                DropdownButtonHideUnderline(
                    child: FittedBox(
                  alignment: Alignment.centerLeft,
                  fit: BoxFit.scaleDown,
                  child: DropdownButton2(
                    buttonPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.longestSide / 55,
                        fontWeight: FontWeight.bold),
                    dropdownDecoration: BoxDecoration(
                      color: Color.fromRGBO(210, 233, 227, 1),
                    ),
                    value: DDvalue,
                    buttonWidth: MediaQuery.of(context).size.width * 0.7,
                    buttonHeight: MediaQuery.of(context).size.height * 0.05,
                    icon: const Icon(Icons.arrow_drop_down,
                        color: Colors.black, size: 40),
                    onChanged: (newValue) {
                      setState(() {
                        DDvalue = newValue as String;
                        //print(DDvalue);
                      });
                      for (int i = 0; i < items.length; i++) {
                        if (DDvalue == items[i]) {
                          Get.toNamed(pages[i]);
                        }
                      }
                    },
                    items: items.map((var item) {
                      return DropdownMenuItem(child: Text(item), value: item);
                    }).toList(),
                  ),
                ))
              ])),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return dropDownMenu(widget.items, widget.title, widget.pages);
  }
}
