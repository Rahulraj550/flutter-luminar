import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(home:loginpage() ,));
}
class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     // body: Center(
     //   child:Text("welcome"),
     body: Container(child:
         Column(children: [
           Padding(
             padding: const EdgeInsets.only(left: 100,top: 50),
             child: Text("loginpage",style: TextStyle(fontSize: 30,color: Colors.red,fontWeight: FontWeight.bold),),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 70,top: 30,right: 70),
             child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: "username",
                labelText: "username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
              )
             ),
           ),

           Padding(
             padding: const EdgeInsets.only(left: 70,top: 30,right: 70),
             child: TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.password),
                   suffixIcon: Icon(Icons.visibility_off),
                   hintText: "passward",
                 labelText: "passward",
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
               ),
             ),
           ),
SizedBox(height: 50,),
    ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.green[200],foregroundColor: Colors.red),
    onPressed:(){
    },child:Text("login")),
           Padding(
             padding: const EdgeInsets.only(top:50),
             child: TextButton(onPressed: (){}, child:Text("Not a user? create an account...!" )),
           ),
],
     ),
   ),
   );
  }
}