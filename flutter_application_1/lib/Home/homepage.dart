import 'package:firebase_auth/firebase_auth.dart';
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
import 'package:flutter_application_1/service/database.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
 // Import the ThemeProvider

class Homepage extends StatefulWidget {
  final String? userId;
  const Homepage({
    super.key,
    this.userId
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final auth = FirebaseAuth.instance;
  Map<String, dynamic>? userData = {};

  @override
  void initState() {
    DatabaseMethods(userId: widget.userId).getUserDetails().then((snapshot) {
      if(snapshot.exists) {
        userData = snapshot.data() as Map<String, dynamic>?;
      }
      setState(() {
        
      });
    });
    super.initState();
  }

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
                const SizedBox(width: 8),
                Text(
                  
                  "Hello ${userData?['user_name']}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
                IconButton(
                  onPressed: () {
                    auth.signOut().then((value){
                    Navigator.push(context,
                      PageTransition(
                            page: LoginPage(),
                            
                            beginOffset: const Offset(-1.0, 0.0),
                            endOffset: Offset.zero,
                    ));
                    });
                          
                    
                  },
                  icon: const Icon(Icons.logout),
                ),
                IconButton(
                  onPressed: () {
                    // Toggle the theme
                    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                  },
                  icon: const Icon(Icons.brightness_6),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            width: screenWidth * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  cursorColor: const Color.fromARGB(255, 83, 167, 203),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.mood, color: Color.fromARGB(255, 83, 167, 203)),
                    hintText: "What's your mood now?",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 83, 167, 203),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(80),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 20),
                Text(
                  "Start With One Of These",
                  style: GoogleFonts.inika(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: const Exercise(),beginOffset: const Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(196, 241, 205, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Column(
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
                            page: const Quotations(), beginOffset: const Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                            
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(244, 212, 184, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Column(
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
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: const Alamscreen(),beginOffset: const Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(229, 238, 194, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Column(
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
                            name1: userData?['user_name'],
                          ), endOffset: Offset.zero, beginOffset: const Offset(-1.0, -1.0)
                          ),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(223, 241, 217, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Column(
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
                               const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {

                        Navigator.of(context).push(
                          PageTransition(
                            page: const Hydration(),
                            beginOffset: const Offset(-1.0, -1.0),
                            endOffset: Offset.zero,),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(181, 217, 244, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ), 
                        child: const Column(
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
                            page: const NList(),
                            beginOffset: const Offset(-1.0, -1.0),
                            endOffset: Offset.zero,
                            ),
                        );
                      },
                      child: Container(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.4,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(31, 136, 217, 1),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: const Column(
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
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Drawerbar(
          name: userData?['user_name'],
          email: userData?['user_email'],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 88, 185, 209),
        child: Footer(),
      ),
    );
  }
}

