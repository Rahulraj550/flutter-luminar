import 'dart:async';

import 'package:flutter/material.dart';

import 'hotelui_loginpage.dart';
void main (){
  runApp(MaterialApp(home: HotaluiSplashscreen(),));
}
class HotaluiSplashscreen extends StatefulWidget {
  const HotaluiSplashscreen({super.key});

  @override
  State<HotaluiSplashscreen> createState() => _HotaluiSplashscreenState();
}

class _HotaluiSplashscreenState extends State<HotaluiSplashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HoteluiLoginpage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assest/images/hotal.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Image(
            image: AssetImage("assest/images/hotal.jpg"),
            height: 76,
            width: 150,
          ),
        ),
      ),
    );
  }
}

