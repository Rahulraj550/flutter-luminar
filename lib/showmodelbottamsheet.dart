import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: showmodelbottamsheet(),));
}
class showmodelbottamsheet extends StatefulWidget {
  const showmodelbottamsheet({super.key});

  @override
  State<showmodelbottamsheet> createState() => _showmodelbottamsheetState();
}

class _showmodelbottamsheetState extends State<showmodelbottamsheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(child: Text("show"),
          onTap: ()=>show(context),),
            
          
        ),
      
    );
  }
  show(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return ListView(
        children: [
          ListTile(
            title: Text("data1"),
            subtitle: Text("details"),
            
          ),
          ListTile(
            title: Text("data2"),
            subtitle: Text("details"),

          ),
          ListTile(
            title: Text("data3"),
            subtitle: Text("details"),

          ),
          
        ],
      );
    }
    );
  }
}
