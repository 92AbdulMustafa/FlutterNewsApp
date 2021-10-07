import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:news_app/pages/login.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
       
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
        Login()
       
      ),
    );
        }
        // Check for errors
        if (snapshot.hasError) {
          return  Container(
            width: 100,
            height: 100,
            color: Colors.white10,
            // child:  Text('$snapshot.error'),
          );
        }
        // Otherwise, show something whilst waiting for initialization to complete
        return const Center(child: CircularProgressIndicator());
      },
    );
    //
  }
}


// API Key--->   e92a7c0e3479484a99a31fe3ed104bdc   (newsapi.org)

// API Key----> 0a247a2cf89cb6ef41d8860affff0a60    (mediastack.com)   http://api.mediastack.com/v1/

// mongodb+srv://newsapp:<password>@cluster0.gnahu.mongodb.net/myFirstDatabase?retryWrites=true&w=majority

// newsapp123   db password

