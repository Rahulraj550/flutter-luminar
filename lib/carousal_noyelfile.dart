import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Carouselsliderwidgetexample(),));
}
class Carouselsliderwidgetexample extends StatefulWidget {
  const Carouselsliderwidgetexample({super.key});

  @override
  State<Carouselsliderwidgetexample> createState() => _CarouselsliderwidgetexampleState();
}

class _CarouselsliderwidgetexampleState extends State<Carouselsliderwidgetexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: CarouselSlider(
              items: [
                Image.asset('assets/images/trondheim.png', fit: BoxFit.fill,),
                Image.asset('assets/images/london_land.png', fit: BoxFit.fill,),
                Image.asset('assets/images/ireland.png', fit: BoxFit.fill,),
                Image.asset('assets/images/portugal.png', fit: BoxFit.fill,),
                Image.asset('assets/images/new_york.png', fit: BoxFit.fill,),
                Image.asset('assets/images/sahara_dessert.png', fit: BoxFit.fill,),
              ],
              options: CarouselOptions(
                height: 400,
                aspectRatio: 1/1,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOutCubic,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                // onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              )
          ),
        ),
      ),
    );
  }
}