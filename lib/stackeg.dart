import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home:Stackeg (),));
}
class Stackeg extends StatefulWidget {
  const Stackeg({super.key});

  @override
  State<Stackeg> createState() => _StackwidgetState();
}

class _StackwidgetState extends State<Stackeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.red, height: 500,width: 500, ),
          Positioned(child: Container(color: Colors.yellow, ), right: 100, top: 100,height: 100, width: 100,),
          Positioned(child: Container(color: Colors.black, ), right: 120, top: 100,height: 20, width: 20,),
          Positioned(child: Container(color: Colors.black, ), left: 100, top: 100,height: 20, width: 20,),
          Positioned(child: Container(color: Colors.green,),left: 100, top: 100, height: 100, width: 100,),
          Positioned(child: Container(color: Colors.blue,),left: 150, top: 300, height: 20, width: 200,),

        ],
      ),
    );
  }
}