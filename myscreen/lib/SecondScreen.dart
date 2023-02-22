import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image3.png',
            width: 1200,
            height: 1400,
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 70, 20, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Text("Hey, ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                    Text("User",
                        style: TextStyle(
                            color: Color(0xff330D56F),
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 210.00, top: 6.00),
                  child: CircleAvatar(
                    radius: 20, // Set the desired radius of the circle
                    backgroundImage: AssetImage('assets/images/emely.jpg'), // Set the image
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.only(top: 270, left: 185),
            decoration: BoxDecoration(
              color: Color(0xff330D56F),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.play_arrow_sharp, color: Colors.white,),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20,400,20,0),
            child: Row(
              children: [
                Row(
                  children: [
                    Text("Find ",
                        style: TextStyle(
                            color: Color(0xff330D56F),
                            fontSize: 21,
                            fontWeight: FontWeight.bold)),
                    Text("your Workout",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 153),
                  child: Icon(
                    Icons.filter_alt_rounded,
                    color: Colors.white,
                    size: 24,

                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20,450,20,0),
            child: TextField(
              style: TextStyle(color: Color(0xffC2C2C2)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.white,),
                filled: true,
                fillColor: Color(0xff232441),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'SEARCH WORKOUT',
                hintStyle: TextStyle(color: Color(0xffC2C2C2)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20,530,20,0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 140.0,
                  child: Text("Popular", style: TextStyle(color: Colors.white),),
                ),
                Container(
                  width: 140.0,
                  child: Text("Hard Workout", style: TextStyle(color: Colors.white)),
                ),
                Container(
                  width: 140.0,
                  child: Text("Full Body", style: TextStyle(color: Colors.white)),
                ),
                Container(
                  width: 140.0,
                  child: Text("Crossfit", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20,585,20,0),
            child: Text("Popular Workout", style: TextStyle(fontSize: 23, color: Colors.white),),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20,625,20,30),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/images/alexsandra.png',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/images/emily.png',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/images/sule.png',
                    width: 150.0,
                    height: 150.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
            ,
          )
        ],
      ),
    );
  }
}
