import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Gym%20Workouts/Aerobic.dart';
import 'package:flutter_application_1/Home/Registration.dart';
import 'package:flutter_application_1/Home/homepage.dart'; // Import Homepage
import 'package:flutter_application_1/Home/pageTransition.dart';
import 'package:flutter_application_1/service/utils.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // Add this import

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  String password = '';
  bool isLoading = false;
  
  TextEditingController tcUsername = TextEditingController();
  TextEditingController tcPassword = TextEditingController();
  bool isObscure = true;

  final _formKey = GlobalKey<FormState>();
  final String passwordPattern = r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.* ).{8,16}$";
  final auth = FirebaseAuth.instance;

  void login() {
    auth
        .signInWithEmailAndPassword(
            email: tcUsername.text.trim(),
            password: tcPassword.text.toString())
        .then((value) {
          print(value.user?.uid);
      Utils().toasMessage("Login Succesfully");
      Navigator.of(context).pushReplacement(
        PageTransition(
          page:  Homepage(userId: value.user?.uid), beginOffset: const Offset(1.0,0.0),endOffset: Offset.zero,
        ),
      );
    }).onError((error, stackTrace) {
      Utils().toasMessage(error.toString());
    });
  }
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
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/APX.jpg',
                        fit: BoxFit.contain,
                        height: 300,
                      ),
                    ],
                  ),
                ),
                const Text(
                  'Login Page',
                  style: TextStyle(
                    fontFamily: 'sans-serif',
                    fontStyle: FontStyle.normal,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: tcUsername,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: const Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: tcPassword,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: const Icon(Icons.lock),
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
                const SizedBox(height: 20),
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
                          login();
                        }
                      },
                      child: const Text('Login'),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                        backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          PageTransition(
                            page: Registration(),
                            beginOffset: const Offset(-1.0, -1.0),
                            endOffset: Offset.zero,
                          ),
                        );
                      },
                      child: const Text('Registration'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Text("- or Sign in With -"),
                const SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.lightBlue,
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(width: 8),
                      Text("Sign Up With Facebook"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.lightBlue,
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(FontAwesomeIcons.google),
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
