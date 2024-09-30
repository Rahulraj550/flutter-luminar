import 'package:flutter/material.dart';
import 'package:flutterpromax/home%20page.dart';

class ragistrationpage extends StatefulWidget {
  const ragistrationpage({super.key});

  @override
  State<ragistrationpage> createState() => _ragistrationpageState();
}

void main() {
  runApp(MaterialApp(
    home: ragistrationpage(),
  ));
}

class _ragistrationpageState extends State<ragistrationpage> {
  GlobalKey<FormState>formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Text(
                "Registrationpage",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        hintText: "Full Name",
                        labelText: "Full Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (name) {
                      if (name!.isEmpty) {
                        return "Enter your name";
                      } else {
                        return null;
                      }
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "gmail",
                        labelText: "gmail",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    validator: (gmail) {
                      if (gmail!.isEmpty ||
                          !gmail.contains('@') ||
                          !gmail.contains('.')) {
                        return "Enter valid Email";
                      } else {
                        return null;
                      }
                    }

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  obscureText,
                  obscuringCharacter: "+",
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      icon: Icon(showpass == true
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          showpass = !showpass;
                        });
                      },
                    ),
                  ),
                  validator: (password) {
                    if (password!.isEmpty || password.length < 6) {
                      return "Enter valid password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[200],
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  var valid = formkey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  }
                },
                child: Text("Login"),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => homepage()),);
                  },
                  child: Text("Don't Have an account....create one"),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}


