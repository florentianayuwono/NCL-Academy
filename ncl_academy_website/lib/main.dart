import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:textfield_search/textfield_search.dart';

import 'package:dropdown_button2/dropdown_button2.dart';


void main() => runApp(MaterialApp(
  home: HomePage(),
));



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(2, 81, 83, 1),
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                // Container(
                //   height:88, width: double.infinity,color: Color.fromRGBO(217, 217, 217, 1),
                // ),
                Container(
                    height:88, width:double.infinity, color: Color.fromRGBO(44, 53, 50, 1),
                    child: Row(
                        children: <Widget>[
                          SizedBox(width:74),
                          Expanded(
                              flex:1,
                              child: Image.asset("NCL_LOGO.png", scale: 7,)
                          ),
                          Expanded(
                              flex: 10,
                              child: SizedBox()
                          ),
                          Expanded(
                              flex: 1,
                              child:Padding(
                                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                  child: InkWell(
                                      child: Text("NCL Website",style: TextStyle(color:Colors.white)),
                                      onTap: () => launch('https://ncl.sg/')
                                  )

                              )
                          ),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(10,0,10,0),
                                child: Text("Help", style: TextStyle(color:Colors.white),),
                              )
                          )
                        ]
                    )
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(33,15,0,15),
                    child:ElevatedButton(
                        onPressed: () {  },
                        style: ButtonStyle(minimumSize:  MaterialStateProperty.all(const Size(130.0, 50.0)),
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(196, 196, 196, 1)) ),
                        child: Text("Back", style: TextStyle(color: Colors.black)))
                ),
                Center(child: Text("Advanced", style:TextStyle(color:Color.fromRGBO(245, 200, 82, 1),fontSize: 40,
                    fontFamily: "Azonix"))),
                SizedBox(height:66),
                Center(
                    child:Container(
                        width:1029, height:7, color:Color.fromRGBO(245, 200, 82, 1)
                    )
                ),
                Center(
                  child: Container(
                    width:1029, height:47,color: Color.fromRGBO(210, 233, 227, 1),
                    padding: EdgeInsets.fromLTRB(19, 14, 0, 0),
                    child: Text("Recommended", style:TextStyle(fontFamily: "Montserrat",fontSize: 24, color: Color.fromRGBO(1, 83, 85, 1),fontWeight:FontWeight.w800)),
                  ),
                ),
                Center(
                  child: Container(
                    width:1029, height:41,color: Color.fromRGBO(210, 233, 227, 1),
                    padding: EdgeInsets.fromLTRB(40, 5, 15, 0),
                    child: Text("Spring4Shell", style:TextStyle(fontFamily: "Catamaran",fontSize: 20, color: Colors.black,)),
                  ),
                ),
                SizedBox(height:15),
                Center(
                  child: Container(width:1029, height:52,
                    child: ElevatedButton(onPressed: (){},
                        style: ButtonStyle(minimumSize:  MaterialStateProperty.all(const Size(1029.0, 52.0)),
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(138, 227, 255, 1)) ),
                        child: Row(
                            children:[
                              Expanded(
                                  flex:18, child: Text("Vulnerabilities",style:TextStyle(color:Colors.black, fontSize: 24, fontWeight: FontWeight.bold,))
                              ),
                              Expanded( flex:1, child: Icon(Icons.arrow_drop_down, color:Colors.black, size:60)
                              )
                            ]
                        )
                    ),
                  ),
                ),
                // DropdownButtonHideUnderline(
                //   child: DropdownButton2(
                //     hint: Text(
                //       'Select Item',
                //       style: TextStyle(
                //         fontSize: 14,
                //         color: Theme
                //             .of(context)
                //             .hintColor,
                //       ),
                //     ),
                //     items: items
                //         .map((item) =>
                //         DropdownMenuItem<String>(
                //           value: item,
                //           child: Text(
                //             item,
                //             style: const TextStyle(
                //               fontSize: 14,
                //             ),
                //           ),
                //         ))
                //         .toList(),
                //     value: selectedValue,
                //     onChanged: (value) {
                //       setState(() {
                //         selectedValue = value as String;
                //       });
                //     },
                //     buttonHeight: 40,
                //     buttonWidth: 140,
                //     itemHeight: 40,
                //   ),
                // ),

              ]
          ),
        )
    );;
  }
}


