// ignore_for_file: avoid_print, duplicate_import
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:news_app/guestUser/guest_navigation.dart';
import 'package:news_app/pages/navigation.dart';
import 'package:news_app/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    bool _obscureText = true;

    void login() async {
      FirebaseAuth auth = FirebaseAuth.instance;
      final String email = emailcontroller.text;
      final String password = passwordcontroller.text;
      try {
        await auth.signInWithEmailAndPassword(email: email, password: password);
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NavigationPage()));
        var user = auth.currentUser;
        var uid = user!.uid;
        // var users = 
        await http
            .post(Uri.https("newsapp-flutter.herokuapp.com", "login"),body:{'authenticationId': uid},);
           

      } catch (e) {
        showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Login'),
              content: ListBody(
                children: const <Widget>[
                  Text('Opps An Error Occur!'),
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
          },
        );
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Center(
            child: Text(
          "Login",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        )),
      ),
      body: FittedBox(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20),
          child: Column(
            children: [
              Center(
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
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: SizedBox(
                    width: 330,
                    child: TextFormField(
                        obscureText: _obscureText,
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                            border: const UnderlineInputBorder(),
                            labelText: 'Enter your Password',
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.password,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ),
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
                                )))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Center(
                  child: SizedBox(
                    width: 340,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: login,
                      child: const Text(
                        "Login",
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
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Signup()));
                        },
                        child: const Text(
                          "SignUp",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue),
                        )),
                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 300, left: 20),
                  child: Expanded(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GuestNavigation()));
                        },
                        child: const Text(
                          "Countinue as a guest",
                          style: TextStyle(fontSize: 20),
                        )),
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

