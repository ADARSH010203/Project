import 'package:flutter/material.dart';
import 'package:flutter_application_1/Deit/Nutrition.dart';
import 'package:flutter_application_1/Gym%20Workouts/Aerobic.dart';
import 'package:flutter_application_1/Gym%20Workouts/GYM.dart';
import 'package:flutter_application_1/Gym%20Workouts/balance.dart';
import 'package:flutter_application_1/Home/Exercise.dart';
import 'package:flutter_application_1/Home/Quotations.dart';
import 'package:flutter_application_1/Hydration/water.dart';
// import 'package:flutter_application_1/Home/AlamScreen.dart';
// import 'package:flutter_application_1/Home/BGMI_CALC.dart';
// import 'package:flutter_application_1/Home/login.dart';

import 'package:google_fonts/google_fonts.dart';

import 'Home/BGMI_CALC.dart';
import 'Home/desktop.dart';

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
      

      routes:{
        "/":(context)=>Quotations(),
        
        //  "/login":(context)=>Homepage(),
      },
    );
  }
}

