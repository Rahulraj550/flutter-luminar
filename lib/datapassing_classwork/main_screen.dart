import 'package:flutter/material.dart';
import 'package:flutterpromax/datapassing_classwork/product_details.dart';
import 'package:flutterpromax/datapassing_classwork/secondscreen_2.dart';

void main() {
  runApp(MaterialApp(
      home: Firstscreen1(),
      debugShowCheckedModeBanner: false,
      routes: {
        "secoundscreen_1": (context) => Secondscreen2(),
      }));
}

class Firstscreen1 extends StatefulWidget {
  const Firstscreen1({super.key});

  @override
  State<Firstscreen1> createState() => _Firstscreen1State();
}

class _Firstscreen1State extends State<Firstscreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 13, mainAxisSpacing: 13),
      children: productDetails
          .map((product) => GestureDetector(
                child: Column(
                  children: [
                    Text(product["name"]),
                    Image(image: AssetImage(product["image"]))
                  ],
                ),
                onTap: () => getProduct(context, product["id"]),
              ))
          .toList(),
    ));
  }

  void getProduct(BuildContext context, product) {
    Navigator.pushNamed(context, "secoundscreen_1", arguments: product);
  }
}
