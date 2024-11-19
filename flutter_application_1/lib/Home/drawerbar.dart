import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/BGMI_CALC.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:flutter_application_1/profilesection/Details.dart';
import 'package:flutter_application_1/Hydration/water.dart';

class Drawerbar extends StatelessWidget {
  final String name;
  final String email;

  const Drawerbar({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 280,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF4A90E2), Color(0xFF50E3C2)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: DrawerHeader(
              padding: EdgeInsets.zero,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileImage(),
                    ProfileText(name: name, email: email),
                  ],
                ),
              ),
            ),
          ),
          _buildListTile(context, Icons.language, 'App Language', () => Navigator.pop(context)),
          _buildListTile(context, Icons.help, 'Help', () => Navigator.pop(context)),
          _buildListTile(context, Icons.calculate_rounded, 'BMI Calculator', () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => BgmiCalc()));
          }),
          _buildListTile(context, Icons.settings, 'Settings', () => Navigator.pop(context)),
          _buildListTile(context, Icons.local_drink_sharp, 'Hydration', () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Hydration()));
          }),
          _buildListTile(context, Icons.notifications, 'Notification', () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
          }),
          _buildListTile(context, Icons.logout, 'Logout', () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
          }),
        ],
      ),
    );
  }

  ListTile _buildListTile(BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87),
      ),
      onTap: onTap,
    );
  }
}

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 4),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          'assets/Adarsh2.png',
          height: 90,
          width: 90,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ProfileText extends StatelessWidget {
  final String name;
  final String email;

  const ProfileText({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Text(
            'Name: $name',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 4),
          Text(
            'Email: $email',
            style: TextStyle(fontSize: 14, color: Colors.white70),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Details(name1: name),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            child: Text(
              'View Profile',
              style: TextStyle(fontSize: 16, color: Color(0xFF4A90E2)),
            ),
          ),
        ],
      ),
    );
  }
}
