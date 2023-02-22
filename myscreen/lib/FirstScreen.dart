import 'package:flutter/material.dart';
import 'package:myscreen/SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/image2.png',
              width: 1200,
              height: 1400,
              fit: BoxFit.fill,
            ),
            Container(
              color: Color(0x55282828),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(0, 80, 10, 0),
                    child: Text("HARD ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold))),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
                    child: Text("ELEMENT",
                        style: TextStyle(
                            color: Color(0xFF44ff8f),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)))
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 240, 0, 0),
              child: Text(
                "About You",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 310, 0, 0),
              child: Text(
                "We want to know more about you, follow next steps to complete the informations",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 400, 0, 0),
              child: Row(
                children: [
                  SizedBox(
                    height: 170,
                    width: 170,
                    child: Card(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        color: Color(0xFF21253D),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 30, 80, 10),
                                child: Text(
                                  "I am",
                                  style: TextStyle(
                                      color: Color(0xFF44ff8f),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                                child: Text(
                                  "Inactive",
                                  style: TextStyle(
                                      color: Color(0xFF44ff8f),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 30, 0),
                                child: Text(
                                  "I have never trained",
                                  style: TextStyle(
                                      color: Color(0xFFffffff),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(
                    height: 177,
                    width: 170,
                    child: Card(
                        color: Color(0xFF21253D),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 30, 80, 10),
                                child: Text(
                                  "I am",
                                  style: TextStyle(
                                      color: Color(0xFF44ff8f),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                                child: Text(
                                  "Beginner",
                                  style: TextStyle(
                                      color: Color(0xFF44ff8f),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 30, 0),
                                child: Text(
                                  "I have never trained",
                                  style: TextStyle(
                                      color: Color(0xFFffffff),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ],
              ),
            ),
            // Container(
            //     color: Color(0xff33D56F),
            //     margin: EdgeInsets.fromLTRB(270,700,0,0),
            //     padding: EdgeInsets.fromLTRB(40,15,40,15),
            //     child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 15),),
            // ),
            Container(
              color: Color(0xff33D56F),
                  margin: EdgeInsets.fromLTRB(270,700,0,0),
                  padding: EdgeInsets.fromLTRB(20,5,20,5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xff33D56F)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
                }, child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 15),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
