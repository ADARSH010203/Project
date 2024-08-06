import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/login.dart';

class Drawerbar extends StatelessWidget {
  const Drawerbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const profileIma(),
                const profiletext(),
              ],
            ),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 88, 185, 209),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: const Text('App Language'),
            onTap: () {
              // Handle app language change
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Help'),
            onTap: () {
              // Handle help
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle settings
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_drink_sharp),
            title: const Text('Hydration'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>LoginPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notification'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>LoginPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {     
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginPage()),
                        
            );// Navigate to login page
            },
          ),
        ],
      ),
    );
  }
}

class profileIma extends StatelessWidget {
  const profileIma({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/profile.png', // Replace with your actual image path
        height: 50,
        width: 50,
        fit: BoxFit.cover,
      ),
    );
  }
}

class profiletext extends StatelessWidget {
  const profiletext({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Adarsh kumar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("akumar611@rku.ac.in", style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 1, 56))),
        ],
      ),
    );
  }
}
