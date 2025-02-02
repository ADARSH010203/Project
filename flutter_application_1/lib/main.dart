import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/account/profile.dart';
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
      // home: FashionPage(),

       routes:{
           "/": (context) => const ModernHomeScreen(),
            
         //  "/login":(context)=>Homepage(),
       },
    );
  }
}
