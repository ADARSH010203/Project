import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Stretching extends StatefulWidget {
  const Stretching({super.key});

  @override
  State<Stretching> createState() => _StretchingState();
}

class _StretchingState extends State<Stretching> {
  late YoutubePlayerController _deadliftcontroller;
  late YoutubePlayerController _tbarcontroller;
  

  @override
  void initState() {
    super.initState();
    _deadliftcontroller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=hYo72r8Ivso")!, // Deadlift video
      flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
    );
    _tbarcontroller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=B7bqAsxee4I")!, // Replace with your video URL
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }
  @override
  void dispose() {
    _deadliftcontroller.dispose();
    _tbarcontroller.dispose();
    super.dispose();
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
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
              color: const Color.fromARGB(255, 168, 219, 249),
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
                    const SizedBox(height: 20,),
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
              color: const Color.fromARGB(255, 168, 219, 249),
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
                  child:  const Column(
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
              color: const Color.fromARGB(255, 168, 219, 249),
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
                  child:  const Column(
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
                        "Back: T-Bar Row",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        
                        
                      ),
                    ],
                  ),),
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
                    const SizedBox(height: 20,),
                    YoutubePlayer(controller: _tbarcontroller,
                    showVideoProgressIndicator: false,
                    
                    )
                ],
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