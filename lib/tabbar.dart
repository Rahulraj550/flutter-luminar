import 'package:flutter/material.dart';
import 'package:flutterpromax/listseperate.dart';
import 'package:flutterpromax/listviwebulider.dart';

import 'gridvieweg.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Tabbareg(),
  ));
}

class Tabbareg extends StatefulWidget {
  const Tabbareg({super.key});

  @override
  State<Tabbareg> createState() => _TabbaregState();
}

class _TabbaregState extends State<Tabbareg> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title: Text("whatsapp"),
        actions: [
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("Invite")),
              PopupMenuItem(child: Text("Refresh")),
              PopupMenuItem(child: Text("Logout")),
            ];
          })
        ],
        bottom: TabBar(
          labelColor: Colors.white,
          dividerColor: Colors.yellow[200],
          indicatorColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          tabs: [
          Tab(child: Icon(Icons.camera_alt),),
          Tab(child:Text("chat"),),
          Tab(child:Text("status"),),
          Tab(child: Text("call"),),
        ],
        )
        ),
        body: TabBarView(children: [
          Center(child: Icon(Icons.camera_alt),),
          Listbuilder(),
          Gridvieweg(),
listseperated(),
        ],),
        floatingActionButton: FloatingActionButton(onPressed: (){},
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,),
      )


    );
  }
}
