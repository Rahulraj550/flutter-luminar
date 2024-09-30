import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Bottamnaviagtion(),));
}
class Bottamnaviagtion extends StatefulWidget {
  const Bottamnaviagtion({super.key});

  @override
  State<Bottamnaviagtion> createState() => _BottamnaviagtionState();
}

class _BottamnaviagtionState extends State<Bottamnaviagtion> {
  int index=1;
  var screen=[
    Text("profile"),
    Text("chat"),
    Text("call"),
    Text("contact"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,
        title: Text("whatsapp"),
      actions: [
        PopupMenuButton(itemBuilder: (context){
          return [
            PopupMenuItem(child: Text("invite")),
    PopupMenuItem(child: Text("refresh")),
    PopupMenuItem(child: Text("logout")),
          ];

    })
    ]
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (tapindex){
          setState(() {
            index=tapindex;

          });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.yellow,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person,),label:"profile"),
          BottomNavigationBarItem(icon: Icon(Icons.chat,),label:"chat"),
          BottomNavigationBarItem(icon: Icon(Icons.call,),label:"call"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page,),label:"contact"),
        ],
      ),
          body: Center(child: screen[index],),
    );
  }
}
