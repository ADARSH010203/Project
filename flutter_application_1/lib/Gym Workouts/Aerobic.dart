import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
const Email = "https://www.youtube.com/watch?v=hYo72r8Ivso";

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
                    "Aerobic : Running",
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
                    "The cornerstone of countless fitness programs, running, when done correctly, primarily targets your cardiovascular system while also engaging your leg muscles. It’s a go-to exercise for improving endurance, burning calories, and boosting overall fitness. If you're looking to perfect your running technique, check out this guide."
                    ),
                    InkWell(
                      onTap: (){
                        launchUrl(Uri.parse("https://marathonhandbook.com/aerobic-vs-anaerobic-training/#:~:text=Aerobic%20literally%20means%20%E2%80%9C%20with%20oxygen%20%E2%80%9D.%20Aerobic,aerobic.%20Even%20an%20800m%20race%20is%2060-70%25%20aerobic%21"));
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
                  const Text(
                    "Aerobic: Cycling",
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
" staple in many workout routines, cycling is an effective, low-impact exercise that primarily works your lower body while enhancing cardiovascular health. Whether you're cycling outdoors or on a stationary bike, this activity is great for building strength and endurance. To learn how to optimize your cycling workouts, check out this article."                    ),
                    InkWell(
                      onTap: (){
                        
                      launchUrl(Uri.parse("https://www.healthline.com/health/fitness-exercise/cycling-benefits"));

                      },
                      child: const Text(
                        "12 Benefits of Cycling, Plus Safety Tips ",
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
                  const Text(
                    "Aerobic: Jump",
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
"Jump rope is a versatile, high-intensity workout that engages the entire body, improving coordination, cardiovascular fitness, and agility. It’s ideal for burning calories quickly and enhancing overall fitness. For those seeking to refine their skills, following a proper guide can lead to better results."

                  ),
                    InkWell(
                      onTap: (){
                        
                      launchUrl(Uri.parse("https://health.clevelandclinic.org/jump-rope-benefits"));

                      },
                      child: const Text(
                        "6 Benefits of jumping Rope ",
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
                  const Text(
                    "Aerobic:Swimming",
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
" staple in many workout routines, cycling is an effective, low-impact exercise that primarily works your lower body while enhancing cardiovascular health. Whether you're cycling outdoors or on a stationary bike, this activity is great for building strength and endurance. To learn how to optimize your cycling workouts, check out this article."                    ),
                    InkWell(
                      onTap: (){
                        
                      launchUrl(Uri.parse("https://www.healthline.com/health/fitness-exercise/cycling-benefits"));

                      },
                      child: const Text(
                        "12 Benefits of Cycling, Plus Safety Tips ",
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
           
            ],),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 88, 185, 209),
        child: Footer(),

      ),
                
            
    );
  }
}