import 'package:flutter/material.dart';

class Custmwidgeteg extends StatelessWidget {
  final Image img;
  final Text title;
  final Text subtitle;
  VoidCallback onprss;

  Custmwidgeteg(
      {required this.img,
      required this.title,
      required this.subtitle,
      required this.onprss, required  iconss});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListTile(
          leading: img,
          title: title,
          subtitle: subtitle,
          trailing: img,
          onTap: onprss,
        ),
      ),
    );
  }
}
