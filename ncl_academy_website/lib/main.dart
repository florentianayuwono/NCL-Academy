import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: MaterialPage(),
  ));
}

class MaterialPage extends StatelessWidget {
  const MaterialPage({Key ? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff015355),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Container(
              height: 79, width: double.infinity, color: Color(0xff2D2D2D),
              child: Row(
                children: <Widget> [
                  SizedBox(width: 73),
                  Expanded(
                    flex: 1,
                    child: Image.asset('images/ncl.logo.jpg')
                  ),
                  Expanded(
                    flex: 10,
                    child: SizedBox()
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,10,0),
                        child: InkWell(
                            child: Text("NCL Website",style: TextStyle(color:Color(0xffD2E9E3))),
                            //onTap: () => launch('https://ncl.sg/')
                        )
                    )
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,10,0),
                        child: Text("Help", style: TextStyle(color:Color(0xffD2E9E3)),
                        )
                      )
                  )
                ],
              ),
            ),

            Row(
              children: <Widget> [
                Padding(
                  padding: EdgeInsets.fromLTRB(33,15,0,15),
                  child:ElevatedButton(
                    onPressed: () {  },
                    style: ButtonStyle(
                        minimumSize:  MaterialStateProperty.all(const Size(130.0, 50.0)),
                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(196, 196, 196, 1))),
                    child: Text("Back", style: TextStyle(color: Colors.black)))
                ),
                Expanded(
                  child: Column(
                    children: <Widget> [
                      SizedBox(height: 50),

                      Center(
                        child: Text(
                            'Spring4Shell',
                            style: TextStyle(color: Color(0xffF5C852), fontSize: 40, fontFamily: 'Azonix'))
                      ),

                      Center(
                        child: Text(
                            'Beginner Level',
                            style: TextStyle(color: Color(0xffD2E9E3), fontSize: 20))
                      ),

                      SizedBox(height: 50),

                      Text(
                        'An Introduction to Spring4Shell',
                        style: TextStyle(color: Color(0xffF5C852), fontSize: 32, fontFamily: 'Azonix')
                      ),

                      SizedBox(height: 20),

                      Image.asset(
                        'images/cyberthreat.jpg',
                        width: 840,
                        height: 400,
                        fit: BoxFit.cover,
                      ),

                      SizedBox(height: 20),

                      Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                              'Auctor eu augue ut lectus arcu bibendum. '
                              'Enim blandit volutpat maecenas volutpat blandit aliquam etiam erat velit. '
                              'Purus semper eget duis at tellus at urna condimentum. '
                              'Mi bibendum neque egestas congue quisque. '
                              'Habitasse platea dictumst quisque sagittis purus sit amet volutpat. '
                              'Vel turpis nunc eget lorem dolor sed viverra. Quis auctor elit sed vulputate mi sit. '
                              'Ultricies lacus sed turpis tincidunt id aliquet risus feugiat in. '
                              'Feugiat nisl pretium fusce id velit ut tortor pretium viverra.',
                          style: TextStyle(color: Color(0xffD2E9E3), fontSize: 16)
                      ),

                      SizedBox(height: 40),

                      ElevatedButton(
                          onPressed: () {  },
                          style: ButtonStyle(
                              minimumSize:  MaterialStateProperty.all(const Size(130.0, 50.0)),
                              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(196, 196, 196, 1))),
                          child: Text("Next", style: TextStyle(color: Colors.black))
                      )
                    ],
                  ),
                ),
              ]
            )
          ]
        )
      )
    );
  }
}
