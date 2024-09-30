import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(home:DataTableeg() ,));
}
class DataTableeg extends StatefulWidget {
  const DataTableeg({super.key});

  @override
  State<DataTableeg> createState() => _DataTableState();
}

class _DataTableState extends State<DataTableeg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: DataTable(
              columns: [
                DataColumn(label: Text("ID", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),)),
                DataColumn(label: Text("name", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),)),
                DataColumn(label: Text("job", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),)),
                DataColumn(label: Text("salary", style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),)),

              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("rahul")),
                  DataCell(Text("hello")),
                  DataCell(Text("24")),
                ]),
                DataRow(cells: [
                  DataCell(Text("")),
                  DataCell(Text("noyel")),
                  DataCell(Text("hi")),
                  DataCell(Text("22")),
                ]),
                DataRow(cells: [
                  DataCell(Text("3")),
                  DataCell(Text("hari")),
                  DataCell(Text("bhall")),
                  DataCell(Text("21")),
                ]),
                DataRow(cells: [
                  DataCell(Text("4")),
                  DataCell(Text("ebin")),
                  DataCell(Text("mm")),
                  DataCell(Text("20")),
                ]),
              ],),
      ),
    );
  }
}
