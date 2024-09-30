import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: FarmerAppUI(),
    debugShowCheckedModeBanner: false,
  ));
}

class FarmerAppUI extends StatefulWidget {
  const FarmerAppUI({super.key});

  @override
  State<FarmerAppUI> createState() => FarmerAppUIState();
}

class FarmerAppUIState extends State<FarmerAppUI> {
  var images = [
    'assest/images/tomato.jpeg',
    'assest/images/pinapple.jpeg',
    'assest/images/tomato.jpeg',
    'assest/images/pinapple.jpeg',
    'assest/images/tomato.jpeg',
    'assest/images/pinapple.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            backgroundColor: Colors.green,
            title: Text(
              'FARMERS FRESH ZONE',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 8, left: 6),
                child: Text(
                  'palakkad',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.zero,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 10, right: 15),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 15),
                      hintText: 'Search here vegetables and fruits',
                      prefixIcon: const Icon(Icons.search, color: Colors.grey),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.green,
                            width: 1,
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'VEGETABLES',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.green,
                            width: 1,
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'FRUITS',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.green,
                            width: 1,
                          ),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'EXOTIC CUTS',
                            style: TextStyle(color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: [
                    Container(
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assest/images/hillbook.jpeg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 250,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlayAnimationDuration: Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.easeInOutCubicEmphasized,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.timer),
                              SizedBox(
                                height: 10,
                              ),
                              Text('30 mins policy'),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.track_changes),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Traceability'),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.other_houses),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Local Surrounding'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Shop by Category',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: NetworkImage(
                      images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                elevation: 10,
                shadowColor: Colors.black,
              );
            }, childCount: images.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 5 / 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 8),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.green,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }
}
