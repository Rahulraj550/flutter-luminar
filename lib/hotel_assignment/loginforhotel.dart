
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hotelreg.dart';

class Hotellogin extends StatefulWidget {
  const Hotellogin({super.key});

  @override
  _HotelloginState createState() => _HotelloginState();
}

class _HotelloginState extends State<Hotellogin> {
  bool showPass = true;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white70,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 210),
                  child: Text(
                    "Book It!",
                    style: GoogleFonts.nunito(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    validator: (username) {
                      if (username!.isEmpty ||
                          !username.contains('@') ||
                          !username.contains('.')) {
                        return "Enter a valid email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
                  child: TextFormField(
                    obscureText: showPass,
                    obscuringCharacter: "*",
                    // This is being replaced as the password which is typed in the password field
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPass = !showPass;
                          });
                        },
                        icon: Icon(
                          showPass
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: showPass ? Colors.black : Colors.blue,
                        ),
                      ),
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "Invalid password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(120, 50),
                  ),
                  onPressed: () {
                    var valid = formKey.currentState!.validate();
                    if (valid) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Hoteluimain()));
                    }
                  },
                  child: Text("Log in", style: GoogleFonts.nunito(fontSize: 15),),
                ),
                const SizedBox(
                  height: 220,
                ),
                const Text('Don\'t have an account?', style: TextStyle(fontSize: 10),),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Hotelreg()));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.grey[200],
                        foregroundColor: Colors.black),
                    child: const Text("Sign up", style: TextStyle(fontSize: 13),),
                  ),
                ),
              ], // Column children
            ),
          ),
        ),
      ),
    );
  }
}
