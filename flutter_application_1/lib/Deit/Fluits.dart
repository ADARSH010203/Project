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
                        "Hello,User",
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
              "Fluits",
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
                        // Add your desired functionality here
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=>Registration())
                        );
                      },
                
                      child: Container(
                        height: screenHeight*0.25,
                        width: screenWidth*0.4,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage("assets/deit/rice.jpg"),fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.black,
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
                                  // Add the TextButton functionality here
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>LoginPage())
                                  );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.orange, // Match the button color
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "BreakFast",
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
                    // Add your desired functionality here
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=>Lunch())
                    );
                  },

                  child: Container(
                    height: screenHeight*0.25,
                    width: screenWidth*0.4,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/deit/sanvid.jpg"),fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black,
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
                              // Add the TextButton functionality here
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>Lunch())
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orange, // Match the button color
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Lunch",
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
            ),],),
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add your desired functionality here
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=>Registration())
                        );
                      },
                
                      child: Container(
                        height: screenHeight*0.25,
                        width: screenWidth*0.4,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage("assets/deit/rice.jpg"),fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.black,
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
                                  // Add the TextButton functionality here
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>LoginPage())
                                  );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.orange, // Match the button color
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "BreakFast",
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
                    // Add your desired functionality here
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=>Lunch())
                    );
                  },

                  child: Container(
                    height: screenHeight*0.25,
                    width: screenWidth*0.4,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/deit/sanvid.jpg"),fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black,
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
                              // Add the TextButton functionality here
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>Lunch())
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orange, // Match the button color
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Lunch",
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
            ),],),
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add your desired functionality here
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=>Registration())
                        );
                      },
                
                      child: Container(
                        height: screenHeight*0.25,
                        width: screenWidth*0.4,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage("assets/deit/rice.jpg"),fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.black,
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
                                  // Add the TextButton functionality here
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>LoginPage())
                                  );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.orange, // Match the button color
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "BreakFast",
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
                    // Add your desired functionality here
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=>Lunch())
                    );
                  },

                  child: Container(
                    height: screenHeight*0.25,
                    width: screenWidth*0.4,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/deit/sanvid.jpg"),fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black,
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
                              // Add the TextButton functionality here
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>Lunch())
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orange, // Match the button color
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Lunch",
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
            ),],),
            Row(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Add your desired functionality here
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context)=>Registration())
                        );
                      },
                
                      child: Container(
                        height: screenHeight*0.25,
                        width: screenWidth*0.4,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage("assets/deit/rice.jpg"),fit: BoxFit.cover),
                          boxShadow: [
                            BoxShadow(
                              // color: Colors.black,
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
                                  // Add the TextButton functionality here
                                  Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context)=>LoginPage())
                                  );
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.orange, // Match the button color
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "BreakFast",
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
                    // Add your desired functionality here
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context)=>Lunch())
                    );
                  },

                  child: Container(
                    height: screenHeight*0.25,
                    width: screenWidth*0.4,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(image: AssetImage("assets/deit/sanvid.jpg"),fit: BoxFit.cover),
                      boxShadow: [
                        BoxShadow(
                          // color: Colors.black,
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
                              // Add the TextButton functionality here
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)=>Lunch())
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orange, // Match the button color
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Lunch",
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
            ),],),
            
            Text(" From Healthy Food to Happy life ",style: TextStyle(fontFamily: GoogleFonts.istokWeb().fontFamily,fontSize: 20),),

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
