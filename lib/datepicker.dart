import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Datepicker(),));
}
class Datepicker extends StatefulWidget {
  const Datepicker({super.key});

  @override
  State<Datepicker> createState() => _DatepickerState();
}

class _DatepickerState extends State<Datepicker> {
  DateTime selectdate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          controller: TextEditingController(
              text: "${selectdate.toLocal()}".split("")[0]),
          readOnly: true,
          decoration: InputDecoration(
              hintText: "select date",
              suffixIcon: Icon(Icons.calendar_month)
          ),
          onTap: () => dateselcet(context),
        ),
      ),
    );
  }

  Future<void> dateselcet(BuildContext context) async {
    final DateTime ? picktime = await showDatePicker(
        context: context, firstDate: DateTime(2002), lastDate: DateTime(2024));
    if (picktime != null && picktime != selectdate) ;
      setState(() {
        selectdate = picktime!;
      }
      );
    }
  }

