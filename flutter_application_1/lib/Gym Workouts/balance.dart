import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
const Email = "https://www.youtube.com/watch?v=hYo72r8Ivso";

class Balance extends StatefulWidget {
  const Balance({super.key});

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  
  late YoutubePlayerController _email;
  late YoutubePlayerController _tbarcontroller;
  

  @override
  void initState() {
    super.initState();
    final emailId = YoutubePlayer.convertUrlToId(Email);
    _email = YoutubePlayerController(
      initialVideoId: emailId!, // Deadlift video
      flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
    );
    _tbarcontroller = YoutubePlayerController(
      initialVideoId: emailId, // Replace with your video URL
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }
 
  
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWeidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gym Workouts"),

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          
          children: [
            Container(
              width: screenWeidth*0.9,
              margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 168, 219, 249),
              borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Balance: Single-leg Stand",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.telephoneNumber,
                    ),
                    
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(children: [

                   
                  const Text(
'A fundamental exercise in many balance routines, the single-leg stand challenges your stability while engaging your core and lower body. It s an excellent move for improving balance and strengthening the muscles around your ankles and knees. If you want to master the single-leg stand, check out this guide.       '             ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>const Balance()),
                        );
                      },
                      child: const Text(
                        "CHECK OUT THIS Article",
                        style: TextStyle(
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                    ),
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                    YoutubePlayer(
                      controller: _email,
                      showVideoProgressIndicator: false,
                      onReady: () => debugPrint('Ready'),
                      bottomActions: [
                        CurrentPosition(
                          
                        ),
                        ProgressBar(
                          isExpanded: true,
                          colors: const ProgressBarColors(
                            playedColor: Colors.amber,
                            handleColor: Colors.amberAccent,
                          ),
                        )
                      ],
                    
                    ),],),), ],),
                  )
                ],
              ),
                     
            ),
            Container(
              width: screenWeidth*0.9,
              margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 168, 219, 249),
              borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      // color: const Color.fromARGB(255, 131, 112, 118),
                    ),
                  child:  const Column(
                    children: [
                      Text(
                        "Balance: Bosu Ball",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        
                      ),
                    ],
                  ),),
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text(
'A go-to tool for balance training, the Bosu Ball offers a dynamic workout that targets your core, stabilizer muscles, and overall coordination. This exercise is perfect for those looking to enhance their stability while building strength. For tips on maximizing your Bosu Ball workouts, explore this article.'                          ),
                    
                    InkWell(
                      onTap: (){

                      },
                      child: const Text(
                        "CHECK OUT THIS Article",
                        style: TextStyle(
                          color: Color.fromARGB(255, 191, 131, 131),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                       padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          YoutubePlayer(controller: _tbarcontroller,
                          showVideoProgressIndicator: false,
                          
                          ),
                        ],
                      ),
                    )
                ],
              ),
                     
            ),
              ],
                    ),
                  ),
            Container(
              width: screenWeidth*0.9,
margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 168, 219, 249),
              borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      // color: Colors.pink,
                    ),
                  child:  const Column(
                    children: [
                      Text(
'Balance: Tai Chi',                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        
                      ),
                    ],
                  ),),
                  Container(
                     padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text(
                        "Tai Chi, an ancient practice with slow, deliberate movements, improves balance, flexibility, and mental focus. Ideal for all ages, it's a low-impact exercise that enhances stability and well-being. For more details and how to add Tai Chi to your routine, check out this guide."
                          ),
                      
                  
                  
                    InkWell(
                      onTap: (){

                      },
                      child: const Text(
                        "CHECK OUT THIS Article",
                        style: TextStyle(
                          color: Color.fromARGB(255, 191, 131, 131),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                       padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          YoutubePlayer(controller: _tbarcontroller,
                          showVideoProgressIndicator: false,
                          
                          ),
                        ],
                      ),
                    )
                ],
              ),
          ),],),       
            ),
            Container(
              width: screenWeidth*0.9,
margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 168, 219, 249),
              borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      // color: Colors.pink,
                    ),
                  child:  const Column(
                    children: [
                      Text(
                        "Balance: Stability Ball Exercises",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        
                      ),
                    ],
                  ),),
                  const SizedBox(height: 20,),
                  Container(
                     padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text(
                        "Stability ball exercises are key in many balance-focused routines, engaging your core and improving overall body control. These exercises are excellent for enhancing posture, coordination, and strength. If you're looking to get the most out of your stability ball workouts, take a look at this resource."                    ),
                    
                    InkWell(
                      onTap: (){
                        
                      
                      },
                      child: const Text(
                        "CHECK OUT THIS Article",
                        style: TextStyle(
                          color: Color.fromARGB(255, 191, 131, 131),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          YoutubePlayer(controller: _tbarcontroller,
                          showVideoProgressIndicator: false,
                          
                          ),
                        ],
                      ),
                    )
                ],
              ),
                  )]
                    ),
                  
                     
            ),
           
            ],),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 88, 185, 209),
        child: Footer(),

      ),
                
            
    );
  }
}