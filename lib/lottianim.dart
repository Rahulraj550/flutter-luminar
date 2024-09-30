import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main(){
  runApp(MaterialApp(home: Lottianimeg(),));
}
class Lottianimeg extends StatefulWidget {
  const Lottianimeg({super.key});

  @override
  State<Lottianimeg> createState() => _LottianimegState();
}

class _LottianimegState extends State<Lottianimeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assest/anim/dog.json"),
      ),
    );
  }
}
