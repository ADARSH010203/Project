import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/Registration.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
// import 'package:flutter_social_button/flutter_social_button.dart';


// import 'dashboard_screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController tcUsername = TextEditingController();

  TextEditingController tcPassword = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset('assets/APX.jpg',height:300,),
            Text('Login Page',style: TextStyle(
              fontFamily: 'sans-serif',
              fontStyle: FontStyle.normal,
              fontSize: 30,
            ),),
            SizedBox(
              height: 20,),
            TextField(
              controller: tcUsername,
              
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Enter username',
               border: OutlineInputBorder(  
                borderRadius: BorderRadius.circular(50),
               )
                
                
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: tcPassword,
              obscureText: isObscure,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter password',
                  border: OutlineInputBorder(  
                borderRadius: BorderRadius.circular(50),
               ),
                suffixIcon: IconButton(
                  onPressed: () {
                    isObscure = !isObscure;
                    print('obscure ${isObscure}');
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.visibility_off,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ElevatedButton(
                style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                ),
              onPressed: () {
                print('Button pressed ${tcUsername.text} ${tcPassword.text}');
                if (tcUsername.text == tcPassword.text) {
                  print('Welcome ${tcUsername.text}');
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Homepage(),
                    ),
                  );
                } else
                  print('Invalid credentials');
              },
              child: Text('Login'),
              
            ),
            
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
              ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Registration(),
                    ),
                  );
                },
                child: Text('Registration'), 
              ),
            ],),
            SizedBox(
              height: 10,
            ),
            Text("- or Sign in With-"),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
              ),
              onPressed: (){
              
            }, child: Row(mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.facebook),
                SizedBox(width: 8),
                Text("Sign Up With Facebook"),
              ],
            ),),
            SizedBox(
              height:20 ,
            ),
            ElevatedButton(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
              ),
              onPressed: (){
              
            }, child: Row(mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  FontAwesomeIcons.google,
                ),
                SizedBox(width: 8),
                Text("Sign Up With Google"),
              ],
            ),
            ),
          ],
                ),
        ),
    ),
    );
  }
}