import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Flexibleeg(),));
}
class Flexibleeg extends StatefulWidget {
  const Flexibleeg({super.key});

  @override
  State<Flexibleeg> createState() => _FlexibleegState();
}

class _FlexibleegState extends State<Flexibleeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(flex:2, child:Container(
            color: Colors.yellow,
          ),
          ),
          Flexible(flex:2, child:Container(
            color: Colors.green,

          ))
        ],
      ),
    );
  }
}
