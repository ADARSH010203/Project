import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/StopWatch.dart';
// import 'package:flutter_application_1/Home/alarm.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_application_1/Home/login.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 88, 185, 209),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 88, 185, 209),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
            IconButton(
              icon: const Icon(Icons.home,
              
              ),
              
              
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(builder: (context) => const Homepage()),
                // );
              },
            ),
            
            IconButton(
              icon: const Icon(Icons.timer),
              onPressed: () {
                // Navigate to the about page when the about button is pressed
                Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) => const StopWatch()),
                );
              },
            ),
            IconButton(icon: const Icon(Icons.person_sharp),
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>LoginPage()),
              );
              
            }),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                // Navigate to the settings page when the settings button is pressed
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SettingsPage()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}