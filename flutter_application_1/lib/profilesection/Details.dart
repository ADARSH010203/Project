import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/profilesection/emergencyPage.dart';
import 'package:flutter_application_1/profilesection/update.dart';

class Details extends StatefulWidget {
  final String name1;
  const Details({super.key, required this.name1});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final ma = MediaQuery.of(context);
    final screenHeight = ma.size.height;
    final screenWidth = ma.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "User Display",
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/profile.png",
                      height: screenHeight * 0.1,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Text(
                      widget.name1,
                      style: TextStyle(
                        fontSize: screenHeight * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.015),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Update()),
                        );
                      },
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: screenHeight * 0.02),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.04),

              // Personal Information Row
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: screenHeight * 0.04, color: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Personal Information button click'
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Update() )
                          );
                        },
                        child: Text(
                          "Personal Information",
                          style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Emergency Contacts Row
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.emergency, size: screenHeight * 0.04, color: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Emergency Contacts button click
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> EmergencyPage())
                          );
                        },
                        child: Text(
                          "Emergency Contacts",
                          style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Help Row
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.help, size: screenHeight * 0.04, color: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Help button click
                        },
                        child: Text(
                          "Help",
                          style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Settings Row
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: screenHeight * 0.04, color: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Settings button click
                        },
                        child: Text(
                          "Settings",
                          style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Notifications Row
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications, size: screenHeight * 0.04, color: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Notifications button click
                        },
                        child: Text(
                          "Notifications",
                          style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // About Us Row
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  children: [
                    Icon(Icons.info, size: screenHeight * 0.04, color: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle About Us button click
                        },
                        child: Text(
                          "About Us",
                          style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.015),

              // Logout Row
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.02),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.logout, size: screenHeight * 0.04, color: Colors.black),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // Handle Logout button click
                        },
                        child: Text(
                          "Logout",
                          style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
        color: Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }
}
