import 'package:flutterpromax/bottam%20work/tabbar%20(1).dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Newhomepage(),
  ));
}

class Newhomepage extends StatefulWidget {
  const Newhomepage({super.key});

  @override
  State<Newhomepage> createState() => _NewhomepageState();
}

class _NewhomepageState extends State<Newhomepage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New UI App'),
      ),
      body: index == 0 ? Tabbar() : Center(child: Text('Other content here')),
      drawer: Drawer(
        backgroundColor: Color(0xF4F4F4FF),
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('Name 1'),
              accountEmail: Text('name1@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/hacker.gif"),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/incognito.png"),
                ),
              ],
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover)),
              arrowColor: Colors.blue,
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.update),
              title: Text('Updates'),
            ),
            ListTile(
              leading: Icon(Icons.send_rounded),
              title: Text('Sent'),
            ),
            ListTile(
              leading: Icon(Icons.drafts),
              title: Text('Draft'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
            if (tapindex == 3) {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ListView(
                      children: const [
                        ListTile(
                          title: Text('data 1'),
                          subtitle: Text('detail 1'),
                        ),
                        ListTile(
                          title: Text('data 2'),
                          subtitle: Text('detail 2'),
                        ),
                        ListTile(
                          title: Text('data 3'),
                          subtitle: Text('detail 3'),
                        ),
                        ListTile(
                          title: Text('data 4'),
                          subtitle: Text('detail 4'),
                        ),
                      ],
                    );
                  });
            }
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          // backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Contact',
              backgroundColor: Colors.black,
            ),
          ]),
    );
  }
}
