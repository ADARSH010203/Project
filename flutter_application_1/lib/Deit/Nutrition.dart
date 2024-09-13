import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:google_fonts/google_fonts.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({super.key});

  @override
  State<Nutrition> createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    final M = MediaQuery.of(context);
    final screenHeight = M.size.height;
    final screenWidth = M.size.width;
    return Scaffold(

      appBar: AppBar(
        title: Text("Nutrition "),
      ),
      backgroundColor: Color.fromRGBO(255, 233, 169, 1),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.all(15),
          child: Column(children: [
            
            Row(children: [
              Image.asset('assets/APX.jpg',fit: BoxFit.cover,height: screenHeight*0.2,),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello, Xiroza",style: TextStyle(fontFamily: GoogleFonts.istokWeb().fontFamily,fontSize: 13,fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Text("What to be served today? ",style: TextStyle(fontFamily: GoogleFonts.istokWeb().fontFamily,fontSize: 13),)
                ],
              ),
              ],),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text("Nutrition",style: TextStyle(
                  fontFamily: GoogleFonts.istokWeb().fontFamily,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            Container(
              width: screenWidth*0.9,
              child: Row(
                children: [
                  Container(
                    
                    width: screenWidth*0.4,
                    child: Image.asset("assets/Adarsh2.png",)
                    ),
                  SizedBox(width: screenWidth*0.05,),
                  Container(
                    width: screenWidth*0.4,
                    child: Image.asset("assets/Adarsh2.png",fit: BoxFit.cover)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: screenWidth*0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth*0.85,
                    height: screenWidth*0.85,
                    
                    child: Column(
                      children: [
                  
                        GestureDetector(  
                          child: Image.asset("assets/Adarsh2.png"), 
                          onTap: (){  
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  LoginPage()));
                          }
                          ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],),
        ),
      ),
    );
  }
}