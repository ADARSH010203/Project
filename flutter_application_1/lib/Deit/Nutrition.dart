import 'dart:math';

import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  const Nutrition({super.key});

  @override
  State<Nutrition> createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width; 
    return Scaffold(
      appBar: AppBar(
        title: Text("Nuetroin Page"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromRGBO(255, 233, 169, 1),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight*0.8,
          width: screenWidth*0.8,
           padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          child: Column(children: [
            Row(
           
              children: [
                Image.asset('assets/Profile.png',fit: BoxFit.cover,height: 60,),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello ,Xiroza"),
                    SizedBox(height: 5,),
                    Text("What to Be Served Today?"),
                  ],
                ),
                
              ],
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Text("Nutration",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  ),
                  ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  width: screenWidth*0.8,
                  child: Row(
                    children: [
                      Row(
                        
                        children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Image.asset("assets/Adarsh2.png",height: 200,color:  Colors.white10,fit: BoxFit.cover,colorBlendMode:BlendMode.color,scale: sqrt1_2,)),
                        ]
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Image.asset('APX.jpg',height: 200,),
                        ],
                      ),
                      
                    ],
                  ),
                ),

                
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
              Image.asset('nature.webp',fit: BoxFit.contain,),
              ],
            )
            
          ],),
        ),
      ),
    );
  }
}