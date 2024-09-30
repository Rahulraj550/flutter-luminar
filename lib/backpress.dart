import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Backpresswidget(),));
}
class Backpresswidget extends StatefulWidget {
  const Backpresswidget({super.key});

  @override
  State<Backpresswidget> createState() => _BackpresswidgetState();
}

class _BackpresswidgetState extends State<Backpresswidget> {


  @override
  Widget build(BuildContext context) {
    return WillPopScope( onWillPop: showdialogonpop,
      child: Scaffold(),
    );
  }

  Future<bool> showdialogonpop()  async{
    return await showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text('Exit !!!'),
        content: Text('Do you want to exit?'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: Text('Yes')),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: Text('Cancel', style: TextStyle(color: Colors.white),)),
        ],
      );
    });
  }
}