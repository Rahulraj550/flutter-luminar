import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';


class Stackuicontent extends StatefulWidget {
  const Stackuicontent({super.key});

  @override
  State<Stackuicontent> createState() => _StackuicontentState();
}

class _StackuicontentState extends State<Stackuicontent> {
  int index = 3;
  var icons = [
    Ionicons.person,
    Icons.dashboard,
    Ionicons.information,
    Ionicons.log_out
  ];
  var names = ['My Account', 'Dashboard', 'About', 'Logout'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background container
          Container(
            color: Colors.white,
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 360),
              child: Column(
                children: [
                  Text(
                    'RAHUL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF577290),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Color(0xFFD4E2EF),
                            child: ListTile(
                              leading: Icon(icons[index]),
                              title: Text(names[index]),
                            ),
                          ),
                        );
                      },
                      itemCount: names.length,
                    ),
                  )
                ],
              ),
            ),
          ),

          // Profile info container
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF577290),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Ionicons.menu),
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 50,
                  child: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 50,
                  child: Text(
                    'Edit your Profile',
                    style: GoogleFonts.cutiveMono(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment(0, -0.1),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(200),
              ),
              elevation: 1,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assest/images/cartoon-boy-photo.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}