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
        title: const Text("Emergency"),
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
              child: const ListTile(
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
            const SizedBox(height: 16),

            // Emergency Numbers Section
            ListTile(
              title: const Text("Police", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Dial 100"),
              leading: const Icon(Icons.local_police, color: Colors.blue, size: 30),
              trailing: IconButton(
                icon: const Icon(Icons.phone, color: Colors.green),
                onPressed: () {
                  _callEmergency("tel:100");
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text("Ambulance", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Dial 102"),
              leading: const Icon(Icons.local_hospital, color: Colors.red, size: 30),
              trailing: IconButton(
                icon: const Icon(Icons.phone, color: Colors.green),
                onPressed: () {
                  _callEmergency("tel:102");
                },
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text("Fire Brigade", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Dial 101"),
              leading: const Icon(Icons.local_fire_department, color: Colors.orange, size: 30),
              trailing: IconButton(
                icon: const Icon(Icons.phone, color: Colors.green),
                onPressed: () {
                  _callEmergency("tel:101");
                },
              ),
            ),
            const Divider(),

            // Emergency Contact - User Custom Entry
            ListTile(
              title: Text(emergencyContactName.isNotEmpty ? emergencyContactName : "Emergency Contact"),
              subtitle: Text(emergencyContactNumber.isNotEmpty ? emergencyContactNumber : "Add your emergency contact"),
              leading: const Icon(Icons.contact_phone, color: Colors.purple, size: 30),
              trailing: IconButton(
                icon: const Icon(Icons.phone, color: Colors.green),
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
            const Divider(),
            // Display Family Contacts
            ...familyContacts.map((contact) {
              return ListTile(
                title: Text(contact['name'] ?? ''),
                subtitle: Text(contact['number'] ?? ''),
                leading: const Icon(Icons.phone, color: Colors.purple),
                trailing: IconButton(
                  icon: const Icon(Icons.phone, color: Colors.green),
                  onPressed: contact['number'] != null
                      ? () {
                          _callEmergency("tel:${contact['number']}");
                        }
                      : null,
                ),
              );
            }),
            // Add Family Member Section
            ListTile(
              title: const Text("Family Members", style: TextStyle(fontWeight: FontWeight.bold)),
              leading: const Icon(Icons.group, color: Colors.blue, size: 30),
              trailing: const Icon(Icons.add, color: Colors.blue),
              onTap: () {
                _showAddFamilyMemberDialog(context);
              },
            ),

            // Display Family Contacts
            

            const Divider(),

            // Action Button: Emergency Resources
            ElevatedButton.icon(
              onPressed: () {
                launchUrl(Uri.parse("https://112.gov.in/about#:~:text=Emergency%20Response%20Support%20System%20in%20India%20%2D%20112.gov.in"));
              },
              icon: const Icon(Icons.health_and_safety),
              label: const Text("More Emergency Resources",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 88, 185, 209),
        child: Footer(),
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
          title: const Text("Add Emergency Contact"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Contact Name",
                  hintText: "e.g. John Doe",
                ),
              ),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Contact Number",
                  hintText: "e.g. 1234567890",
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Save"),
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
          title: const Text("Add Family Member"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Family Member Name",
                  hintText: "e.g. Jane Doe",
                ),
              ),
              TextField(
                controller: numberController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                  labelText: "Contact Number",
                  hintText: "e.g. 9876543210",
                ),
              ),
              const SizedBox(height: 20),
              // Radio buttons for selecting relation
              const Text("Select Relationship:", style: TextStyle(fontWeight: FontWeight.bold)),
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
                          
                          const Text("father"),
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
                          
                          const Text("friend"),
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
                          
                          const Text("Mother"),
                        ],
                      )
                    ],
                  )
                ]
              ),
            
          
          actions: [
            TextButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text("Save"),
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
