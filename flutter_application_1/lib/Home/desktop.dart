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
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
       } 
      //  else {
        // Navigator.of(context).push(
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF66c3d6), Color(0xFF3b9ab8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/APX.jpg',
                    fit: BoxFit.cover,
                    height: 150,
                    width: 150,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Swipe to continue to the login page",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 80),
              
                
            ],
          ),
        ),
      ),
    );
  }
}
