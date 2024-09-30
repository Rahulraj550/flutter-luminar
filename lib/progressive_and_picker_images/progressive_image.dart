import 'package:flutter/material.dart';

class ProgressiveImageExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progressive Asset Image'),
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage("assest/images/Screenshot 2024-09-25 112639.png"),
          image: AssetImage("assest/images/pexels-lum3n-44775-406014.jpg"),
          fadeInDuration: Duration(seconds: 4),
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProgressiveImageExample(),
    debugShowCheckedModeBanner: false,
  ));
}
