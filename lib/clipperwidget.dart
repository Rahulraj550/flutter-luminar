import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Clipperwidget(),));
}
class Clipperwidget extends StatefulWidget {
  const Clipperwidget({super.key});

  @override
  State<Clipperwidget> createState() => _ClipperwidgetState();
}

class _ClipperwidgetState extends State<Clipperwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
         ClipRect( child:
         Container(
            child: Image(image: AssetImage("assest/images/cartoon-boy-photo.jpg")),
          ),
         ),
          ClipOval( child:
          Container(
            child: Image(image:NetworkImage("https://images.pexels.com/photos/919278/pexels-photo-919278.jpeg?auto=compress&cs=tinysrgb&w=600")),
          ),
          ),
        ],
      ),
    );
  }
}
