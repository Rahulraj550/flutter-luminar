import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: TabBar(
              labelColor: Colors.black,
              dividerColor: Colors.blueGrey,
              indicatorColor: Colors.lightBlue,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  child: Icon(Icons.home),
                ),
                Tab(
                  child: Text("Chat"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Contact"),
                ),
              ]),
        body: TabBarView(children: [
          Center(
            child: Text('This is the homepage', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),),
          ),
        ]),
      ),
    );
  }
}
