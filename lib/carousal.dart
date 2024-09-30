import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carousaleg(),));
}
class Carousaleg extends StatefulWidget {
  const Carousaleg({super.key});

  @override
  State<Carousaleg> createState() => _CarousalegState();
}

class _CarousalegState extends State<Carousaleg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complicated image slider demo')),
      body: Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items:[
        Image.asset("assest/images/cartoon-boy-photo.jpg"),
            Image.asset("assest/images/portugal.jpg"),
            Image.asset("assest/images/india gate.jpg"),
            Image.asset("assest/images/finland-image.jpg"),

          ],
        ),
      ),
    );
  }
}
