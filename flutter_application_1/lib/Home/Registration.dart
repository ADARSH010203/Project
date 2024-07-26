import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/homepage.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

// import 'dashboard_screen.dart';

class Registration extends StatefulWidget {
  Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController tcUsername = TextEditingController();
  TextEditingController tcEmail = TextEditingController();
  TextEditingController tcPassword = TextEditingController();
  TextEditingController tcGender = TextEditingController();
  TextEditingController tcNumber = TextEditingController();
  TextEditingController tcDateofBirth = TextEditingController();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/APX.jpg'),
          Text('Create An Account',style: TextStyle(
            // fontFamily: 'sans-serif',
            fontStyle: FontStyle.normal,
            fontSize: 30,
          ),),
          SizedBox(
            height: 20,
            ),
          TextField(
            controller: tcUsername,
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'Enter username',
            ),
          ),
          SizedBox(
            height:20 ,
          ),
          TextField(
            controller: tcEmail,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter Email',            
            ),
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
          ),
          SizedBox(
            height:20 ,
          ),
          TextField(
            controller: tcPassword,
            obscureText: isObscure,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter password',
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
            height:20 ,
          ),
          TextField(
            controller: tcGender,
            decoration: InputDecoration(
              labelText: 'Gender',
              hintText: 'Enter Gender',
            ),
          ),
          SizedBox(
            height:20 ,
          ),
          TextField(
            controller: tcNumber,
            decoration: InputDecoration(
              labelText: 'Number',
              hintText: 'Enter Number',
            ),
          ),
          SizedBox(
            height:20 ,
          ),
          TextField(
              controller: tcDateofBirth,
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                hintText: 'Enter your date of birth',
              ),
              readOnly: true, // Prevents keyboard from appearing
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  String formattedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                  tcDateofBirth.text = formattedDate;
            }
          },
        ),
          
          SizedBox(
            height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ElevatedButton(
              style: ButtonStyle(foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
              backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue),),
            onPressed: () {
              
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Homepage(),
                  ),
                );
              } ,
            child: Text('Register'),
            
          ),

          ElevatedButton(
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
              backgroundColor: WidgetStateProperty.all<Color>(Colors.lightBlue)
            ),
              onPressed: () {
                Navigator.of(context).pop(
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Text('Login'), 
            ),
          ],),
          Text("Or Sign In With"),
          SizedBox(
            height: 18,
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
    );
  }
}