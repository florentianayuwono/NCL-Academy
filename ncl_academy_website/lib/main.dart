import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 65, 66,100),
        body: SingleChildScrollView(
          child: Column(
              children: <Widget> [
                Container(
                    height:88, width: double.infinity,color: Colors.grey[200]
                ),
                Container(
                    height:88, width:double.infinity, color: Colors.black,
                    child: Row(
                        children: <Widget>[
                          SizedBox(width:50),
                          Expanded(

                              flex:1,
                              child: Image.asset("NCL_LOGO.png")
                          ),
                          Expanded(
                              flex: 10,
                              child: SizedBox()
                          ),
                          Expanded(
                              flex: 1,
                              child:Text("NCL Website",style: TextStyle(color:Colors.amberAccent))
                          ),
                          Expanded(
                              flex: 1,
                              child: Text("Help", style: TextStyle(color:Colors.amberAccent),)
                          )
                        ]
                    )
                ),
                Row(
                  children:<Widget>[
                   Expanded(
                     flex: 1,
                         child:Column(
                           children: [
                             Text("TACKLE THE LATEST CYBERTHREAT"),
                             Text("    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ")
                           ],
                         )
                   ),
                   Expanded(
                     flex: 1,
                     child: Container(
                       margin: EdgeInsets.all(100),
                         child: Image.asset("specs.jpg")
                     )
                   )
                  ]
                ),
                SizedBox(height:60),
                Text("Pick a skill level and start learning today!"),


              ]
          ),
        )
    );
  }
}
