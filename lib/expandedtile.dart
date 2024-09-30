import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Expandedtile(),));
}
class Expandedtile extends StatefulWidget {
  const Expandedtile({super.key});

  @override
  State<Expandedtile> createState() => _ExpandedtileState();
}

class _ExpandedtileState extends State<Expandedtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ExpansionTile(title: Text("light color"),
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.orange[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.pinkAccent[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.blue[100],),),
            ],
          ),
          ExpansionTile(title: Text("Dark color"),
            backgroundColor: Colors.pink,
            children: [
              ListTile(leading: CircleAvatar(backgroundColor: Colors.green[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.purple[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.yellow[100],),),
              ListTile(leading: CircleAvatar(backgroundColor: Colors.teal[100],),),
            ],
          )
            ],
          )

      );

  }
}
