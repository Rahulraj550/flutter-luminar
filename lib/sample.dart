import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sample(),
  ));
}

class Sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.purple,
      ),
      body: Container(decoration: BoxDecoration(
       image: DecorationImage(image: AssetImage("assest/images/BG.jpeg"),fit: BoxFit.fill)
      ),

        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            // Icon(Icons.ac_unit_outlined,size:50,color:Colors.yellow,),
            Image(image: AssetImage("assest/images/Deer-icon.png"),height: 76,width: 150,),

            Text(
            "Flutter",
            style: TextStyle(
              fontSize: 50,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ]
      ),
      ),
    );
  }
}
