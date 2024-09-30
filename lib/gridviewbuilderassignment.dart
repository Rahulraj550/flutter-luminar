import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Gridviewbuilderassignment(),
  ));
}

class Gridviewbuilderassignment extends StatefulWidget {
  const Gridviewbuilderassignment({super.key});

  @override
  State<Gridviewbuilderassignment> createState() =>
      _GridviewbuilderassignmentState();
}

class _GridviewbuilderassignmentState extends State<Gridviewbuilderassignment> {
  var name = [
    "my profile",
    "book a car",
    "Booking schedule",
    "Track your cab",
    "Help & Feedback",
    "call to Transport",
    "Settings",
    "Log_out"
  ];
  var iconss = [
    Icons.person,
    FontAwesomeIcons.car,
    FontAwesomeIcons.calendar,
    Icons.telegram,
    Icons.question_mark,
    Icons.call,
    Icons.settings,
    Icons.logout
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Menu")),
        backgroundColor: Colors.yellow,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Container(
            color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(iconss[index]),
                Text(name[index]),

              ],
            ),
          );
        },
        itemCount: name.length,
      ),
    );
  }
}
