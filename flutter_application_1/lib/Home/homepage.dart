import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/alarm.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
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
                      Image.asset(
                        'Adarsh2.png',
                        height: kToolbarHeight * 0.6,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Text("Hello Adarsh"),
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
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.logout),
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
              //mainAxisAlignment: MainAxisAlignment.start,
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
                  style: TextStyle(
                    fontFamily: GoogleFonts.inika().fontFamily,
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
                          MaterialPageRoute(builder: (context) => LoginPage()),
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
                          MaterialPageRoute(builder: (context) => LoginPage()),
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
                          MaterialPageRoute(builder: (context) => Alarmpage()),
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
                          MaterialPageRoute(builder: (context) => LoginPage()),
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
                          MaterialPageRoute(builder: (context) => LoginPage()),
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
                          MaterialPageRoute(builder: (context) => LoginPage()),
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
        backgroundColor: Color.fromRGBO(196, 241, 205, 1.0),
      ),
      bottomNavigationBar: BottomAppBar(child: Footer(),),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}
