import 'package:flutter/material.dart';
import 'package:myscreen/FirstScreen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/image1.png',
            width: 1200,
            height: 1400,
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(125, 100, 0, 0),
            child: Row(
              children: [
                Text(
                  "Log ",
                  style: TextStyle(
                      fontSize: 50,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "In",
                  style: TextStyle(
                      fontSize: 50,
                      color: Color(0xff330D56F),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 180, 20, 0),
            child: TextField(
              style: TextStyle(color: Color(0xffC2C2C2)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person, color: Colors.white,),
                filled: true,
                fillColor: Color(0xff232441),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'Username',
                hintStyle: TextStyle(color: Color(0xffC2C2C2)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(20, 260, 20, 0),
            child: TextField(
              obscureText: true,
              style: TextStyle(color: Color(0xffC2C2C2)),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.security, color: Colors.white,),
                filled: true,
                fillColor: Color(0xff232441),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Color(0xffC2C2C2)),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(70, 350, 5, 0),
                child: Text("Already have an account ? ", style: TextStyle(color: Colors.white),),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 350, 20, 0),
                child: Text("Sign in", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
          Container(
            color: Color(0xff330D56F),
            padding: EdgeInsets.fromLTRB(10,5,10,5),
            margin: EdgeInsets.fromLTRB(150, 400, 0, 0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff330D56F), onPrimary: Color(0xff330D56F)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstScreen()));
              }, child: Text("Login", style: TextStyle(fontSize: 18, color: Colors.white),),
            ),
          )
        ],
      ),
    );
  }
}
