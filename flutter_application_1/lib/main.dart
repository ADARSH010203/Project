import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/Exercise.dart';
import 'package:flutter_application_1/Home/Quotations.dart';
import 'package:flutter_application_1/Home/desktop.dart';
import 'package:flutter_application_1/Home/drawerbar.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_application_1/Home/profile.dart';
import 'package:flutter_application_1/Home/todolist.dart';
// import 'package:flutter_application_1/Home/login.dart';
// import 'package:flutter_application_1/Homepage.dart';
// import 'package:flutter_application_1/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Health App',
      theme: ThemeData(
        fontFamily: GoogleFonts.inika().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      // home: LoginPage(),

      routes:{
        "/":(context)=>Desktop(),
        
        //  "/login":(context)=>Homepage(),
      },
    );
  }
}