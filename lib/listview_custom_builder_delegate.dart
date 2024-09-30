import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListviewCustom(),
  ));
}

class ListviewCustom extends StatelessWidget {
  ListviewCustom({super.key});

  var name = ["Rahul", "Hari", "Me", "Ebin", "Scammer"];
  var phone = [
    '1234567890',
    '9283746567',
    '9182736450',
    '9283746501',
    '8172635490'
  ];
  var image = [
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png',
    'assets/images/deadpool.png'
  ];
  var colors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemBlue,
        title: Text("Contacts"),
      ),
      body: ListView.custom(
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(image[index]),
                ),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
                trailing: Wrap(children: [
                  Icon(Icons.edit),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.delete),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.call),
                ]),
              ),
            );
          },
          childCount: name.length,
        ),
      ),
    );
  }
}
