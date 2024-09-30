import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: listseperated()));
}

class listseperated extends StatelessWidget {
  var name = ["anu", "varun", "amal", "manu"];
  var color = [Colors.deepPurple, Colors.blue, Colors.yellow,Colors.lightBlueAccent];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("listseperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(color: color[index],
              child: ListTile(
                title: Text(name[index]),
              ),
            );
          },

          separatorBuilder: (context, index) {
            return Divider(
              thickness: 5,
              color: Colors.red,
            );
          },
          itemCount: name.length),
    );
  }
}
