import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class gymwork extends StatefulWidget {
  const gymwork({super.key});

  @override
  State<gymwork> createState() => _gymworkState();
}

class _gymworkState extends State<gymwork> {
  late YoutubePlayerController _deadliftcontroller;
  late YoutubePlayerController _tbarcontroller;
  late YoutubePlayerController _oneLegPlank;
  late YoutubePlayerController _Arm;
  

  @override
  void initState() {
    super.initState();
    _deadliftcontroller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=hYo72r8Ivso")!, // Deadlift video
      flags: YoutubePlayerFlags(autoPlay: true, mute: false),
    );
    _tbarcontroller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=B7bqAsxee4I")!, // Replace with your video URL
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    _oneLegPlank = YoutubePlayerController(
      initialVideoId:YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=RKI4Hr9IsgY")!,
      flags: YoutubePlayerFlags(autoPlay: false,mute: false));
    _Arm = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=RKI4Hr9IsgY")!,
      flags: YoutubePlayerFlags(autoPlay: false,mute: false),
      );
  }
  @override
  void dispose() {
    _deadliftcontroller.dispose();
    _tbarcontroller.dispose();
    super.dispose();
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
              padding: const EdgeInsets.all(16.0),
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
                    ),
                    
                  ),
                  const Text(
                      "The bread and butter of countless gym routines,his move, if done properly, will predominantly engage your back and legs, while building overall strength for you entire body. If you want to master the deadlift, check out this article.",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize:12),
                  
                    ),
                    InkWell(
                      onTap: (){

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
                    YoutubePlayer(controller: _deadliftcontroller,
                    showVideoProgressIndicator: false,
                    
                    )
                ],
              ),
                     
            ),
            Container(
              width: screenWeidth*0.9,
margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(16.0),
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
                      color: Colors.pink,
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
                  const Text(
                  "As the favorite back exercise of Arnold Schwarzenegger himself, the T-bar row transcends all mere mortal workouts simply because of the Austrian Oak's blessing. Here's how to do it."
                    ,
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
                    YoutubePlayer(controller: _tbarcontroller,
                    showVideoProgressIndicator: false,
                    
                    )
                ],
              ),
                     
            ),
            Container(
              width: screenWeidth*0.9,
margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(16.0),
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
                      color: Colors.pink,
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
                  const Text(
                  "As the favorite back exercise of Arnold Schwarzenegger himself, the T-bar row transcends all mere mortal workouts simply because of the Austrian Oak's blessing. Here's how to do it."
                    ,
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
                    YoutubePlayer(controller: _oneLegPlank,
                    showVideoProgressIndicator: false,
                    
                    )
                ],
              ),
                     
            ),
            Container(
              width: screenWeidth*0.9,
margin: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
              padding: const EdgeInsets.all(16.0),
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
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                        
                        
                      ),
                    ],
                  ),),
                  const Text(
                    "As the favorite back exercise of Arnold Schwarzenegger himself, the T-bar row transcends all mere mortal workouts simply because of the Austrian Oak’s blessing. Here’s how to do it."
               ,style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,color: Colors.black),

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
                    YoutubePlayer(controller: _Arm,
                    showVideoProgressIndicator: false,
                    
                    )
                ],
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