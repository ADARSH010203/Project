import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:flutter_application_1/Home/drawerbar.dart'; // Import the drawerbar

class Registration extends StatefulWidget {
  Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String name = '';
  TextEditingController tcUsername = TextEditingController();
  TextEditingController tcEmail = TextEditingController();
  TextEditingController tcPassword = TextEditingController();
  TextEditingController tcGender = TextEditingController();
  TextEditingController tcNumber = TextEditingController();
  TextEditingController tcDateofBirth = TextEditingController();
  bool isObscure = true;

  final _formKey = GlobalKey<FormState>();
  final regex = RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$");
  final passwordPattern = r"^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.* ).{8,16}$";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/APX.jpg'),
            Text(
              'Create An Account',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: tcUsername,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Enter username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon:Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: tcEmail,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter email';
                      }
                      if (!RegExp(regex.pattern).hasMatch(value)) {
                        return 'Invalid email format';
                      }
                      return null;
                      
                    },
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 20),
                  TextFormField(
                    controller: tcGender,
                    decoration: InputDecoration(
                      labelText: 'Gender',
                      hintText: 'Enter Gender',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      // prefixIconColor:Colors.red,
                      prefixIcon: Icon(Icons.male_rounded)
                    ),
                    
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: tcNumber,
                    decoration: InputDecoration(
                      labelText: 'Number',
                      hintText: 'Enter Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: Icon(Icons.phone)
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: tcDateofBirth,
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                      hintText: 'Enter your date of birth',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: Icon(Icons.calendar_month)
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime.now(),
                      );
                      if (pickedDate != null) {
                        String formattedDate =
                            "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                        tcDateofBirth.text = formattedDate;
                      }
                    },
                  ),
                  SizedBox(height: 20),
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
                                  email: tcEmail.text,
                                  phone: tcNumber.text,
                                  dateOfBirth: tcDateofBirth.text, password1: '',
                                ),
                              ),
                            );
                          }
                        },
                        child: Text('Register'),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                          backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                          animationDuration: Duration(seconds: 2),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text('Login'),
                      ),
                    ],
                  ),
                  Text("Or Sign In With"),
                  SizedBox(height: 18),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
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
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                      backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),
                    ),
                    onPressed: () {
                      // Navigator.of(context).pop(
                      //   MaterialPageRoute(builder: (context)=>LoginPage(),)
                      // );
                    },
                    child: Row(
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
          ],
        ),
      ),
    );
  }
}