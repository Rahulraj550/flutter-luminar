

import 'package:flutter/material.dart';

class Hotelreg extends StatefulWidget {
  const Hotelreg({super.key});

  @override
  State<Hotelreg> createState() => _HotelregState();
}

class _HotelregState extends State<Hotelreg> {

  bool showPass = true;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white38,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 80),
                child: Text(
                  "Registration",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_3),
                    hintText: "Full Name",
                    labelText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (name) {
                    if (name!.isEmpty) {
                      return "Enter full name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    hintText: "Email",
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains('@') ||
                        !email.contains('.')) {
                      return "Enter a valid e-mail";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  obscureText: showPass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                      icon: Icon(
                        showPass == true ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (password1) {
                    if (password1!.isEmpty) {
                      return "Enter a valid password";
                    } else if(password1.length < 8) {
                      return "Password must have atleast 8 characters";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 70, right: 70),
                child: TextFormField(
                  obscureText: showPass,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: () {
                      setState(() {
                        showPass = !showPass;
                      });
                    },
                      icon: Icon(
                        showPass == true ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    hintText: "Confirm Password",
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  validator: (password) {
                    if (password!.isEmpty ||
                        password.length < 8) {
                      return "Enter a valid password";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  var valid=formKey.currentState!.validate();
                  if (valid) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Hotellogin()));
                  }
                },
                child: const Text("Register"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
