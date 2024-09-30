import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Gridviewegg(),
  ));
}

class Gridviewegg extends StatefulWidget {
  const Gridviewegg({super.key});

  @override
  State<Gridviewegg> createState() => _GridvieweggState();
}

class _GridvieweggState extends State<Gridviewegg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View Builder"),
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 13, mainAxisSpacing: 13),
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.car_rental),
                  Text("car"),
                ],
              ),
              color:Colors.greenAccent ,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.pedal_bike),
                  Text("bicycal")
                ],
              ),
              color: Colors.blueAccent,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_boat),
                  Text("Boat")
                ],
              ),
              color: Colors.blueGrey,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.bus),
                  Text("BUS")
                ],
              ),
              color: Colors.lightGreenAccent,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.train),
                  Text("train")
                ],
              ),
              color: Colors.deepOrange,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.directions_walk),
                  Text("WALK")
                ],
              ),
              color: Colors.lightGreen,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.contact_page),
                  Text("CONTACT")
                ],
              ),
              color: Colors.blueGrey,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.duo),
                  Text("Duo")
                ],
              ),
              color: Colors.green,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.hourglass_bottom),
                  Text("Hour")
                ],
              ),
              color: Colors.pink,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.mobileScreen),
                  Text("Mobile")
                ],
              ),
              color: Colors.deepPurple,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.message),
                  Text("Message")
                ],
              ),
              color: Colors.deepOrangeAccent,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.key),
                  Text("KEY")
                ],
              ),
              color: Colors.greenAccent,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wifi),
                  Text("WIFI")
                ],
              ),
              color: Colors.lightBlueAccent,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bluetooth),
                  Text("Bluetooth")
                ],
              ),
              color:Colors.pinkAccent,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.smile),
                  Text("Smile")
                ],
              ),
              color: Colors.lightBlue,
            ),



          ],
        ));
  }
}
