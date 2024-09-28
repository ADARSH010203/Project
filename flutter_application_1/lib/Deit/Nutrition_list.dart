import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:google_fonts/google_fonts.dart';

class NList extends StatefulWidget {
  const NList({super.key});

  @override
  State<NList> createState() => _NListState();
}

class _NListState extends State<NList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          
          Text("Nutrition"),
          Icon(Icons.notification_add),
          

        ],
      ),),
      backgroundColor: Color.fromRGBO(255, 233, 169, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.all(8),
              child: Row(
                children: [
                  Image.asset("profile.png",height: 70,width: 70,),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Text("Hello,User",style: TextStyle(
                        fontSize: 18,
                        fontFamily: GoogleFonts.istokWeb().fontFamily,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("What To be Served Today",style: TextStyle(
                        fontSize: 18,
                        fontFamily: GoogleFonts.istokWeb().fontFamily,
                      ),),
                    ],
                  )
                ],
              ),
            ),
            Text("Nutrition",
            style: TextStyle(fontSize: 32,
                        
              fontFamily: GoogleFonts.istokWeb().fontFamily,
              fontWeight: FontWeight.bold,),),
            Row(
              children: [
                GestureDetector(
                      onTap: () {
                        // Add your desired functionality here
                      },
                      child: Container(
                        height: 250,
                        width: 200,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Food: Sandwich",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Fruit: Orange",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Drink: Milk",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: TextButton(
                                onPressed: () {
                                  // Add the TextButton functionality here
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
                                  "Breakfast",
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
                    GestureDetector(
                      onTap: () {
                        // Add your desired functionality here
                      },
                      child: Container(
                        height: 250,
                        width: 200,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Food: Sandwich",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Fruit: Orange",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Drink: Milk",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: TextButton(
                                onPressed: () {
                                  // Add the TextButton functionality here
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
                                  "Breakfast",
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
                    )

                

              ],
            ),
            Column(
              children: [
                GestureDetector(
                      onTap: () {
                        // Add your desired functionality here
                      },
                      child: Container(
                        height: 200,
                        width: 500,
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Food: Sandwich",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Fruit: Orange",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Drink: Milk",
                                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: TextButton(
                                onPressed: () {
                                  // Add the TextButton functionality here
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
                                  "Breakfast",
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
                    Text("From Healthy Food To Happy Life",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: GoogleFonts.istokWeb().fontFamily,
                      color: Color.fromRGBO(58, 58, 58, 1),
                      ),
                      ),
              ],
            )

          ],
        ),
        
      ),
      bottomNavigationBar: BottomAppBar(child: Footer(),
      color: Color.fromRGBO(98, 169, 221, 1),),
    );

  }
}