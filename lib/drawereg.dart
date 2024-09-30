import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Drawereg(),));
}
class Drawereg extends StatefulWidget {
  const Drawereg({super.key});

  @override
  State<Drawereg> createState() => _DraweregState();
}

class _DraweregState extends State<Drawereg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("drawer"),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text("rahul"), accountEmail: Text("rahul@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assest/images/fb.png"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assest/images/fb.png"),
                )
              ],
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assest/images/Deer-icon.png"),
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
      body: Center(child: Text("flutter"),),
    );
  }
}
