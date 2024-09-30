import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner:false,home: Shopingscreen(),));
}
class Shopingscreen extends StatefulWidget {
  const Shopingscreen({super.key});

  @override
  State<Shopingscreen> createState() => _ShopingscreenState();
}

class _ShopingscreenState extends State<Shopingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Store',
          style: TextStyle(
            fontSize: 26,fontWeight: FontWeight.bold,color:Colors.black,
          ),
        ),
        actions: [
          IconButton(
        icon: Icon(
          Icons.shopping_cart_outlined,
        color: Colors.black,
      ),
      onPressed: () {},

          ) ],
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                prefix: const Icon(Icons.search_rounded),
                hintText: "serch for products",
                hintStyle: TextStyle(fontSize: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
