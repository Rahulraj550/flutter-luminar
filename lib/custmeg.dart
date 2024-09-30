import 'package:flutter/material.dart';
import 'package:flutterpromax/clipperwidget.dart';
import 'package:flutterpromax/custmwidget.dart';
void main(){
  runApp(MaterialApp(home: Custmeg(),));
}
class Custmeg extends StatelessWidget {
  const Custmeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Custmwidgeteg(img:Image(image: AssetImage("assest/images/cartoon-boy-photo.jpg")),
          title: Text("data"),
          iconss:Icon(Icons.account_balance),
          onprss: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=>Clipperwidget()));
          }, subtitle: Text("nnnn"),

        ),
      ),
    );
  }
}
