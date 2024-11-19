import 'package:flutter/material.dart';
import 'package:flutter_application_1/Deit/n_list.dart';
import 'package:flutter_application_1/Home/AlamScreen.dart';
import 'package:flutter_application_1/Home/Exercise.dart';
import 'package:flutter_application_1/Home/Quotations.dart';
import 'package:flutter_application_1/Home/pageTransition.dart';
import 'package:flutter_application_1/Home/theme/Themeprovider.dart';
import 'package:flutter_application_1/Home/drawerbar.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:flutter_application_1/Home/todolist.dart';
import 'package:flutter_application_1/Hydration/water.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
 // Import the ThemeProvider

class Homepage extends StatefulWidget {
  final String name1;
  final String password1;
  final String email;
  final String phone;
  final String dateOfBirth;

  const Homepage({
    super.key,
    required this.name1,
    required this.password1,
    required this.email,
    required this.phone,
    required this.dateOfBirth,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: screenWidth * 0.09,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: kToolbarHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/Adarsh2.png',
                          height: kToolbarHeight * 0.99,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  "Hello ${widget.name1}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.settings),
                ),
                IconButton(
                  onPressed: () {
                        Navigator.of(context).push(
                          PageTransition(
                            page: LoginPage(),
                            
                            beginOffset: Offset(-1.0, 0.0),
                            endOffset: Offset.zero,
                      ),
                    );
                  },
                  icon: Icon(Icons.logout),
                ),
                IconButton(
                  onPressed: () {
                    // Toggle the theme
                    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                  },
                  icon: Icon(Icons.brightness_6),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            width: screenWidth * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  cursorColor: Color.fromARGB(255, 83, 167, 203),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mood, color: Color.fromARGB(255, 83, 167, 203)),
                    hintText: "What's your mood now?",
                    filled: true,
                    fillColor: Color.fromARGB(255, 83, 167, 203),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 20),
                Text(
                  "Start With One Of These",
                  style: GoogleFonts.inika(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: Exercise(),beginOffset: Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(196, 241, 205, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.fitness_center, size: 50),
                            SizedBox(height: 10),
                            Text(
                              "Exercise",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: Quotations(), beginOffset: Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                            
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 212, 184, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.format_quote, size: 50),
                            SizedBox(height: 10),
                            Text(
                              "Quotations",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: Alamscreen(),beginOffset: Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(229, 238, 194, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.alarm, size: 50),
                            SizedBox(height: 10),
                            Text(
                              "Alarm",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: TodoScreen(
                            name1: widget.name1,
                          ), endOffset: Offset.zero, beginOffset: Offset(-1.0, -1.0)
                          ),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(223, 241, 217, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.checklist, size: 50),
                            SizedBox(height: 10),
                            Text(
                              "To Do List",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
  ),
                               SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: Hydration(),
                            beginOffset: Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(181, 217, 244, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.local_drink, size: 50),
                            SizedBox(height: 10),
                            Text(
                              "Hydration",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: NList(),
                            beginOffset: Offset(-1.0, -1.0),
                            endOffset: Offset.zero,
                            ),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(31, 136, 217, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.restaurant, size: 50),
                            SizedBox(height: 10),
                            Text(
                              "Nutrition",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Drawerbar(
          name: widget.name1,
          email: widget.email,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
        color: Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }
}

