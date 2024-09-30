import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: Newstackwork(),));
}
class Newstackwork extends StatefulWidget {
  const Newstackwork({super.key});

  @override
  State<Newstackwork> createState() => _NewstackworkState();
}

class _NewstackworkState extends State<Newstackwork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Container(color: Colors.blue, height: 300,width: 300, ),
    Positioned(height:200,width: 200,right: 150,top: 100,
    child: Center(
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(fit:BoxFit.cover,
          image: NetworkImage('assest/images/cartoon-boy-photo.jpg'),
          ),
          borderRadius: BorderRadius.circular(100.0),


        ),
      ),
    ),)
  ],
),
    );
  }
}
