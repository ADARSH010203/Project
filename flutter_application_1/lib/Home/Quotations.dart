import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/footer.dart';

class Quotations extends StatefulWidget {
  const Quotations({super.key});

  @override
  State<Quotations> createState() => _QuotationsState();
}

class _QuotationsState extends State<Quotations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotations"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Column(children: [
            Column(
              children: [
                
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),   
                    color: const Color.fromRGBO(162 ,207, 244, 1),
                  ),
                  child: const ExpansionTile(
                    backgroundColor: Color.fromARGB(255, 178, 251, 181),
                    iconColor: Colors.white,
                    // shape: ShapeBorder.lerp(a, b, t),

                    title:Text(
                      "Positive context",
                    ),
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                    
                      child: Text(
                        "Stability ball exercises are key in many balance-focused routines, engaging your core and improving overall body control. These exercises are excellent for enhancing posture, coordination, and strength. If you're looking to get the most out of your stability ball workouts, take a look at this resource."
                      ),),
                    ],
                    
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),color: const Color.fromRGBO(162 ,207, 244, 1),
                  ),
                  child: const ExpansionTile(
                    backgroundColor: Color.fromARGB(255, 178, 251, 181),
                    iconColor: Colors.white,
                    // shape: ShapeBorder.lerp(a, b, t),

                    title:Text(
                      "Motivational Quotes:",
                    ),
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                    
                      child: Text(
                        "Keep pushing forward, no matter the obstacles. Every challenge is an opportunity to grow stronger. Believe in your potential and never give up on your dreams",
                      ),),
                    ],
                    
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),color: const Color.fromRGBO(162 ,207, 244, 1),
                  ),
                  child: const ExpansionTile(
                    backgroundColor: Color.fromARGB(255, 178, 251, 181),
                    iconColor: Colors.white,
                    // shape: ShapeBorder.lerp(a, b, t),

                    title:Text(
                      "Success Quotes:",
                    ),
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                    
                      child: Text(
"Success  the result of hard work, perseverance, and learning from failures. Stay focused, stay driven, and embrace every step of the journey"                      ),),
                    ],
                    
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),color: const Color.fromRGBO(162 ,207, 244, 1),
                  ),
                  child: const ExpansionTile(
                    backgroundColor: Color.fromARGB(255, 178, 251, 181),
                    iconColor: Colors.white,
                    // shape: ShapeBorder.lerp(a, b, t),

                    title:Text(
                      "Blissful Quotes",
                    ),
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                    
                      child: Text(
"True happiness comes from within. Cherish the simple moments, find joy in the little things, and let positivity guide your life     "                 ),),
         ],
                    
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),color: const Color.fromRGBO(162 ,207, 244, 1),
                  ),
                  child: const ExpansionTile(
                    backgroundColor: Color.fromARGB(255, 178, 251, 181),
                    iconColor: Colors.white,
                    // shape: ShapeBorder.lerp(a, b, t),

                    title:Text(
                         "Self-love Quotes"                    
                    ),
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                    
                      child: Text(
                        "mbrace who you are, flaws and all. Self-love is the foundation of a fulfilled life. Treat yourself with kindness and prioritize your well-being."
                      ),),
                    ],
                    
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),color: const Color.fromRGBO(162 ,207, 244, 1),
                  ),
                  child: const ExpansionTile(
                    backgroundColor: Color.fromARGB(255, 178, 251, 181),
                    iconColor: Colors.white,
                    // shape: ShapeBorder.lerp(a, b, t),

                    title:Text(
                      "Inspirational Quotes:",
                    ),
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 16.0),
                    
                      child: Text(
                        "Let your actions inspire others to dream big and achieve greatness. Believe in the power of your influence and the positive impact you can make."
                      ),),
                    ],
                    
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                    border: const Border.symmetric(
                      horizontal: BorderSide(
                        width: 15,
                        color: Color.fromRGBO(162 ,207, 244, 1),
                        style: BorderStyle.solid,
                      ),
                      vertical: BorderSide(
                        width: 15,
                        color: Color.fromRGBO(162 ,207, 244, 1),
                        style: BorderStyle.solid,
                      )
                    )
                  ),
                  
                  child: Column(
                    children: [
                      const Text("Quotation of the day",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height: 15,),
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          
                        color: const Color.fromRGBO(162 ,207, 244, 1),
                        ),
                        child: const Column(
                          children: [
                            Text(
                            "Just one small positive thought in the morning can change your whole day.",
                        ),],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(color: Color.fromARGB(255, 88, 185, 209),child: Footer(),
      
      ),
    );
  }
}