import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewegg(),));
}
class Gridviewegg extends StatefulWidget {
  const Gridviewegg({super.key});

  @override
  State<Gridviewegg> createState() => _GridvieweggState();
}

class _GridvieweggState extends State<Gridviewegg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20),
            children: [
              Container(child: Center(child: Text("1"),), color: Colors.red,),
              Container(
                child: Center(child: Text("1"),), color: Colors.yellow,),
              Container(child: Center(child: Text("1"),), color: Colors.blue,),
              Container(
                child: Center(child: Text("1"),), color: Colors.purple,),
              Container(
                child: Center(child: Text("1"),), color: Colors.orange,),
            ]
        )
    );
  }
}