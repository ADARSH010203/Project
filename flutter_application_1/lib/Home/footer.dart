import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/homepage.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Navigate to the settings page when the settings button is pressed
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SettingsPage()),
                // );
              },
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                // Navigate to the about page when the about button is pressed
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AboutPage()),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}