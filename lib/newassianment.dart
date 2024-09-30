import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Citiesaroundworld()));
}

class Citiesaroundworld extends StatelessWidget {
  var name = ["Delhi", "Finland", "Landon", "Vancouver"];
  var country = [
    "India\n population:32.9 mill",
    "Europe\n population:5.54 mill",
    "UK\n population:8.8 mill",
    "Canada\n population:2.6 mill"
  ];
  var images = [
    "assest/images/india gate.jpg",
    "assest/images/finland-image.jpg",
    "assest/images/landon.jpg",
    "assest/images/vancouver.jpg"
  ];
  var color = [Colors.orange, Colors.orange, Colors.orange, Colors.orange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(" Cities Around World"),
          backgroundColor: Colors.deepOrangeAccent),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: color[index],
              child: ListTile(
                title: Text(name[index]),
                leading: Image.asset(images[index]),
                subtitle: Text(country[index]),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(thickness: 10, color: Colors.white);
          },
          itemCount: name.length),
    );
  }
}
