import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/Registration.dart';
import 'package:flutter_application_1/Home/homepage.dart'; // Import Homepage
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Add this import

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  String password = '';

  TextEditingController tcUsername = TextEditingController();
  TextEditingController tcPassword = TextEditingController();
  bool isObscure = true;

  final _formKey = GlobalKey<FormState>();
  final String passwordPattern = r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.* ).{8,16}$";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  
                  child: 
                    Column(
                      children: [
                        Image.asset(
                        'assets/APX.jpg',
                        // alignment: Alignment.center,
                        fit: BoxFit.contain,
                                          height: 300,
                                        ),
                      ],
                    ),
                ),
                
                Text(
                  'Login Page',
                  style: TextStyle(
                    fontFamily: 'sans-serif',
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                  ),
                ),
                
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                
                  controller: tcUsername,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.person)
                  ),
                  
                  
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                  
                  
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: tcPassword,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      icon: Icon(
                        isObscure ? Icons.visibility_off : Icons.visibility,
                        
                      ),
                    ),
                    
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter password';
                    }
                    if (!RegExp(passwordPattern).hasMatch(value)) {
                      return 'Password must be 8-16 characters and include at least one uppercase letter, one lowercase letter, one number, and one special character';
                    }
                    return null;
                  },
                  
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    ElevatedButton(
                      
                      style: ButtonStyle(
                      
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                        backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                      ),
                      onPressed: () {
                        if (_formKey.currentState?.validate() == true) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Homepage(
                                name1: tcUsername.text,
                                password1: tcPassword.text,
                                email: '', // You may want to handle this or remove it if not used
                                phone: '',  // You may want to handle this or remove it if not used
                                dateOfBirth: '', // You may want to handle this or remove it if not used
                              ),
                            ),
                          );
                        }
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
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("- or Sign in With -"),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.lightBlue,
                  ),
                  onPressed: () {
                    // Handle Facebook sign-in
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(width: 8),
                      Text("Sign Up With Facebook"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Colors.lightBlue,
                  ),
                  
                  onPressed: () {
                    // Handle Google sign-in
                  },
                  
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
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
      ),
    );
  }
}
