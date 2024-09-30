import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterpromax/LOGINPAGE.dart';

void main() {
  runApp(MaterialApp(home: Splashscreen()));
}

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}


class _SplashscreenState extends State<Splashscreen>{
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));
    });
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assest/images/bg1.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image(
            image: AssetImage("assest/images/fb.jpeg"),
            height: 76,
            width: 150,
          ),
        ),
      ),
    );
  }
}
