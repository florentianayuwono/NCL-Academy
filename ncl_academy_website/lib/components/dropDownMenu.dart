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
            width: 1029,
            height: 52,
            child: Container(
                width: 1029,
                height: 52,
                color: Color.fromRGBO(138, 227, 255, 1),
                child: Row(children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      buttonPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      dropdownDecoration: BoxDecoration(
                        color: Color.fromRGBO(210, 233, 227, 1),
                      ),
                      value: DDvalue,
                      buttonWidth: 1029,
                      buttonHeight: 52,
                      icon: const Icon(Icons.arrow_drop_down,
                          color: Colors.black, size: 60),
                      onChanged: (newValue) {
                        setState(() {
                          DDvalue = newValue as String;
                          print(DDvalue);
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
                  )
                ])),
          ),
        ),
        SizedBox(height: 10)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return dropDownMenu(widget.items, widget.title, widget.pages);
  }
}
