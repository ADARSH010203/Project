import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/home/account/profile.dart';

class PhoneNumberLoginPage extends StatefulWidget {
  @override
  _PhoneNumberLoginPageState createState() => _PhoneNumberLoginPageState();
}

class _PhoneNumberLoginPageState extends State<PhoneNumberLoginPage> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // App Logo or Icon
              Icon(
                Icons.phone_android,
                size: 100,
                color: Colors.teal,
              ),
              SizedBox(height: 50),

              // Phone Number Text Field
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10), // Limiting phone number length
                ],
                decoration: InputDecoration(
                  labelText: 'Enter your phone number',
                  labelStyle: TextStyle(color: Colors.white70),
                  prefixIcon: Icon(Icons.phone, color: Colors.white70),
                  filled: true,
                  fillColor: Colors.blueGrey[900],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 30),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here

                // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                    // builder: (context) => Profilepage(),
                  // ),
                  // );
                  String phoneNumber = _phoneController.text;
                  if (phoneNumber.isNotEmpty && phoneNumber.length == 10) {
                    // Proceed with phone number verification
                    print('Phone number: $phoneNumber');
                  } else {
                    // Show error if number is not valid
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Please enter a valid phone number'),
                      backgroundColor: Colors.red,
                    ));
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 92, 203, 192),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: TextButton(
                  onPressed: () { 
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Profilepage(),
                    //   ),
                    // );
                   },
                  child:Text('Log In',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
