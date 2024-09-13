import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/BGMI_CALC.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:flutter_application_1/profilesection/Details.dart';
import 'package:flutter_application_1/profilesection/update.dart';
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
            height: 250,
            child: DrawerHeader(
              padding: EdgeInsets.zero,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    updateIma(),
                    updateText(
                      name: name,
                      email: email,
                    ),
                  ],
                ),
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
            Icons.calculate_rounded,
            'BMI Calculator',
            () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => BgmiCalc()),
              );
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
                MaterialPageRoute(builder: (context) => Hydration()),
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

class updateIma extends StatelessWidget {
  const updateIma({super.key});

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

class updateText extends StatelessWidget {
  final String name;
  final String email;

  const updateText({
    Key? key,
    required this.name,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Aligns the text to the center
          children: [
            Text(
              'Name: $name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              'Email: $email',
              style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 14, 1, 56)),
            ),
            SizedBox(height: 16),
            Container(
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceAround, // Centers the "Update" button
                children: [
                  Row(
                    children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, 
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Details(name1: 'Xiroza',))
                      );
                    },
                    icon: Icon(Icons.view_agenda),
                    label: Text(
                      "Update",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),],),
              Row(
              mainAxisAlignment: MainAxisAlignment.center, // Centers the "Update" button
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, 
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Details(name1: name,
                        
                      ))
                    );
                  },
                  icon: Icon(Icons.edit),
                  label: Text(
                    "Profile",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
