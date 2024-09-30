import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Custemscrollview(),));
}
class Custemscrollview extends StatefulWidget {
  const Custemscrollview({super.key});

  @override
  State<Custemscrollview> createState() => _CustemscrollviewState();
}

class _CustemscrollviewState extends State<Custemscrollview> {

  var name = ["Rahul", "Hari", "Me", "Ebin", "Scammer"];
  var phone = [
    '1234567890',
    '9283746567',
    '9182736450',
    '9283746501',
    '8172635490'
  ];
  var data =[
    "account_balance",
    "add_alert",
    "access_alarms_rounded",
    "add_circle",
    "ac_unit"

  ];
  var iconss =[
    Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarms_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    ];

  var image = [
    'assest/images/Deer-icon.png',
    'assest/images/Deer-icon.png',
    'assest/images/Deer-icon.png',
    'assest/images/Deer-icon.png',
    'assest/images/Deer-icon.png',
  ];
  var colors = [
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[
          SliverAppBar(
      floating: true,
            pinned: true,
            title: Text("customscrollview"),
            actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
            ],
            bottom: AppBar(
              title: Container(
                color: Colors.white,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "search something...",
                      prefixIcon:Icon(Icons.search)

                  ),
                ),
              ),
            ),
    expandedHeight: 140,
          ),

          SliverToBoxAdapter(
            child: Container(
              color: Colors.lightGreenAccent,
              height: 50,
              child: Center(child: Text("new data"),),
            ),
          ),
          SliverList(delegate:SliverChildBuilderDelegate((context,index){
            return Card(
              color: colors[index],
              child: ListTile(
                leading: Image(image: AssetImage(image[index])),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
              ),

            );
          },
            childCount: name.length)),
      SliverGrid(delegate: SliverChildBuilderDelegate((context,index){
        return Card(color: colors[index],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(data[index]),
              Icon(iconss[index])
            ],
          ),

        );
      },childCount: data.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          ),
        ]
      ),
    );
  }
}
