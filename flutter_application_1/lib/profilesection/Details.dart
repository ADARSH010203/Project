import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/pageTransition.dart';
import 'package:flutter_application_1/profilesection/emergencyPage.dart';
import 'package:flutter_application_1/profilesection/personal.dart';
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
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "User Display",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: screenHeight * 0.15,
                    width: screenHeight * 0.15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.shade100,
                    ),
                  ),
                  Image.asset(
                    "assets/profile.png",
                    height: screenHeight * 0.1,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,  // Position the camera icon on the right side
                    child: InkWell(
                      onTap: () {
                        // Logic to update profile image
                      },
                      child: Container(
                        padding: EdgeInsets.all(screenHeight * 0.008),
                        decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.camera_alt,
                          size: screenHeight * 0.02,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                widget.name1,
                style: TextStyle(
                  fontSize: screenHeight * 0.03,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: screenHeight * 0.015),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2, vertical: screenHeight * 0.015),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    PageTransition(page: const Update(), beginOffset: const Offset(-1.0, -1.0), endOffset: Offset.zero),
                  );
                },
                child: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: screenHeight * 0.02),
                ),
              ),
              SizedBox(height: screenHeight * 0.04),

              // Profile options
              Column(
                children: [
                  ProfileOption(icon: Icons.person, label: "Personal Information", onTap: () {
                    Navigator.of(context).push(PageTransition(page: const Information(
                      name: '', password: '', phone: '', gender: '', height: '', weight: '', dateOfBirth: '', address: '', blood: '', nationality: '', userName: '', UserName: '',
                    ),beginOffset:const Offset(-1.0,-1.0),endOffset:Offset.zero));
                  }),
                  ProfileOption(icon: Icons.contacts, label: "Emergency Contacts", onTap: () {
                    Navigator.of(context).push(PageTransition(page: const EmergencyPage(),beginOffset: const Offset(-1.0, -1.0), endOffset: Offset.zero));
                  }),
                  ProfileOption(icon: Icons.help_outline, label: "Help", onTap: () {}),
                  ProfileOption(icon: Icons.settings_outlined, label: "Settings", onTap: () {}),
                  ProfileOption(icon: Icons.notifications_none, label: "Notifications", onTap: () {}),
                  ProfileOption(icon: Icons.info_outline, label: "About Us", onTap: () {}),
                  ProfileOption(icon: Icons.logout, label: "Logout", onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 88, 185, 209),
        child: Footer(),
      ),
    );
  }
}

// Reusable ProfileOption widget for each row with modern styling
class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const ProfileOption({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.008),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.05),
            child: Row(
              children: [
                Icon(icon, size: screenHeight * 0.04, color: Colors.blueAccent),
                SizedBox(width: screenWidth * 0.05),
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(fontSize: screenHeight * 0.025, color: Colors.black87),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, size: screenHeight * 0.02, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
