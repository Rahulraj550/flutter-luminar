import 'package:flutter/material.dart';

class Carosalassianment extends StatefulWidget {
  const Carosalassianment({super.key});

  @override
  State<Carosalassianment> createState() => _CarosalassianmentState();
}

class _CarosalassianmentState extends State<Carosalassianment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
 backgroundColor: Colors.green,
  title: Text(
    "FARMERS FRESH ZONE",

    style: TextStyle(
      fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),

    ),
  actions: [
    IconButton(
      icon: Icon(Icons.location_on),
      onPressed: () {},
    ),
  ],
  ),
      bottomNavigationBar: BottomNavigationBar(
      type:BottomNavigationBarType.fixed ,
          ,
),
    );
  }
}
