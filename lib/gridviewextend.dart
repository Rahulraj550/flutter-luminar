import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Gridviewextend(),
  ));
}

class Gridviewextend extends StatefulWidget {
  const Gridviewextend({super.key});

  @override
  State<Gridviewextend> createState() => _GridviewextendState();
}

class _GridviewextendState extends State<Gridviewextend> {
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
  var color = [
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.orange,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 100,
        children: List.generate(iconss.length, (index) {
          return Card(
              color: color[index],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(iconss[index]), Text(name[index])]));
        }),
      ),
    );
  }
}
