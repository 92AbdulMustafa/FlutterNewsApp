// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:news_app/pages/profile.dart';
import 'package:http/http.dart' as http;

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController namecontroller = TextEditingController();
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    final TextEditingController confirmpasswordcontroller =
        TextEditingController();
    bool _obscureText = true;

    void register() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      final String name = namecontroller.text;
      final String email = emailcontroller.text;
      final String password = passwordcontroller.text;
      final String confpassword = confirmpasswordcontroller.text;
      try {
        await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        final user = auth.currentUser!;
        final uid = user.uid;
        // var users =
        await http.post(Uri.https("newsapp-flutter.herokuapp.com", "signup"),
            body: {'name': name, 'email': email, 'authenticationId': uid});
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile()));
      } catch (e) {
        showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("SignUp"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("$e.[message]"),
                  ],
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          "Sign up",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
      body: FittedBox(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: SizedBox(
                width: 330,
                child: TextFormField(
                  controller: namecontroller,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your name',
                    icon: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.perm_identity_rounded,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Center(
              child: SizedBox(
                width: 330,
                child: TextFormField(
                  controller: emailcontroller,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your email',
                    icon: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.email,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Center(
              child: SizedBox(
                width: 330,
                child: TextFormField(
                    obscureText: _obscureText,
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Enter your Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: const Icon(
                            Icons.visibility_off,
                            size: 20,
                            color: Colors.black,
                          )),
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.password,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Center(
              child: SizedBox(
                width: 330,
                child: TextFormField(
                    obscureText: _obscureText,
                    controller: confirmpasswordcontroller,
                    decoration: InputDecoration(
                      border: const UnderlineInputBorder(),
                      labelText: 'Confirm Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          icon: const Icon(
                            Icons.visibility_off,
                            size: 20,
                            color: Colors.black,
                          )),
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.password,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: Center(
              child: SizedBox(
                width: 340,
                height: 40,
                child: ElevatedButton(
                  onPressed: register,
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    side: const BorderSide(width: 2, color: Colors.blue),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
