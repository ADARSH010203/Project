import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyPage extends StatefulWidget {
  const EmergencyPage({super.key});

  @override
  State<EmergencyPage> createState() => _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  String emergencyContactName = "";
  String emergencyContactNumber = "";
  List<Map<String, String>> familyContacts = [];
  String? selectedRelation = "Father"; // Default selected relation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Emergency"),
        backgroundColor: Colors.red[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Emergency Instructions Section
            Card(
              color: Colors.red[100],
              elevation: 8,
              shadowColor: Colors.red[400],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.warning, color: Colors.red, size: 30),
                title: Text(
                  "In case of emergency, call the numbers below.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),

            // Emergency Numbers Section
            ListTile(
              title: Text("Police", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Dial 100"),
              leading: Icon(Icons.local_police, color: Colors.blue, size: 30),
              trailing: IconButton(
                icon: Icon(Icons.phone, color: Colors.green),
                onPressed: () {
                  _callEmergency("tel:100");
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Ambulance", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Dial 102"),
              leading: Icon(Icons.local_hospital, color: Colors.red, size: 30),
              trailing: IconButton(
                icon: Icon(Icons.phone, color: Colors.green),
                onPressed: () {
                  _callEmergency("tel:102");
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text("Fire Brigade", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Dial 101"),
              leading: Icon(Icons.local_fire_department, color: Colors.orange, size: 30),
              trailing: IconButton(
                icon: Icon(Icons.phone, color: Colors.green),
                onPressed: () {
                  _callEmergency("tel:101");
                },
              ),
            ),
            Divider(),

            // Emergency Contact - User Custom Entry
            ListTile(
              title: Text(emergencyContactName.isNotEmpty ? emergencyContactName : "Emergency Contact"),
              subtitle: Text(emergencyContactNumber.isNotEmpty ? emergencyContactNumber : "Add your emergency contact"),
              leading: Icon(Icons.contact_phone, color: Colors.purple, size: 30),
              trailing: IconButton(
                icon: Icon(Icons.phone, color: Colors.green),
                onPressed: emergencyContactNumber.isNotEmpty
                    ? () {
                        _callEmergency("tel:$emergencyContactNumber");
                      }
                    : null, // Disable if no number
              ),
              onTap: () {
                _showAddEmergencyContactDialog(context);
              },
            ),
            Divider(),
            // Display Family Contacts
            ...familyContacts.map((contact) {
              return ListTile(
                title: Text(contact['name'] ?? ''),
                subtitle: Text(contact['number'] ?? ''),
                leading: Icon(Icons.phone, color: Colors.purple),
                trailing: IconButton(
                  icon: Icon(Icons.phone, color: Colors.green),
                  onPressed: contact['number'] != null
                      ? () {
                          _callEmergency("tel:${contact['number']}");
                        }
                      : null,
                ),
              );
            }).toList(),
            // Add Family Member Section
            ListTile(
              title: Text("Family Members", style: TextStyle(fontWeight: FontWeight.bold)),
              leading: Icon(Icons.group, color: Colors.blue, size: 30),
              trailing: Icon(Icons.add, color: Colors.blue),
              onTap: () {
                _showAddFamilyMemberDialog(context);
              },
            ),

            // Display Family Contacts
            

            Divider(),

            // Action Button: Emergency Resources
            ElevatedButton.icon(
              onPressed: () {
                launchUrl(Uri.parse("https://112.gov.in/about#:~:text=Emergency%20Response%20Support%20System%20in%20India%20%2D%20112.gov.in"));
              },
              icon: Icon(Icons.health_and_safety),
              label: Text("More Emergency Resources",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
        color: Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }

  // Helper function to call emergency number
  void _callEmergency(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Dialog to add emergency contact details
  void _showAddEmergencyContactDialog(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Emergency Contact"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Contact Name",
                  hintText: "e.g. John Doe",
                ),
              ),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Contact Number",
                  hintText: "e.g. 1234567890",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Save"),
              onPressed: () {
                setState(() {
                  emergencyContactName = nameController.text;
                  emergencyContactNumber = numberController.text;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // Dialog to add family member details
  void _showAddFamilyMemberDialog(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController numberController = TextEditingController();
  String? tempSelectedRelation = selectedRelation;  // Temporary variable to hold selection inside the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Family Member"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Family Member Name",
                  hintText: "e.g. Jane Doe",
                ),
              ),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Contact Number",
                  hintText: "e.g. 9876543210",
                ),
              ),
              SizedBox(height: 20),
              // Radio buttons for selecting relation
              Text("Select Relationship:", style: TextStyle(fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                          Radio<String>(
                            value: "FATHER", 
                            groupValue: tempSelectedRelation, 
                            onChanged: (String? value){
                              setState(() {
                                tempSelectedRelation=value;
                              });
                          }
                          
                          ),
                          
                          Text("father"),
                        ],
                      ),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                          Radio<String>(
                            value: "Friend", 
                            groupValue: tempSelectedRelation, 
                            onChanged: (String? value){
                              setState(() {
                              tempSelectedRelation=value;
                              });
                          }
                          ),
                          
                          Text("friend"),
                        ],
                      ),
                      Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                          Radio<String>(
                            value: "Mother", 
                            groupValue: selectedRelation, 
                            onChanged: (String? value){
                              setState(() {
                                tempSelectedRelation=value;
                              });
                          }
                          ),
                          
                          Text("Mother"),
                        ],
                      )
                    ],
                  )
                ]
              ),
            
          
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Save"),
              onPressed: () {
                setState(() {
                  selectedRelation = tempSelectedRelation;
                  familyContacts.add({
                    'name': nameController.text,
                    'number': numberController.text,
                    'relation': selectedRelation ?? 'Unknown',
                  });
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

  }
}
