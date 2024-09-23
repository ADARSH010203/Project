import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Color.fromARGB(255, 155, 112, 230),
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          // color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 242, 246, 242),
        textTheme: Theme.of(context).textTheme,
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.white),
        dialogBackgroundColor: Color.fromARGB(255, 170, 34, 34),
        scaffoldBackgroundColor: Color.fromARGB(255, 35, 28, 70),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.black),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Color.fromARGB(255, 255, 254, 254)),
        
      );
}
