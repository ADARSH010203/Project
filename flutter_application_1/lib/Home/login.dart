import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/Registration.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
// import 'homepage.dart';
// import 'desktop.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                Image.asset(
                  'assets/APX.jpg',
                  height: 300,
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
                    suffixIcon: IconButton(
                      onPressed: () {
                        isObscure = !isObscure;
                        setState(() {});
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
                          // if (tcUsername.text == tcPassword.text) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Homepage(),
                              ),
                            );
                          //  else {
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     SnackBar(
                          //       content: Text('Invalid credentials'),
                          //     ),
                          //   );
                          // }
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
                Text("- or Sign in With-"),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                    animationDuration: Duration(seconds: 26),
                  ),
                  onPressed: () {},
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
                ElevatedButton(
                  style: ButtonStyle(
                    foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                  ),
                  onPressed: () {},
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
