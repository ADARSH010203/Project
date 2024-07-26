import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/login.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: kToolbarHeight,
                
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('Adarsh2.png',
                    height: kToolbarHeight*0.6,
                    fit:BoxFit.contain),
                    
                  ],
                  
                ),
                ),
                SizedBox(width: 8),
                Text("Hello Adarsh"),
              ],
            ),
            Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications),),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings),),
                IconButton(onPressed: (){
                  Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
                }, icon: Icon(Icons.logout),),


              ],
            )
        ],
        ),
        
        
      ),
      backgroundColor: Color.fromRGBO(255,255,255,1),
      body: SingleChildScrollView(
        
        child: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(0,20,0,20),
          width: 400,
          // image.assest("assets.jpeg"),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(  
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [  
                  Container(  
                    height: 180,
                    width: 170, 
                    color: Colors.green,
                    child: Column(  
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [  
                      Icon(Icons.person),
                      SizedBox(height: 20,),
                      Text("Adarsh Singh"),
                    ],),
          
                  ),
                  Container(  
                    height: 180,
                    width: 170,                        
                    color: Colors.green,
                    
          
                  ),
          
                ],
              ),
              SizedBox(height: 30),
              Row(  
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [  
                  Container(  
                    height: 180,
                    width: 170, 
                    color: Colors.green,
                    
          
                  ),
                  Container(  
                    height: 180,
                    width: 170,                        
                    color: Colors.green,
                    
          
                  ),
          
                ],
              ),
              SizedBox(height: 30),
              Row(  
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [  
                  Container(  
                    height: 180,
                    width: 170, 
                    color: Colors.green,
                    child: Column(  
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [  
                      Icon(Icons.person),
                      Text("Adarsh Singh"),
                    ],),
          
                  ),
                  Container(  
                    height: 300,
                    width: 170,                        
                    color: Colors.green,
                    
          
                  ),
          
                ],
              ),
              SizedBox(height: 30),
                        
            ],
          ),
          ),
        ),
           
        ),
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(196, 241,205,1.0),
        ),
        bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Navigate to the home page when the home button is pressed
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) =>Homepage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Navigate to the settings page when the settings button is pressed
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => SettingsPage()),
              //   );
               },
            ),
            IconButton(
              icon: Icon(Icons.info),
              onPressed: () {
                // Navigate to the about page when the about button is pressed
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AboutPage()),
                // );
              },
            ),
          ],
        ),
      ),

    );
  }
}