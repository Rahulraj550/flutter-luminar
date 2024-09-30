import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(MaterialApp(
    home:Gridviewcount(),
  ));
}
class Gridviewcount extends StatefulWidget {
  const Gridviewcount({super.key});

  @override
  State<Gridviewcount> createState() => _GridviewcountState();
}

class _GridviewcountState extends State<Gridviewcount> {
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
      body: GridView.count(crossAxisCount:2,
        children:List.generate(iconss.length,(index){
          return Card(color:color[index],
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(iconss[index]),
              Text(name[index])
            ]

            )  );

  }),),
    );
  }
}
