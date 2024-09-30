import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listbulder()));
}
class listbulder  extends StatelessWidget {
  var name=["amal","rahul","hari"];
  var phone=["656373737","456635366","6436446377"];
  var image=["assest/images/Deer-icon.png","assest/images/fb.png","assest/images/pi.webp"];
  var color=[ Colors.yellow,Colors.blue,Colors.red ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView.builder(itemBuilder: (context,index){
  return Card(
  color: color[index],
child: ListTile(
leading: CircleAvatar(backgroundImage:AssetImage(image[index]) ,),
title: Text(name[index]),
subtitle: Text(phone[index]),
trailing: Icon(Icons.call),

)
  );
},itemCount: name.length,),
    );
}
}
