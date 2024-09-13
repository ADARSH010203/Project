

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/profilesection/personal.dart';
import 'package:flutter_application_1/Home/todolist.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  TextEditingController tc = TextEditingController();
  TextEditingController UserName = TextEditingController();
  TextEditingController flag = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController blood = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController tcDateofBirth = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController hg = TextEditingController();
  TextEditingController wc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
        backgroundColor: Colors.teal, // Added background color for consistency
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16), // Increased padding for better spacing
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center align the content vertically
              // crossAxisAlignment: CrossAxisAlignment.start, // Align content to the start
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/Adarsh2.png', // Ensure the correct path to your image
                    height: 120, // Consistent size for circular profile image
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Profile Page',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal, // Text color matching the AppBar
                  ),
                ),
                const SizedBox(height: 20),

                // Name field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Name",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: tc,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Update your name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.verified_user),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8), // Padding inside the text field
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "UserName",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: UserName,
                         // Hide password input
                          decoration: InputDecoration(
                            labelText: 'UserName',
                            hintText: 'Enter your UserName',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.person_3),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Password field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: pass,
                          obscureText: true, // Hide password input
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter your password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.password_sharp),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          
                        'Date OF Birth',
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,),
                        ),
                        ),
                        Expanded(
                          flex: 3,
                          child: TextFormField(
                        controller: tcDateofBirth,
                      decoration: InputDecoration(
                      labelText: 'Date of Birth',
                      hintText: 'Enter your date of birth',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      prefixIcon: const Icon(Icons.calendar_month)
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
                                  

                        ))

                  ],),  
                ),
                // Phone Number field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Phone Number",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: number,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            hintText: 'Enter your phone number',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.phone_android_sharp),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Gender field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Gender",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: gender,
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            hintText: 'Enter your gender',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.male_rounded),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Blood Group",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: blood,
                          // Hide password input
                          decoration: InputDecoration(
                            labelText: 'Blood ',
                            hintText: 'Enter your password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.bloodtype),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Height field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Height (cm)",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: hg,
                          decoration: InputDecoration(
                            labelText: 'Height (cm)',
                            hintText: 'Enter your height',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.height
                            ),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Weight field
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Weight (kg)",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: wc,
                          decoration: InputDecoration(
                            labelText: 'Weight (kg)',
                            hintText: 'Enter your weight',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.monitor_weight),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Nationality",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: flag,
                          decoration: InputDecoration(
                            labelText: 'Nationality',
                            hintText: 'Enter your Country name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.flag),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 2,
                        child: Text(
                          "Address",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: TextFormField(
                          controller: address,
                          decoration: InputDecoration(
                            labelText: 'Address',
                            hintText: 'Enter your weight',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            prefixIcon: const Icon(Icons.home_max),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Save button
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100,50),
                          backgroundColor: Colors.teal,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                        ),
                        
                        onPressed: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>Information(
                            name:tc.text,
                            UserName:UserName.text,
                            dateOfBirth:tcDateofBirth.text,
                            password:pass.text,
                            address:address.text,
                            blood:blood.text,
                            Nationality:flag.text,
                            phone: number.text,
                            gender:gender.text,
                            height:hg.text,
                            weight:wc.text, 
                          ))
                        );
                      }, child: const Row(
                        children: [
                          Icon(Icons.save),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Save")
                        ],
                      ))
                    ],
                  ),
                
            ])
          ),
        ),
        
      ),bottomNavigationBar: const BottomAppBar(
        child: Footer(),
        color: Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }
}
