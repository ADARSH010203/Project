import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Home/footer.dart';
import 'package:flutter_application_1/Home/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Hydration extends StatefulWidget {
  
  const Hydration({super.key});

  @override
  State<Hydration> createState() => _HydrationState();
}

class _HydrationState extends State<Hydration> {
  double targetHydration = 2500;
  double currentHydration = 0;
  int _waterAmount = 200;
  List<Map<String, dynamic>> waterIntakeLogs = [];

  @override
  void initState() {
    super.initState();
    _loadSavedWaterIntake(); // Load saved hydration data
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.red,
        title: Text(
          "Water",
          style: GoogleFonts.openSans(),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/profile.png",
                          fit: BoxFit.cover,
                          height: screenHeight * 0.15,
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Xiroza",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "Let's achieve the target",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    // Left Column
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          // Target Hydration
                          Container(
                            width: screenHeight * .6,
                            height: screenHeight * 0.25,
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.symmetric(
                                vertical: BorderSide(
                                  width: 9,
                                  color: Color.fromARGB(255, 150, 207, 237),
                                  style: BorderStyle.solid,
                                ),
                                horizontal: BorderSide(
                                  width: 9,
                                  color: Color.fromARGB(255, 150, 207, 237),
                                  style: BorderStyle.solid,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Target Hydration",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Edit button action
                                          myname();
                                        },
                                        child: Text("Edit"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "${targetHydration.toStringAsFixed(0)}ml",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          // Current Hydration
                          Container(
                            padding: const EdgeInsets.all(12.0),
                            width: screenHeight * 0.6,
                            height: screenHeight * 0.25,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.symmetric(
                                vertical: BorderSide(
                                  width: 9,
                                  color: Color.fromARGB(255, 150, 207, 237),
                                  style: BorderStyle.solid,
                                ),
                                horizontal: BorderSide(
                                  width: 9,
                                  color: Color.fromARGB(255, 150, 207, 237),
                                  style: BorderStyle.solid,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 7,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Current Hydration",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  LinearProgressIndicator(
                                    value: currentHydration / targetHydration,
                                    backgroundColor: Colors.green,
                                    valueColor: AlwaysStoppedAnimation(Colors.black),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    "${currentHydration.toStringAsFixed(0)}ml",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),
                    // Right Progress Bar with Numbers
                    Container(
                      width: screenWidth * 0.2,
                      height: screenHeight * 0.52,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 219, 211, 211),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Container(
                            width: screenWidth * 0.2,
                            height: (currentHydration / targetHydration) * 300,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Column(
                              children: List.generate(10, (index) {
                                int labelValue = (targetHydration -
                                        (index * (targetHydration / 10)))
                                    .round();
                                return Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    "- $labelValue",
                                    style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Drink Log",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      SizedBox(height: 20),
                     
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(

                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                // color: Colors.yellow,
                              ),
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: waterIntakeLogs.length,
                                itemBuilder: (context, index) {
                                  final log = waterIntakeLogs[index];
                                  return ListTile(
                                    title: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text('${log['amount']}ml'),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        
                                        Text(log['time']),
                                        
                                      ],
                                      

                                    ),
                                    
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 5,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {
                          _displayBottomSheet(context);
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Footer(),
        color: Color.fromARGB(255, 88, 185, 209),
      ),
    );
  }
  Future<void> _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 400,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Log Your Water Intake",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
              onPressed: () {
                _logWaterIntake();
                Navigator.pop(context);
              },
              child: Text('Save', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 110, 175, 228),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
            SizedBox(width: 20,),
                Text(
                  "Water Amount:",
                  style: TextStyle(fontSize: 18),
                ),
                DropdownButton<int>(
                  value: _waterAmount,
                  items: [200, 250, 300, 350, 400,450]
                      .map<DropdownMenuItem<int>>(
                        (int value) => DropdownMenuItem<int>(
                          value: value,
                          child: Text("$value ml"),
                        ),
                      )
                      .toList(),
                  onChanged: (int? newValue) {
                    setState(() {
                      _waterAmount = newValue!;
                    });
                  },
                ),
              
            
            SizedBox(width: 20),
            
            
            ElevatedButton(
              onPressed: () {
                _deleteWaterIntake();
                Navigator.pop(context);
              },
              child: Text('Delete', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 128, 160, 231),
                padding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),],
        ),],
        ),
      
      );
    },
  );
}

void _logWaterIntake() {
  setState(() {
    currentHydration += _waterAmount;
    waterIntakeLogs.add({
      'amount': _waterAmount,
      'time': TimeOfDay.now().format(context),
    });
  });
  _saveWaterIntake();
  _showConfirmationDialog('Water intake logged successfully.');
}

void _deleteWaterIntake() {
  setState(() {
    if (waterIntakeLogs.isNotEmpty) {
      waterIntakeLogs.removeLast();
      currentHydration -= _waterAmount; // Adjust as needed
      if (currentHydration < 0) currentHydration = 0;
    }
  });
  _saveWaterIntake();
  _showConfirmationDialog('Last entry deleted.');
}

void _showConfirmationDialog(String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Confirmation'),
        content: Text(message),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Future<void> _saveWaterIntake() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setDouble('currentHydration', currentHydration);
  await prefs.setStringList(
    'waterIntakeLogs',
    waterIntakeLogs.map((log) {
      return "${log['amount']},${log['time']}";
    }).toList(),
  );
}

Future<void> _loadSavedWaterIntake() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  setState(() {
    currentHydration = prefs.getDouble('currentHydration') ?? 0;
    waterIntakeLogs = prefs
        .getStringList('waterIntakeLogs')
        ?.map((logString) {
          final parts = logString.split(',');
          return {'amount': int.parse(parts[0]), 'time': parts[1]};
        }).toList() ??
        [];
  });
}


  
  void myname() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        double newTargetHydration = targetHydration;
        return AlertDialog(
          title: Text('Edit Target Hydration'),
          content: Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    newTargetHydration = double.tryParse(value) ?? targetHydration;
                  },
                  decoration: InputDecoration(
                    hintText: targetHydration.toString(),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Save'),
              onPressed: () {
                setState(() {
                  targetHydration = newTargetHydration;
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
