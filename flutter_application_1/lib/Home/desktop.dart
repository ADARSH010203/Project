import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String username = prefs.getString('username') ?? '';
      String password = prefs.getString('password') ?? '';

      if (username.isEmpty) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
       } 
      //  else {
        // Navigator.of(context).pushReplacement(
        //   MaterialPageRoute(
        //     // builder: (context) => Homepage(
        //     //   name1: username,
        //     //   password1: password,
        //     //   email: '',
        //     //   phone: '',
        //     //   dateOfBirth: '',
        //     //   themeMode: ThemeMode,

        //     ),
        //   ),
        // );
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(102, 205, 224, 1),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Center(
          child: Column(
            
            children: [
              
                ClipOval(
                
                child: Column(
                  children: [
                  Image.asset('assets/APX.jpg',fit: BoxFit.contain),], // Ensure the image path is correct
                ),
                ),
                SizedBox(
                  height: 40,
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  """Developed By :Adarsh
                            Priyanka
                            Xiroza""",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
