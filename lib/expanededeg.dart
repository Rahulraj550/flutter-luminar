import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expanededeg(),));
}
class Expanededeg extends StatefulWidget {
  const Expanededeg({super.key});

  @override
  State<Expanededeg> createState() => _ExpanededegState();
}

class _ExpanededegState extends State<Expanededeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // body:Row(
        // last varunna space column or row cover cheyan vendi
        children: [
          Container(
            color: Colors.red,height: 100,),
      Container(color: Colors.yellow,height: 100,),
      Expanded(child: Container(color: Colors.green,height: 100,width: double.infinity,)
        // Expanded(child: Container(color: Colors.green,width: 100,height: double.infinity,)
          )
        ],
      ),
    );
  }
}
