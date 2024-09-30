import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Workout(),
  ));
}

class Workout extends StatefulWidget {
  const Workout({super.key});

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  int index = 1;
  var screeen=[
    Text("data"),
    Text("data"),
    Text("data"),
    Text("data"),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("whatsapp"),
        backgroundColor: Colors.green,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("rahul"),
              accountEmail: Text("rahul@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assest/images/fb.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assest/images/fb.png"),
                )
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assest/images/Deer-icon.png"),
                      fit: BoxFit.cover)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text("update"),
            ),
            ListTile(
              leading: Icon(Icons.send),
              title: Text("send"),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text("Drafts"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("logout"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.blue,
        currentIndex: index,
        onTap: (tapiindex) {
          setState(() {
            index = tapiindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "profile"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
              ),
              label: "chat"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
              ),
              label: "call"),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {

    showModalBottomSheet(context: context, builder: (BuildContext context) {
      return ListView(
          children: [
      ListTile(
      title: Text("data1"),
                subtitle: Text("details"),

                ),
                ListTile(
                title: Text("data2"),
                subtitle: Text("details"),

                ),
                ListTile(
                title: Text("data3"),
                subtitle: Text("details"),

                ),
    },


              icon: Icon(Icons.home),
            ),
            label: "home",
          )
        ],
      ),
    );
  }
}
