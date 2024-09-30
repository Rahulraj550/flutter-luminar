import 'package:flutter/material.dart';

import 'chats.dart';

void main() {
  runApp(MaterialApp(
    home: Whatsappui(),
    debugShowCheckedModeBanner: false,
  ));
}

class Whatsappui extends StatefulWidget {
  const Whatsappui({super.key});

  @override
  State<Whatsappui> createState() => _WhatsappuiState();
}

class _WhatsappuiState extends State<Whatsappui> {
  int index = 0;

  List<Widget> screen = [
    Chats(),
    Center(child: Text('Updates', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
    Center(child: Text('Communities',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
    Center(child: Text('Calls',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'WhatsApp',
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.qr_code_scanner,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text('New group')),
              PopupMenuItem(child: Text('New broadcast')),
              PopupMenuItem(child: Text('Linked devices')),
              PopupMenuItem(child: Text('Starred messages')),
              PopupMenuItem(child: Text('Payments')),
              PopupMenuItem(child: Text('Settings')),
            ];
          },),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          currentIndex: index,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_reaction_rounded),
              label: 'Updates',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3),
              label: 'Communities',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
          ]),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.message),
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      body: screen[index],
    );
  }
}
