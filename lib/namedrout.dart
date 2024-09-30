import 'package:flutter/material.dart';

import 'gridviewextend.dart';
import 'listview separated.dart';
void main(){
  runApp(MaterialApp(home: Namedrout(),
      routes:{
        "grid":(context)=>Gridviewextend(),
        "list":(context)=>Assignment2(),
      } ));
}

class Namedrout extends StatelessWidget {
  const Namedrout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              Navigator.
            }, child: Text("screen1")),

            ElevatedButton(onPressed: (){}, child: Text("screen1")),
          ],
        ),
      ),
    );
  }
}
