import 'package:flutter/material.dart';
import 'package:flutterpromax/datapassing/dammyproducts.dart';
import 'package:flutterpromax/datapassing/secondscreen.dart';
void main(){
  runApp(MaterialApp(home: Firstscreen(),routes: {"secoundscreen":(contest)=>Secondscreen(),}));
}
class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: dammyproduct.map((product)=>GestureDetector(
  child: Column(
  children: [
    Text(product["name"]),
  Image(image: AssetImage(product["image"]))
  ],
  ),
  onTap: ()=>getProduct(context,product["id"]),
  )).toList(),
      ),
    );
  }
  void getProduct(BuildContext context,product){
    Navigator.pushNamed(context, "secondscreen",arguments: product);
  }
}
