import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_application_1/Home/login.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 2), () async {
    //   final SharedPreferences prefs = await SharedPreferences.getInstance();
    //   String username = prefs.getString('username') ?? '';
    //   if (username.isEmpty) {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => LoginPage()),
    //     );
    //   } else {
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(builder: (context) => Homepage()),
    //     );
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(102, 205, 224, 1),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset('assets/APX.jpg'), // Ensure the image path is correct
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Developed By: APX",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
