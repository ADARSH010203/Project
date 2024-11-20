
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/pageTransition.dart';
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
        backgroundColor: Colors.teal.shade700,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // Add functionality for updating profile picture
                },
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: const AssetImage('assets/Adarsh2.png'),
                  backgroundColor: Colors.teal.shade100,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Profile Page',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 20),
              _buildTextField("Name", tc, Icons.verified_user, 'Update your name'),
              _buildTextField("UserName", UserName, Icons.person_3, 'Enter your UserName'),
              _buildTextField("Password", pass, Icons.lock, 'Enter your password', obscureText: true),
              _buildDatePickerField("Date of Birth", tcDateofBirth, Icons.calendar_month),
              _buildTextField("Phone Number", number, Icons.phone_android_sharp, 'Enter your phone number'),
              _buildTextField("Gender", gender, Icons.male_rounded, 'Enter your gender'),
              _buildTextField("Blood Group", blood, Icons.bloodtype, 'Enter your blood group'),
              _buildTextField("Height (cm)", hg, Icons.height, 'Enter your height'),
              _buildTextField("Weight (kg)", wc, Icons.monitor_weight, 'Enter your weight'),
              _buildTextField("Nationality", flag, Icons.flag, 'Enter your country'),
              _buildTextField("Address", address, Icons.home, 'Enter your address'),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                 
                  Navigator.of(context).push(PageTransition(
                    page:Information(
                      name: tc.text,
                      UserName: UserName.text,
                      dateOfBirth: tcDateofBirth.text,
                      password: pass.text,
                      address: address.text,
                      blood: blood.text,
                      nationality: flag.text,
                      phone: number.text,
                      gender: gender.text,
                      height: hg.text,
                      weight: wc.text, userName: '',
                    ), beginOffset: const Offset(-1,-1),
                    endOffset: Offset.zero,
                    
                  ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: const Icon(Icons.save, size: 24),
                label: const Text(
                  "Save",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 88, 185, 209),
        child: Footer(),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, IconData icon, String hintText, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          prefixIcon: Icon(icon, color: Colors.teal),
          filled: true,
          fillColor: Colors.teal.shade50,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }

  Widget _buildDatePickerField(String label, TextEditingController controller, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: 'Select your date of birth',
          prefixIcon: Icon(icon, color: Colors.teal),
          filled: true,
          fillColor: Colors.teal.shade50,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
            String formattedDate = "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
            controller.text = formattedDate;
          }
        },
      ),
    );
  }
}
