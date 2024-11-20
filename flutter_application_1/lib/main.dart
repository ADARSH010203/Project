import 'package:flutter/material.dart';
import 'package:flutter_application_1/Deit/Fluits.dart';
import 'package:flutter_application_1/Deit/Nutrition.dart';
import 'package:flutter_application_1/Deit/lunch.dart';
import 'package:flutter_application_1/Deit/n_list.dart';
import 'package:flutter_application_1/Gym%20Workouts/GYM.dart';
import 'package:flutter_application_1/Home/StopWatch.dart';
import 'package:flutter_application_1/Home/theme/Themeprovider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'profilesection/update.dart';
import 'Gym Workouts/Aerobic.dart';
import 'Home/desktop.dart';
import 'Home/theme/theme.dart';// Assuming your theme provider is in MyTheme.dart

void main() async{
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Health App',
            themeMode: themeProvider.themeMode,
            theme: MyTheme.lightTheme(context),
            darkTheme: MyTheme.darkTheme(context),
            routes: {
              "/": (context) => Desktop(),
              // Add other routes here
            },
          );
        },
      ),
    );
  }
}
