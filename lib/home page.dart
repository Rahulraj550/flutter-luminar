import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: homepage(),));
}
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext){
    return Scaffold(
      body: ListView(
        children: [
          Card(color: Colors.blue[200],
          child:ListTile(
            leading: Image(image: AssetImage("assest/images/Deer-icon.png"),),
            title: Text ("arun"),
            subtitle: Text("1234567891"),
            trailing: Icon(Icons.call),

          )
      ),
          Card(color: Colors.red[200],
              child:ListTile(
                leading: Image(image: AssetImage("assest/images/fb.png"),),
                title: Text ("rahul"),
                subtitle: Text("1234567891"),
                trailing: Icon(Icons.call),

              )
          ),
          Card(color: Colors.yellow[200],
              child:ListTile(
                leading: Image(image: AssetImage("assest/images/pi.webp"),),
                title: Text ("hari"),
                subtitle: Text("1234567891"),
                trailing: Icon(Icons.call),

              )
          ),
      ],
      )
    );
  }
}