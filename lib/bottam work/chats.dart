import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  var name = ["rahul(You)", "Hari", "Alan", "Ebin", "jithu", "manu", "babu","John","luna","jibin" ];
  var message = [
    'hi',
    'Daa',
    'mm',
    'ok da',
    'Sugham',
    'Dey',
    'Mm',
    'Aadaa',
    'good morning',
    'Good night',
  ];
  var time = [
    '10:10 PM',
    '9:40 PM',
    '6:25 PM',
    '2:09 PM',
    '12:24 PM',
    '10:36 AM',
    '6:01 AM',
    'Yesterday',
    'Yesterday',
    '9/1/24'
  ];
  var image = [
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
    'assest/images/cartoon-boy-photo.jpg',
  ];
  var msg = [
    '4',
    '5',
    '3',
    '3',
    '2',
    '1',
    '2',
    '7',
    '1',
    '15',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.green,
              decoration: InputDecoration(
                hintText: 'Ask Meta AI or Search',
                hintStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(image[index]),
                  ),
                  title: Text(name[index]),
                  subtitle: Text(message[index]),
                  trailing: Column(
                    children: [
                      Text(time[index]),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.green),
                        child: Center(
                          child: Text(msg[index], style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
