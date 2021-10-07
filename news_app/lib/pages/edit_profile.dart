// ignore_for_file: avoid_print

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:news_app/pages/profile.dart';
import 'package:news_app/main.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class _EditProfileState extends State<EditProfile> {
  //  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  UploadTask? task;
  File? file;
  @override
  Widget build(BuildContext context) {
    final TextEditingController namecontroller = TextEditingController();
    final TextEditingController addresscontroller = TextEditingController();
    final TextEditingController paymentcontroller = TextEditingController();
    final TextEditingController emailcontroller = TextEditingController();
    final TextEditingController passwordcontroller = TextEditingController();
    final TextEditingController confirmpasswordcontroller =
        TextEditingController();
    String downloadUrl = "";
    String imagepath = "";
    bool obscureText = true;

    void pickImage() async {
      final ImagePicker _picker = ImagePicker();
      final image = await _picker.pickImage(source: ImageSource.gallery);
      setState(() {
        imagepath = image!.path;
        file = File(imagepath);
      });
    }

    void submit() async {
      try {
        var imagefile = FirebaseStorage.instance.ref().child('/.jpg');
        UploadTask task = imagefile.putFile(file!);
        TaskSnapshot snapshot = await task;
        downloadUrl = await snapshot.ref.getDownloadURL();
        final String name = namecontroller.text;
        final String email = emailcontroller.text;
        final String address = addresscontroller.text;
        final String payment = paymentcontroller.text;
        final String password = passwordcontroller.text;
        final String confirmPassword = confirmpasswordcontroller.text;
        showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("Updation Profile"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text('Profile Updated'),
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
      } catch (e) {
        showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text("SignUp"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('$e[message]'),
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
        title: const Center(
            child: Text(
          "News App",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 300),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                icon:
                    const Icon(Icons.arrow_back_ios_new, color: Colors.black)),
          )
        ],
      ),
      body: FittedBox(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: InkWell(
                      child: CircleAvatar(
                        backgroundImage: file == null
                            ? const AssetImage("")
                            : FileImage(File(file!.path)) as ImageProvider,
                        radius: 50,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: IconButton(
                      onPressed: pickImage,
                      icon: const Icon(Icons.camera, color: Colors.black)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                            controller: namecontroller,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Name',
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                            controller: emailcontroller,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Email',
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                            obscureText: obscureText,
                            controller: passwordcontroller,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              labelText: 'Enter your Password',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                      const Icon(
                                        Icons.visibility,
                                        color: Colors.white,
                                        size: 20,
                                      );
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.visibility_off,
                                    size: 20,
                                    color: Colors.white,
                                  )),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                            obscureText: obscureText,
                            controller: confirmpasswordcontroller,
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              labelText: 'Confirm Password',
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                      const Icon(
                                        Icons.visibility,
                                        color: Colors.white,
                                        size: 20,
                                      );
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.visibility_off,
                                    size: 20,
                                    color: Colors.white,
                                  )),
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Center(
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                            controller: addresscontroller,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Address',
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
                        width: 200,
                        child: TextFormField(
                            controller: paymentcontroller,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Payment Detail',
                            )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: SizedBox(
                        // width: 340,
                        width: MediaQuery.of(context).size.width - 130,
                        height: 40,
                        child: ElevatedButton(
                          onPressed:
                              // (){},
                              submit,
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            side:
                                const BorderSide(width: 2, color: Colors.blue),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
