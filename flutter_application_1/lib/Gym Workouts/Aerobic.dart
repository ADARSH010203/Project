import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
final Email = "https://www.youtube.com/watch?v=hYo72r8Ivso";

class Aerobic extends StatefulWidget {
  const Aerobic({super.key});

  @override
  State<Aerobic> createState() => _AerobicState();
}

class _AerobicState extends State<Aerobic> {
  
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
      initialVideoId: emailId!, // Replace with your video URL
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }
 
  
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWeidth = mediaQuery.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Gym Workouts"),

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          
          children: [
            Container(
              width: screenWeidth*0.9,
              margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 168, 219, 249),
              borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Back Deadlift",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.telephoneNumber,
                    ),
                    
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(children: [

                   
                  const Text(
                      "The bread and butter of countless gym routines,his move, if done properly, will predominantly engage your back and legs, while building overall strength for you entire body. If you want to master the deadlift, check out this article.",
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Aerobic()),
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
                    
                    SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
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
              color: Color.fromARGB(255, 168, 219, 249),
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
                  child:  Column(
                    children: [
                      Text(
                        "Back: T-Bar Row",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        
                      ),
                    ],
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text(
                        "As the favorite back exercise of Arnold Schwarzenegger himself, the T-bar row transcends all mere mortal workouts simply because of the Austrian Oak's blessing. Here's how to do it."
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
                    SizedBox(height: 20,),
                    Container(
                       padding: EdgeInsets.all(12),
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
              color: Color.fromARGB(255, 168, 219, 249),
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
                  child:  Column(
                    children: [
                      Text(
                        "Back: “The Bird-Dog” aka One-Arm, One-Leg Plank",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        
                      ),
                    ],
                  ),),
                  Container(
                     padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text(
                        "As the favorite back exercise of Arnold Schwarzenegger himself, the T-bar row transcends all mere mortal workouts simply because of the Austrian Oak's blessing. Here's how to do it."
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
                    SizedBox(height: 20,),
                    Container(
                       padding: EdgeInsets.all(12),
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
              color: Color.fromARGB(255, 168, 219, 249),
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
                  child:  Column(
                    children: [
                      Text(
                        "Back: T-Bar Row",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        
                      ),
                    ],
                  ),),
                  SizedBox(height: 20,),
                  Container(
                     padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        const Text(
                        "As the favorite back exercise of Arnold Schwarzenegger himself, the T-bar row transcends all mere mortal workouts simply because of the Austrian Oak’s blessing. Here’s how to do it."                    ),
                    
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
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(12),
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
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
                color: Color.fromARGB(255, 88, 185, 209),

      ),
                
            
    );
  }
}