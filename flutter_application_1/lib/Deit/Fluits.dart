import 'package:flutter/material.dart';
import 'package:flutter_application_1/Deit/lunch.dart';
import 'package:flutter_application_1/Home/Registration.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Fluits extends StatefulWidget {
  const Fluits({super.key});

  @override
  State<Fluits> createState() => _FluitsState();
}

class _FluitsState extends State<Fluits> {
  // Function to show modal bottom sheet
  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Icon(Icons.image, color: Colors.orange),
                title: Text('Image', style: TextStyle(fontSize: 18)),
                onTap: () {
                  // Add your functionality here
                  Navigator.pop(context); // Close the bottom sheet after selection
                },
              ),
              ListTile(
                leading: Icon(Icons.text_fields, color: Colors.orange),
                title: Text('Text', style: TextStyle(fontSize: 18)),
                onTap: () {
                  // Add your functionality here
                  Navigator.pop(context); // Close the bottom sheet after selection
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 233, 169, 1),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Fluits"),
            Icon(Icons.notification_add),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset("profile.png", height: 70, width: 70),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello, User",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: GoogleFonts.istokWeb().fontFamily,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "What To be Served Today",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: GoogleFonts.istokWeb().fontFamily,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text(
              "Fluits/Salad",
              style: TextStyle(
                fontSize: 32,
                fontFamily: GoogleFonts.istokWeb().fontFamily,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Registration()));
                      },
                      child: Container(
                        height: screenHeight * 0.25,
                        width: screenWidth * 0.4,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/deit/app.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Apple",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Lunch()));
                      },
                      child: Container(
                        height: screenHeight * 0.25,
                        width: screenWidth * 0.4,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/deit/orarnge.jpg"),
                            fit: BoxFit.cover,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Lunch()));
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.orange,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Orange",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
              
                  ClipOval(
                    child: FloatingActionButton(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange,
                      onPressed: _showBottomSheet,
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "From Healthy Food to Happy Life",
              style: TextStyle(
                fontFamily: GoogleFonts.istokWeb().fontFamily,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
        color: Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }
}
