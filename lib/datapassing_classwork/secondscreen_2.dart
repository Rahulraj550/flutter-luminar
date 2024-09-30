import 'package:flutter/material.dart';
import 'package:flutterpromax/datapassing_classwork/product_details.dart';


class Secondscreen2 extends StatefulWidget {
  const Secondscreen2({super.key});

  @override
  State<Secondscreen2> createState() => _Secondscreen2State();
}

class _Secondscreen2State extends State<Secondscreen2> {
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final data=productDetails.firstWhere((product)=>product["id"]==id);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("${data["name"]}"),
            Image(image: AssetImage("${data["image"]}")),
            Text("${data["rate"]}"),
            Text("${data["description"]}"),
          ],
        ),
      ),

    );
  }
}
