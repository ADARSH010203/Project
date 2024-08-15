import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/login.dart';

import 'profile.dart';

class Drawerbar extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String dateOfBirth;

  const Drawerbar({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 280,
            child: DrawerHeader(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  profileIma(),
                  profileText(
                    name: name,
                    email: email,
                    phone: phone,
                    dateOfBirth: dateOfBirth,
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 88, 185, 209),
              ),
            ),
          ),
          _buildListTile(
            context,
            Icons.language,
            'App Language',
            () {
              Navigator.pop(context);
            },
          ),
          _buildListTile(
            context,
            Icons.help,
            'Help',
            () {
              Navigator.pop(context);
            },
          ),
          _buildListTile(
            context,
            Icons.settings,
            'Settings',
            () {
              Navigator.pop(context);
            },
          ),
          _buildListTile(
            context,
            Icons.local_drink_sharp,
            'Hydration',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          _buildListTile(
            context,
            Icons.notifications,
            'Notification',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          _buildListTile(
            context,
            Icons.logout,
            'Logout',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  ListTile _buildListTile(BuildContext context, IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.black54),
      title: Text(title),
      onTap: onTap,
    );
  }
}

class profileIma extends StatelessWidget {
  const profileIma({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: ClipOval(
          child: Image.asset(
            'assets/Adarsh2.png',
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class profileText extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String dateOfBirth;

  const profileText({
    Key? key,
    required this.name,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Name: $name',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text(
            'Email: $email',
            style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 1, 56)),
          ),
          SizedBox(height: 4),
          Text(
            'Phone: $phone',
            style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 1, 56)),
          ),
          SizedBox(height: 4),
          Text(
            'Date of Birth: $dateOfBirth',
            style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 1, 56)),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>Profile())
                  );
                },
                icon: Icon(Icons.edit),
                label: Text(
                  "Update",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
                onPressed: () {
                  // Handle delete profile action
                },
                icon: Icon(Icons.delete),
                label: Text(
                  "Delete",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
